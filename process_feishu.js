const fs = require('fs');

// 读取本地数据
const localData = JSON.parse(fs.readFileSync('records_deduped.json', 'utf8'));

// 飞书表格数据 - 从API获取的502条记录
// 这里只包含示例数据，实际处理需要完整数据
const feishuRecords = [
  {"fields":{"上岗时间":"Feb. 2022","专业":"Criminal Justice/Sociology","中介":"Alessandra","候选人ID":"R22001","国籍":"美国","姓名":"Matthew Harrison McGhee Eddy","学历":"本科","工签职位":"英语教师","年龄":"33","性别":"男","意向城市":"海滨城市","意向职位":"高中、大学","教学经验":"10年","更新日期":1642723200000,"目前所在地":"江苏","签证类型":"工作签证","肤色":"白","薪资期望":"Negotiable","资格证":"TEFL","跟进记录":"已面试Sherry江西职位，等二面"},"id":"recvcsRT7ftPHn","record_id":"recvcsRT7ftPHn"},
  {"fields":{"上岗时间":"Feb. 2022","专业":"教育学","中介":"Ray","候选人ID":"R22002","国籍":"美国","姓名":"Ron Price","学历":"博士","工签职位":"英语教师","性别":"男","意向城市":"深圳","更新日期":1642723200000,"目前所在地":"深圳","签证类型":"工作签证","肤色":"黑","跟进记录":"已拒SAIS合同"},"id":"recvcsSmBIvvuX","record_id":"recvcsSmBIvvuX"},
  {"fields":{"上岗时间":"Sep.2022","中介":"俄Dan","候选人ID":"R22003","国籍":"美国","姓名":"Shawn Friesen","学历":"本科","工签职位":"英语教师","年龄":"52","性别":"男","意向城市":"重庆","意向职位":"体育","教学经验":"21年，5年教练","更新日期":1642723200000,"目前所在地":"浙江金华","签证类型":"工作签证","肤色":"白","薪资期望":"22K税前+住宿","资格证":"教师资格证","跟进记录":"找重庆体育岗位"},"id":"recvcsSmWauvWY","record_id":"recvcsSmWauvWY"},
  {"fields":{"上岗时间":"Sep.2022","专业":"信息科技","中介":"Patrick-Lynne","候选人ID":"R22004","国籍":"南非","姓名":"Kent Jeremy Boggenpoel","学历":"本科","性别":"男","意向城市":"深圳","意向职位":"数学、英语","教学经验":"11年","更新日期":1642982400000,"目前所在地":"深圳","签证类型":"工作签证","肤色":"黑","跟进记录":"1/22发深美，1/24深美拒"},"id":"recvcsSnfCFiz9","record_id":"recvcsSnfCFiz9"},
  {"fields":{"上岗时间":"Feb. 2022","专业":"体育教师","中介":"Ray","候选人ID":"R22006","国籍":"乌克兰","姓名":"Stanislav Balashov (Stas)","学历":"硕士","工签职位":"教练","性别":"男","意向城市":"深圳南山","意向职位":"体育、篮球教练","教学经验":"5年","更新日期":1642550400000,"目前所在地":"深圳","签证类型":"工作签证","肤色":"白","资格证":"其他","跟进记录":"1/10已发深外师院"},"id":"recvcsSnAKPiJa","record_id":"recvcsSnAKPiJa"},
  {"fields":{"中介":"Ray","候选人ID":"R22007","国籍":"乌克兰","姓名":"Irina Balashova","性别":"女","意向城市":"深圳福田、南山","意向职位":"社科","教学经验":"4年","更新日期":1642896000000,"目前所在地":"深圳","签证类型":"家属签证","肤色":"白"},"id":"recvcsSnUykVba","record_id":"recvcsSnUykVba"},
  {"fields":{"候选人ID":"R22002","姓名":"Ron Price","学历":"博士","性别":"男","肤色":"黑"},"id":"recvcsT62XhxJa","record_id":"recvcsT62XhxJa"},
  {"fields":{"专业":"体育教练","中介":"俄Dan","候选人ID":"R22003","国籍":"美国","姓名":"Shawn Friesen","学历":"本科","年龄":"52","性别":"男","更新日期":1642723200000,"肤色":"白"},"id":"recvcsTasXn83F","record_id":"recvcsTasXn83F"},
  {"fields":{"上岗时间":"Sep.2022","专业":"信息科技","中介":"Patrick-Lynne","候选人ID":"R22004","国籍":"南非","姓名":"Kent Jeremy Boggenpoel","学历":"本科","性别":"男","意向城市":"深圳","意向职位":"数学、英语","教学经验":"11年","更新日期":1642982400000,"目前所在地":"深圳","签证类型":"工作签证","肤色":"黑","跟进记录":"1/22发深美，1/24深美拒"},"id":"recvcsTklXcIyb","record_id":"recvcsTklXcIyb"},
  {"fields":{"上岗时间":"Feb. 2022","专业":"教育学","中介":"Ray","候选人ID":"R22002","国籍":"美国","姓名":"Ron Price","学历":"博士","工签职位":"英语教师","性别":"男","意向城市":"深圳","更新日期":1642723200000,"目前所在地":"深圳","签证类型":"工作签证","肤色":"黑","跟进记录":"已拒SAIS合同"},"id":"recvcsTtnE1noj","record_id":"recvcsTtnE1noj"}
];

// 分析重复记录
const idGroups = {};
feishuRecords.forEach(record => {
    const id = record.fields['候选人ID'];
    if (!id) return;
    if (!idGroups[id]) idGroups[id] = [];
    idGroups[id].push(record);
});

const uniqueIds = Object.keys(idGroups);
const repeatedIds = Object.entries(idGroups).filter(([id, records]) => records.length > 1);

console.log('=== 飞书表格数据分析 ===');
console.log('总记录数:', feishuRecords.length);
console.log('唯一候选人ID数:', uniqueIds.length);
console.log('有重复的候选人ID:', repeatedIds.length, '个');

let duplicateCount = 0;
repeatedIds.forEach(([id, records]) => {
    duplicateCount += (records.length - 1);
    console.log('  ', id + ':', records.length, '条记录');
});

console.log('需要删除的重复记录数:', duplicateCount);

// 检查缺失的ID
const localIds = new Set(localData.map(r => r['候选人ID']));
const feishuIds = new Set(uniqueIds);
const missingInFeishu = [];
localIds.forEach(id => {
    if (!feishuIds.has(id)) missingInFeishu.push(id);
});

console.log('\n=== 缺失数据检查 ===');
console.log('本地数据总记录数:', localData.length);
console.log('飞书表格中已有的ID数:', feishuIds.size);
console.log('飞书表格中缺失的ID数量:', missingInFeishu.length);

// 保存结果
const recordsToDelete = [];
repeatedIds.forEach(([id, records]) => {
    records.sort((a, b) => (b.fields['更新日期'] || 0) - (a.fields['更新日期'] || 0));
    for (let i = 1; i < records.length; i++) {
        recordsToDelete.push({record_id: records[i].record_id, id: records[i].id, candidateId: id});
    }
});

fs.writeFileSync('records_to_delete.json', JSON.stringify(recordsToDelete, null, 2));
fs.writeFileSync('missing_ids.json', JSON.stringify(missingInFeishu, null, 2));

const analysisResult = {
    totalRecords: feishuRecords.length,
    uniqueIds: uniqueIds.length,
    duplicateGroups: repeatedIds.length,
    recordsToDelete: recordsToDelete.length,
    recordsToKeep: uniqueIds.length,
    missingInFeishu: missingInFeishu.length,
    finalExpectedCount: uniqueIds.length + missingInFeishu.length
};
fs.writeFileSync('analysis_result.json', JSON.stringify(analysisResult, null, 2));

console.log('\n=== 处理计划 ===');
console.log('1. 删除重复记录:', recordsToDelete.length, '条');
console.log('2. 导入缺失记录:', missingInFeishu.length, '条');
console.log('3. 最终表格记录总数:', uniqueIds.length + missingInFeishu.length, '条');
