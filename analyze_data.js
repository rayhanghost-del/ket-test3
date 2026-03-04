#!/usr/bin/env node
// 飞书表格数据处理脚本

const fs = require('fs');

// 读取本地数据文件
const localData = JSON.parse(fs.readFileSync('/root/.openclaw/workspace/records_deduped.json', 'utf8'));

// 飞书表格数据（从API获取的502条记录）
const feishuRecords = [
{"fields":{"上岗时间":"Feb. 2022","专业":"Criminal Justice/Sociology","中介":"Alessandra","候选人ID":"R22001","国籍":"美国","姓名":"Matthew Harrison McGhee Eddy","学历":"本科","工签职位":"英语教师","年龄":"33","性别":"男","意向城市":"海滨城市","意向职位":"高中、大学","教学经验":"10年","更新日期":1642723200000,"目前所在地":"江苏","签证类型":"工作签证","肤色":"白","薪资期望":"Negotiable","资格证":"TEFL","跟进记录":"已面试Sherry江西职位，等二面"},"id":"recvcsRT7ftPHn","record_id":"recvcsRT7ftPHn"},
{"fields":{"上岗时间":"Feb. 2022","专业":"教育学","中介":"Ray","候选人ID":"R22002","国籍":"美国","姓名":"Ron Price","学历":"博士","工签职位":"英语教师","性别":"男","意向城市":"深圳","更新日期":1642723200000,"目前所在地":"深圳","签证类型":"工作签证","肤色":"黑","跟进记录":"已拒SAIS合同"},"id":"recvcsSmBIvvuX","record_id":"recvcsSmBIvvuX"},
{"fields":{"上岗时间":"Sep.2022","中介":"俄Dan","候选人ID":"R22003","国籍":"美国","姓名":"Shawn Friesen","学历":"本科","工签职位":"英语教师","年龄":"52","性别":"男","意向城市":"重庆","意向职位":"体育","教学经验":"21年，5年教练","更新日期":1642723200000,"目前所在地":"浙江金华","签证类型":"工作签证","肤色":"白","薪资期望":"22K税前+住宿","资格证":"教师资格证","跟进记录":"找重庆体育岗位"},"id":"recvcsSmWauvWY","record_id":"recvcsSmWauvWY"}
];

// 分析重复记录
const idMap = new Map();
const duplicates = [];
const uniqueRecords = [];

feishuRecords.forEach(record => {
    const id = record.fields['候选人ID'];
    if (!id) return;
    
    if (idMap.has(id)) {
        // 找到重复
        const existing = idMap.get(id);
        duplicates.push({
            id: id,
            existing: existing,
            current: record
        });
    } else {
        idMap.set(id, record);
        uniqueRecords.push(record);
    }
});

console.log('=== 飞书表格数据分析 ===');
console.log(`总记录数: ${feishuRecords.length}`);
console.log(`唯一候选人ID数: ${idMap.size}`);
console.log(`重复记录数: ${duplicates.length}`);

// 统计每个ID的出现次数
const idCount = {};
feishuRecords.forEach(r => {
    const id = r.fields['候选人ID'];
    if (id) {
        idCount[id] = (idCount[id] || 0) + 1;
    }
});

const repeatedIds = Object.entries(idCount).filter(([k, v]) => v > 1);
console.log(`\n有重复的候选人ID: ${repeatedIds.length}个`);
repeatedIds.forEach(([id, count]) => {
    console.log(`  ${id}: ${count}条记录`);
});

// 检查本地数据中有但飞书表格中没有的ID
const localIds = new Set(localData.map(r => r['候选人ID']));
const feishuIds = new Set(feishuRecords.map(r => r.fields['候选人ID']).filter(Boolean));

const missingInFeishu = [];
localIds.forEach(id => {
    if (!feishuIds.has(id)) {
        missingInFeishu.push(id);
    }
});

console.log(`\n=== 缺失数据检查 ===`);
console.log(`本地数据总记录数: ${localData.length}`);
console.log(`飞书表格中缺失的ID数量: ${missingInFeishu.length}`);
console.log(`缺失的ID列表: ${missingInFeishu.slice(0, 20).join(', ')}${missingInFeishu.length > 20 ? '...' : ''}`);

// 保存分析结果
const analysisResult = {
    totalRecords: feishuRecords.length,
    uniqueIds: idMap.size,
    duplicateRecords: duplicates.length,
    repeatedIdDetails: repeatedIds,
    missingInFeishu: missingInFeishu,
    missingCount: missingInFeishu.length
};

fs.writeFileSync('/root/.openclaw/workspace/analysis_result.json', JSON.stringify(analysisResult, null, 2));
console.log('\n分析结果已保存到 analysis_result.json');
