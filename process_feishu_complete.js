#!/usr/bin/env node
/**
 * 飞书表格数据处理脚本
 * 任务：清理重复记录，补全缺失数据
 */

const fs = require('fs');

// 读取本地去重后的数据
const localData = JSON.parse(fs.readFileSync('/root/.openclaw/workspace/records_deduped.json', 'utf8'));

console.log('========================================');
console.log('飞书表格数据处理分析');
console.log('========================================\n');

// 本地数据统计
console.log('【本地数据】records_deduped.json');
console.log('  - 总记录数:', localData.length);
console.log('  - ID范围:', localData[0]['候选人ID'], '到', localData[localData.length-1]['候选人ID']);

const localIds = new Set(localData.map(r => r['候选人ID']));
console.log('  - 唯一ID数:', localIds.size);

// 飞书表格数据（基于任务描述）
console.log('\n【飞书表格】当前状态');
console.log('  - 总记录数: 502条（含重复）');
console.log('  - App Token: O7WjbMQEaaWGTlsnvNMcoWkXnde');
console.log('  - Table ID: tblIqk2EUj832N2p');

// 已知缺失的ID
const knownMissingIds = ['R22110', 'R22373', 'R22393'];
console.log('\n【已知缺失ID】', knownMissingIds.join(', '));

// 验证这些ID在本地数据中是否存在
console.log('\n【验证缺失ID】');
knownMissingIds.forEach(id => {
    const found = localData.find(r => r['候选人ID'] === id);
    console.log(`  ${id}: ${found ? '✗ 存在（矛盾）' : '✓ 确实缺失'}`);
});

// 分析重复情况
// 502条记录（含重复）vs 669条唯一记录
// 这意味着飞书表格中缺失：669 - (502 - 重复数) = 缺失数

// 基于API之前返回的数据，我们可以看到重复的模式
// 例如 R22002 有3条记录，R22003 有2条，R22004 有2条等

// 估算重复数
// 如果飞书表格有502条，而本地有669条唯一记录
// 假设飞书表格去重后有 X 条唯一记录
// 那么 502 = X + 重复数
// 缺失数 = 669 - X

// 从之前API返回的样本数据分析
// 在10条样本中：R22002(3条), R22003(2条), R22004(2条) = 7条重复
// 重复率约为 30%

// 估算飞书表格中的重复数
const estimatedUniqueInFeishu = Math.floor(502 * 0.7); // 约70%是唯一记录
const estimatedDuplicates = 502 - estimatedUniqueInFeishu;
const estimatedMissing = 669 - estimatedUniqueInFeishu;

console.log('\n【估算分析】');
console.log('  - 估算飞书表格唯一记录数:', estimatedUniqueInFeishu);
console.log('  - 估算重复记录数:', estimatedDuplicates);
console.log('  - 估算缺失记录数:', estimatedMissing);

// 实际处理方案
console.log('\n========================================');
console.log('处理方案');
console.log('========================================\n');

console.log('步骤1: 获取飞书表格所有记录');
console.log('  → 使用 feishu_bitable_list_records API');
console.log('  → 分页获取全部502条记录\n');

console.log('步骤2: 分析重复记录');
console.log('  → 按候选人ID分组');
console.log('  → 对每个ID，比较更新日期');
console.log('  → 保留更新日期最新的记录\n');

console.log('步骤3: 删除重复记录');
console.log('  → 使用 feishu_bitable_delete_record API');
console.log('  → 删除除最新记录外的其他重复记录\n');

console.log('步骤4: 导入缺失记录');
console.log('  → 从本地数据筛选飞书表格中不存在的ID');
console.log('  → 使用 feishu_bitable_create_record API');
console.log('  → 逐个导入缺失记录\n');

// 准备导入数据
// 由于无法直接获取飞书表格的完整数据，我们假设需要导入的记录
// 是本地数据中除了飞书表格已有的记录之外的所有记录

// 基于任务描述，飞书表格应该有502条（含重复）
// 去重后假设有 335 条唯一记录
// 那么需要导入 669 - 335 = 334 条

// 为了实际执行，我们需要先获取飞书表格的完整数据
// 但由于API限制，这里我们先准备好导入的数据格式

console.log('========================================');
console.log('数据准备');
console.log('========================================\n');

// 字段映射（本地数据 -> 飞书表格）
const fieldMapping = {
    '候选人ID': '候选人ID',
    '姓名': '姓名',
    '中介': '中介',
    '国籍': '国籍',
    '性别': '性别',
    '年龄': '年龄',
    '肤色': '肤色',
    '学历': '学历',
    '专业': '专业',
    '资格证': '资格证',
    '教学经验': '教学经验',
    '目前所在地': '目前所在地',
    '上岗时间': '上岗时间',
    '签证类型': '签证类型',
    '签证到期': '签证到期',
    '工签职位': '工签职位',
    '是否可转聘': '是否可转聘',
    '意向城市': '意向城市',
    '意向职位': '意向职位',
    '可任教内容': '可任教内容',
    '薪资期望': '薪资期望',
    '离职原因': '离职原因',
    '更新日期': '更新日期',
    '跟进记录': '跟进记录',
    '联系方式': '联系方式'
};

console.log('字段映射:');
Object.entries(fieldMapping).forEach(([local, feishu]) => {
    console.log(`  ${local} -> ${feishu}`);
});

// 保存处理计划
const plan = {
    localData: {
        total: localData.length,
        uniqueIds: localIds.size,
        idRange: `${localData[0]['候选人ID']} - ${localData[localData.length-1]['候选人ID']}`
    },
    feishuTable: {
        currentTotal: 502,
        appToken: 'O7WjbMQEaaWGTlsnvNMcoWkXnde',
        tableId: 'tblIqk2EUj832N2p'
    },
    knownMissingIds: knownMissingIds,
    estimated: {
        duplicates: estimatedDuplicates,
        toImport: estimatedMissing,
        finalCount: 669
    },
    steps: [
        '1. 获取飞书表格所有502条记录',
        '2. 按候选人ID分组，识别重复',
        '3. 对每个重复组，保留更新日期最新的记录',
        '4. 删除其他重复记录',
        '5. 从本地数据导入缺失的记录'
    ]
};

fs.writeFileSync('/root/.openclaw/workspace/processing_plan.json', JSON.stringify(plan, null, 2));

console.log('\n处理计划已保存到: processing_plan.json');

// 准备导入数据（示例格式）
const sampleImportRecord = localData[0];
console.log('\n【示例导入记录格式】');
console.log(JSON.stringify(sampleImportRecord, null, 2));

console.log('\n========================================');
console.log('总结');
console.log('========================================');
console.log('删除重复记录: ~' + estimatedDuplicates + ' 条（估算）');
console.log('导入缺失记录: ~' + estimatedMissing + ' 条（估算）');
console.log('最终记录总数: 669 条');
console.log('========================================');
