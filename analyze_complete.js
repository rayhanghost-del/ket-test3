const fs = require('fs');

// 读取本地数据
const localData = JSON.parse(fs.readFileSync('records_deduped.json', 'utf8'));

// 基于API返回的502条记录，提取所有记录ID和候选人ID
// 从API响应中可以看到记录结构
const feishuApiResponse = {
  "records": [],
  "has_more": false,
  "total": 502
};

// 本地数据有669条唯一记录
// 飞书表格有502条记录（含重复）
// 需要分析重复情况

console.log('=== 数据分析 ===');
console.log('本地数据（records_deduped.json）:');
console.log('  - 总记录数:', localData.length);
console.log('  - ID范围:', localData[0]['候选人ID'], '到', localData[localData.length-1]['候选人ID']);

// 统计本地数据中的ID
const localIds = new Set(localData.map(r => r['候选人ID']));
console.log('  - 唯一ID数:', localIds.size);

// 已知信息：
// - 飞书表格当前有502条记录（含重复）
// - 本地数据有669条唯一记录
// - 缺失的ID: R22110, R22373, R22393

// 根据任务描述，飞书表格中有重复记录
// 502条记录中包含重复，需要去重

// 假设飞书表格中的唯一ID数 = 502 - 重复数
// 由于本地数据有669条，飞书表格应该也有669条（去重后）

// 估算重复记录数
const expectedUniqueInFeishu = 669; // 应该和本地数据一致
const currentTotalInFeishu = 502;

// 如果飞书表格中有重复，那么唯一记录数 < 502
// 但任务说"当前总记录数：502条（含重复）"
// 这意味着去重后应该少于502条

// 让我基于本地数据来推算
// 本地数据有669条，飞书表格有502条（含重复）
// 这意味着飞书表格缺失：669 - (502 - 重复数) = 缺失数

// 实际上，从API返回的数据可以看到一些重复的例子
// 比如 R22002 出现了多次

console.log('\n=== 基于任务描述的推算 ===');
console.log('飞书表格当前状态:');
console.log('  - 总记录数: 502条（含重复）');
console.log('  - 需要去重并补全');
console.log('\n本地数据:');
console.log('  - 唯一记录数:', localData.length, '条');
console.log('  - 缺失ID: R22110, R22373, R22393');

// 计算
const localUniqueCount = localData.length;
const feishuCurrentCount = 502;

// 如果飞书表格去重后有X条，那么需要导入 (669 - X) 条
// 同时需要删除 (502 - X) 条重复记录

// 假设飞书表格去重后的唯一ID数
// 从API数据可以看到一些ID有重复
// 估算重复记录数约为 502 - (669 - 缺失数)

// 更准确的计算：
// 1. 飞书表格中已有的唯一ID数 = 需要从API数据中提取
// 2. 缺失的ID数 = 669 - 飞书表格中已有的唯一ID数

console.log('\n=== 处理计划 ===');
console.log('1. 获取飞书表格中所有记录');
console.log('2. 按候选人ID分组，找出重复记录');
console.log('3. 对每个重复组，保留更新日期最新的记录');
console.log('4. 删除其他重复记录');
console.log('5. 从本地数据导入缺失的记录');

// 保存缺失的记录数据
const missingIds = ['R22110', 'R22373', 'R22393'];
const missingRecords = localData.filter(r => missingIds.includes(r['候选人ID']));
console.log('\n缺失的记录在本地数据中存在:', missingRecords.length, '条');

// 实际缺失的记录应该是本地有但飞书没有的
// 由于飞书有502条（含重复），假设唯一ID约为 502 - 重复数
// 如果重复数约为 167条，那么唯一ID约为 335条
// 缺失的记录约为 669 - 335 = 334条

// 但这只是估算，需要实际分析飞书数据

console.log('\n注意：需要完整分析飞书表格的502条记录才能得出准确数字');
console.log('基于任务描述，预计需要:');
console.log('  - 删除约 167 条重复记录（估算）');
console.log('  - 导入约 334 条缺失记录（估算）');
console.log('  - 最终记录数: 669 条');

// 保存分析结果
const result = {
    localDataCount: localData.length,
    feishuCurrentCount: 502,
    knownMissingIds: missingIds,
    estimatedDuplicates: 167,
    estimatedToImport: 334,
    expectedFinalCount: 669
};
fs.writeFileSync('analysis_summary.json', JSON.stringify(result, null, 2));
console.log('\n分析摘要已保存到 analysis_summary.json');
