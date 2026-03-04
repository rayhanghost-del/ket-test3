#!/usr/bin/env node
// 飞书表格数据处理脚本 - 完整版

const fs = require('fs');

// 读取本地数据文件
const localData = JSON.parse(fs.readFileSync('/root/.openclaw/workspace/records_deduped.json', 'utf8'));

// 读取飞书表格数据（从之前API调用保存的完整数据）
const feishuData = JSON.parse(fs.readFileSync('/root/.openclaw/workspace/feishu_records.json', 'utf8'));
const feishuRecords = feishuData.records || [];

console.log('=== 飞书表格数据分析 ===');
console.log(`总记录数: ${feishuRecords.length}`);

// 分析重复记录 - 按候选人ID分组
const idGroups = {};
feishuRecords.forEach(record => {
    const id = record.fields['候选人ID'];
    if (!id) return;
    
    if (!idGroups[id]) {
        idGroups[id] = [];
    }
    idGroups[id].push(record);
});

const uniqueIds = Object.keys(idGroups);
const repeatedIds = Object.entries(idGroups).filter(([id, records]) => records.length > 1);

console.log(`唯一候选人ID数: ${uniqueIds.length}`);
console.log(`有重复的候选人ID: ${repeatedIds.length}个`);

// 计算需要删除的重复记录数
let duplicateCount = 0;
repeatedIds.forEach(([id, records]) => {
    const count = records.length;
    duplicateCount += (count - 1); // 保留一条，删除其余
    console.log(`  ${id}: ${count}条记录`);
});

console.log(`\n需要删除的重复记录数: ${duplicateCount}`);

// 确定每个重复ID要保留的记录（更新日期最新的）
const recordsToDelete = [];
const recordsToKeep = [];

repeatedIds.forEach(([id, records]) => {
    // 按更新日期排序，最新的排在前面
    records.sort((a, b) => {
        const dateA = a.fields['更新日期'] || 0;
        const dateB = b.fields['更新日期'] || 0;
        return dateB - dateA;
    });
    
    // 保留第一条（最新），其余删除
    recordsToKeep.push(records[0]);
    for (let i = 1; i < records.length; i++) {
        recordsToDelete.push(records[i]);
    }
});

console.log(`\n保留记录数（去重后）: ${uniqueIds.length}`);
console.log(`删除记录数: ${recordsToDelete.length}`);

// 检查本地数据中有但飞书表格中没有的ID
const localIds = new Set(localData.map(r => r['候选人ID']));
const feishuIds = new Set(uniqueIds);

const missingInFeishu = [];
localIds.forEach(id => {
    if (!feishuIds.has(id)) {
        missingInFeishu.push(id);
    }
});

console.log(`\n=== 缺失数据检查 ===`);
console.log(`本地数据总记录数: ${localData.length}`);
console.log(`飞书表格中已有的ID数: ${feishuIds.size}`);
console.log(`飞书表格中缺失的ID数量: ${missingInFeishu.length}`);

// 保存要删除的记录ID列表
const deleteList = recordsToDelete.map(r => ({
    record_id: r.record_id,
    id: r.id,
    candidateId: r.fields['候选人ID'],
    name: r.fields['姓名'],
    updateDate: r.fields['更新日期']
}));

fs.writeFileSync('/root/.openclaw/workspace/records_to_delete.json', JSON.stringify(deleteList, null, 2));

// 保存缺失的记录数据
const missingRecords = localData.filter(r => missingInFeishu.includes(r['候选人ID']));
fs.writeFileSync('/root/.openclaw/workspace/records_to_import.json', JSON.stringify(missingRecords, null, 2));

// 保存分析结果
const analysisResult = {
    totalRecords: feishuRecords.length,
    uniqueIds: uniqueIds.length,
    duplicateGroups: repeatedIds.length,
    recordsToDelete: recordsToDelete.length,
    recordsToKeep: uniqueIds.length,
    missingInFeishu: missingInFeishu.length,
    missingIds: missingInFeishu,
    finalExpectedCount: uniqueIds.length + missingInFeishu.length
};

fs.writeFileSync('/root/.openclaw/workspace/analysis_result.json', JSON.stringify(analysisResult, null, 2));

console.log(`\n=== 处理计划 ===`);
console.log(`1. 删除重复记录: ${recordsToDelete.length}条`);
console.log(`2. 导入缺失记录: ${missingInFeishu.length}条`);
console.log(`3. 最终表格记录总数: ${uniqueIds.length + missingInFeishu.length}条`);
console.log(`\n详细结果已保存到:`);
console.log(`  - records_to_delete.json (待删除记录)`);
console.log(`  - records_to_import.json (待导入记录)`);
console.log(`  - analysis_result.json (分析结果)`);
