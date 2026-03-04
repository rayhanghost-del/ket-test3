#!/bin/bash

# 批量导入飞书表格
APP_TOKEN="O7WjbMQEaaWGTlsnvNMcoWkXnde"
TABLE_ID="tblIqk2EUj832N2p"

SUCCESS=0
FAILED=0

# Record 1: R22002
echo "导入 1/669: R22002"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22002", "姓名": "Ron Price", "中介": "Ray", "国籍": "美国", "专业": "教育学", "目前所在地": "深圳", "上岗时间": "Feb. 2022", "签证类型": "工作签证", "工签职位": "英语教师", "意向城市": "深圳", "跟进记录": "已拒SAIS合同", "性别": "男", "肤色": "黑", "学历": "博士", "更新日期": 1642723200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22002"
fi
sleep 0.3

# Record 2: R22003
echo "导入 2/669: R22003"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22003", "姓名": "Shawn Friesen", "中介": "俄Dan", "国籍": "美国", "资格证": "教师资格证", "教学经验": "21年，5年教练", "目前所在地": "浙江金华", "上岗时间": "Sep.2022", "签证类型": "工作签证", "工签职位": "英语教师", "意向城市": "重庆", "意向职位": "体育", "薪资期望": "22K税前+住宿", "跟进记录": "找重庆体育岗位", "性别": "男", "肤色": "白", "学历": "本科", "年龄": 52.0, "更新日期": 1642723200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22003"
fi
sleep 0.3

# Record 3: R22004
echo "导入 3/669: R22004"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22004", "姓名": "Kent Jeremy Boggenpoel", "中介": "Patrick-Lynne", "国籍": "南非", "专业": "信息科技", "教学经验": "11年", "目前所在地": "深圳", "上岗时间": "Sep.2022", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "数学、英语", "跟进记录": "1/22发深美，1/24深美拒", "性别": "男", "肤色": "黑", "学历": "本科", "更新日期": 1642982400000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22004"
fi
sleep 0.3

# Record 4: R22005
echo "导入 4/669: R22005"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22005", "姓名": "Gareth Evans", "中介": "Ray", "国籍": "英国", "专业": "英语", "资格证": "TKT", "教学经验": "20年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "南山", "意向职位": "幼儿园，小学，雅思，科学", "薪资期望": "30k", "性别": "男", "肤色": "白", "学历": "硕士", "年龄": 52.0, "更新日期": 1677801600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22005"
fi
sleep 0.3

# Record 5: R22006
echo "导入 5/669: R22006"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22006", "姓名": "Stanislav Balashov (Stas)", "中介": "Ray", "国籍": "乌克兰", "专业": "体育教师", "资格证": "其他", "教学经验": "5年", "目前所在地": "深圳", "上岗时间": "Feb. 2022", "签证类型": "工作签证", "工签职位": "教练", "意向城市": "深圳南山", "意向职位": "体育、篮球教练", "跟进记录": "1/10已发深外师院", "性别": "男", "肤色": "白", "学历": "硕士", "更新日期": 1642550400000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22006"
fi
sleep 0.3

# Record 6: R22007
echo "导入 6/669: R22007"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22007", "姓名": "Irina Balashova", "中介": "Ray", "国籍": "乌克兰", "教学经验": "4年", "目前所在地": "深圳", "签证类型": "家属签证", "意向城市": "深圳福田、南山", "意向职位": "社科", "性别": "女", "肤色": "白", "更新日期": 1642896000000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22007"
fi
sleep 0.3

# Record 7: R22008
echo "导入 7/669: R22008"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22008", "姓名": "Joshua Thompson", "中介": "优才社郭", "国籍": "英国", "专业": "化学工程", "资格证": "TEFL", "教学经验": "3年", "目前所在地": "杭州", "上岗时间": "Feb. 2022", "签证类型": "工作签证", "工签职位": "英语教师", "意向职位": "数学，物理，化学，英语", "薪资期望": "30K左右", "跟进记录": "1/22发富源", "性别": "男", "肤色": "白", "学历": "本科", "年龄": 24.0, "更新日期": 1642723200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22008"
fi
sleep 0.3

# Record 8: R22009
echo "导入 8/669: R22009"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22009", "姓名": "Ross Delaney", "中介": "Ray", "国籍": "爱尔兰", "专业": "化学", "教学经验": "3年", "目前所在地": "深圳南山", "上岗时间": "Feb. 2022", "意向城市": "深圳福田、南山", "意向职位": "高中，AP,IGCSE,科学，化学，生物", "薪资期望": "30K税后+住宿", "性别": "男", "肤色": "白", "学历": "硕士", "年龄": 30.0, "更新日期": 1642723200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22009"
fi
sleep 0.3

# Record 9: R22010
echo "导入 9/669: R22010"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22010", "姓名": "Kleber Delgado", "中介": "Ray", "国籍": "美国", "目前所在地": "深圳坪山", "上岗时间": "Sep.2022", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "英语", "薪资期望": "30K左右", "性别": "男", "肤色": "白", "更新日期": 1642636800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22010"
fi
sleep 0.3

# Record 10: R22011
echo "导入 10/669: R22011"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22011", "姓名": "Fay Sayed", "中介": "Ray", "国籍": "南非", "专业": "艺术历史", "资格证": "TEFL", "教学经验": "7年", "目前所在地": "深圳观澜", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "艺术", "性别": "女", "肤色": "浅黑", "学历": "本科", "更新日期": 1642636800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22011"
fi
sleep 0.3

# Record 11: R22012
echo "导入 11/669: R22012"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22012", "姓名": "Spencer", "中介": "Sherry", "国籍": "美国", "意向城市": "深圳", "意向职位": "英语", "跟进记录": "1/18 深美一面，待定", "性别": "男", "肤色": "白", "更新日期": 1642464000000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22012"
fi
sleep 0.3

# Record 12: R22013
echo "导入 12/669: R22013"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22013", "姓名": "Brent Burkhart", "中介": "Ray", "国籍": "美国", "专业": "应用心理学", "教学经验": "9年", "目前所在地": "深圳", "上岗时间": "Aug.2022", "意向城市": "深圳", "意向职位": "初中英语，托福，雅思，SAT，英文文学，AP历史，心理", "薪资期望": "30K税后+住宿", "跟进记录": "1/18发了深美初中英语JD\n1/24发简历给深美", "性别": "男", "肤色": "白", "学历": "硕士", "更新日期": 1642896000000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22013"
fi
sleep 0.3

# Record 13: R22014
echo "导入 13/669: R22014"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22014", "姓名": "Luigi DI Gennaro", "中介": "Ray", "国籍": "美国", "专业": "文化分析与社会理论\n本科英语修辞学", "资格证": "TESOL", "教学经验": "12年", "目前所在地": "江苏张家港", "上岗时间": "Feb or Sep", "签证类型": "工作签证", "意向职位": "Homeroom,IB,IGCSE,IELTS,IBPYP", "薪资期望": "35-40K", "跟进记录": "1/24深美拒", "性别": "男", "肤色": "白", "学历": "硕士", "是否可转聘": "可转聘", "更新日期": 1642982400000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22014"
fi
sleep 0.3

# Record 14: R22015
echo "导入 14/669: R22015"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22015", "姓名": "Josh", "中介": "Ray", "目前所在地": "北京", "上岗时间": "Aug.2022", "签证类型": "工作签证", "更新日期": 1642464000000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22015"
fi
sleep 0.3

# Record 15: R22016
echo "导入 15/669: R22016"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22016", "姓名": "Decia Gillospie", "中介": "Ray", "国籍": "牙买加", "专业": "商业管理", "资格证": "TEFL", "教学经验": "3年", "目前所在地": "深圳", "上岗时间": "Feb. 2022", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "高中英语，雅思", "性别": "女", "肤色": "黑", "学历": "本科", "更新日期": 1642464000000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22016"
fi
sleep 0.3

# Record 16: R22017
echo "导入 16/669: R22017"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22017", "姓名": "Byron John Eveson", "中介": "Ray", "国籍": "加拿大", "专业": "英文", "资格证": "CELTA", "教学经验": "20年", "目前所在地": "深圳罗湖", "上岗时间": "Feb. 2022", "意向城市": "深圳", "意向职位": "高中英语，雅思，历史，社会研究", "性别": "男", "肤色": "白", "学历": "本科", "年龄": 52.0, "更新日期": 1642464000000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22017"
fi
sleep 0.3

# Record 17: R22018
echo "导入 17/669: R22018"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22018", "姓名": "Carson", "中介": "Ray", "教学经验": "7年", "目前所在地": "深圳", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "数学", "薪资期望": "27-30K 税后", "跟进记录": "1/16发的深美数学JD\n需要问深美有没有工资空间", "性别": "男", "肤色": "白", "更新日期": 1642464000000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22018"
fi
sleep 0.3

# Record 18: R22019
echo "导入 18/669: R22019"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22019", "姓名": "Fely", "中介": "Ray", "目前所在地": "上海", "意向城市": "上海", "意向职位": "一、二年级homeroom，ELA", "性别": "女", "肤色": "白", "更新日期": 1642204800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22019"
fi
sleep 0.3

# Record 19: R22020
echo "导入 19/669: R22020"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22020", "姓名": "Michele Gatti", "中介": "Sherry", "国籍": "意大利", "专业": "硕士-钢琴表演\n本科钢琴与音乐教育学", "教学经验": "6年", "目前所在地": "广州", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向职位": "音乐", "性别": "男", "肤色": "白", "学历": "硕士", "更新日期": 1642204800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22020"
fi
sleep 0.3

# Record 20: R22021
echo "导入 20/669: R22021"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22021", "姓名": "Liudmila M", "中介": "Ray", "国籍": "俄罗斯", "目前所在地": "深圳", "上岗时间": "Feb. 2022", "签证类型": "工作签证", "工签职位": "俄罗斯语教师", "意向城市": "深圳", "性别": "女", "肤色": "白", "更新日期": 1642204800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22021"
fi
sleep 0.3

# Record 21: R22022
echo "导入 21/669: R22022"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22022", "姓名": "Arieta", "中介": "Ray", "国籍": "哥伦比亚", "专业": "TESOL", "资格证": "CELTA", "教学经验": "6年", "目前所在地": "天津", "上岗时间": "Feb. 2022", "签证类型": "工作签证", "意向职位": "初中以上英语，文学，西语", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1642204800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22022"
fi
sleep 0.3

# Record 22: R22023
echo "导入 22/669: R22023"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22023", "姓名": "Milenko Dikovic", "中介": "Ray", "国籍": "塞尔维亚", "专业": "体育教练与领导\n教育学", "资格证": "Acquired Sports-Professional", "教学经验": "4年", "目前所在地": "深圳", "上岗时间": "Feb. 2022", "签证类型": "工作签证", "意向城市": "深圳南山", "意向职位": "体育，篮球教练", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1642204800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22023"
fi
sleep 0.3

# Record 23: R22024
echo "导入 23/669: R22024"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22024", "姓名": "Daniel Martin (DanDan 张艺文)", "中介": "Ray", "国籍": "英国", "教学经验": "7年", "目前所在地": "深圳", "上岗时间": "Aug.2022", "签证类型": "工作签证", "工签职位": "体育老师", "意向城市": "深圳南山、福田", "意向职位": "体育", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1642204800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22024"
fi
sleep 0.3

# Record 24: R22025
echo "导入 24/669: R22025"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22025", "姓名": "Dan Ayre", "中介": "Ray", "国籍": "英国", "上岗时间": "Sep.2022", "意向职位": "英语", "性别": "男", "更新日期": 1642204800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22025"
fi
sleep 0.3

# Record 25: R22026
echo "导入 25/669: R22026"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22026", "姓名": "Charl Bakan", "中介": "Ray", "国籍": "澳大利亚", "专业": "金融", "资格证": "TESOL", "教学经验": "5年", "目前所在地": "深圳", "上岗时间": "Sep.2022", "意向职位": "英语", "薪资期望": "30K税后", "跟进记录": "三、四月回澳洲，然后再申请签证回来", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1642204800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22026"
fi
sleep 0.3

# Record 26: R22027
echo "导入 26/669: R22027"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22027", "姓名": "Tiana Bailey", "中介": "Dima", "国籍": "美国", "专业": "国际关系", "资格证": "IB/TKT/TEFL", "教学经验": "4年", "目前所在地": "杭州", "上岗时间": "NOV.2022", "签证类型": "工作签证", "工签职位": "英语教师", "意向城市": "浙江省内", "意向职位": "幼儿园，IB", "薪资期望": "25-30K", "跟进记录": "Dima女朋友，考虑9月金生岗位", "性别": "女", "肤色": "棕", "学历": "本科", "更新日期": 1664064000000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22027"
fi
sleep 0.3

# Record 27: R22028
echo "导入 27/669: R22028"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22028", "姓名": "Mark Youngblood", "中介": "Ray", "国籍": "美国", "专业": "经济", "资格证": "TESOL", "教学经验": "10年", "目前所在地": "深圳南山", "上岗时间": "Feb. 2022", "意向城市": "深圳", "意向职位": "PBL, STEAM", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1642204800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22028"
fi
sleep 0.3

# Record 28: R22029
echo "导入 28/669: R22029"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22029", "姓名": "Felipe", "中介": "Ray", "国籍": "哥伦比亚", "专业": "体育运动与康复", "资格证": "足球教练证", "教学经验": "7年", "目前所在地": "深圳", "上岗时间": "Feb. 2022", "意向城市": "深圳", "意向职位": "足球教练，体育，西语", "薪资期望": "22-25k", "性别": "男", "肤色": "棕", "学历": "本科", "更新日期": 1641772800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22029"
fi
sleep 0.3

# Record 29: R22030
echo "导入 29/669: R22030"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22030", "姓名": "Ben Morris", "中介": "Ray", "国籍": "英国", "专业": "环境科学", "资格证": "TEFL", "教学经验": "4年", "目前所在地": "深圳", "上岗时间": "Feb. 2022", "签证类型": "工作签证", "工签职位": "英语教师", "意向城市": "深圳南山、福田 、罗湖", "意向职位": "幼儿园", "薪资期望": "30K税后+寒暑假", "跟进记录": "可试推Ruby贝赛斯职位", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1643155200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22030"
fi
sleep 0.3

# Record 30: R22031
echo "导入 30/669: R22031"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22031", "姓名": "Trishana Grey", "中介": "Ray", "国籍": "牙买加", "专业": "物流与供应链管理", "资格证": "TEFL", "教学经验": "3年", "目前所在地": "深圳", "上岗时间": "Feb. 2022", "意向城市": "深圳", "意向职位": "幼儿园", "薪资期望": "23k+住宿", "跟进记录": "1/23发理德\n1/23发Michael推幼儿园", "性别": "女", "肤色": "黑", "学历": "本科", "更新日期": 1640995200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22031"
fi
sleep 0.3

# Record 31: R22032
echo "导入 31/669: R22032"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22032", "姓名": "Christy Phillips", "中介": "Ray", "国籍": "美国", "专业": "商业管理与经济", "资格证": "TEFL", "教学经验": "10年", "目前所在地": "深圳", "上岗时间": "Feb. 2022", "签证类型": "家属签证", "意向城市": "深圳南山、福田", "意向职位": "小学英语", "薪资期望": "25K税后", "跟进记录": "1/26问千希职位\n1/27海龙深圳北岗位，需要学历认证", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1643155200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22032"
fi
sleep 0.3

# Record 32: R22033
echo "导入 32/669: R22033"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22033", "姓名": "Matthew Edward Perry", "中介": "Alessandra", "国籍": "美国", "专业": "生物", "资格证": "TEFL", "教学经验": "8.5年", "目前所在地": "深圳", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向城市": "深圳，广州，江西，浙江，江苏", "意向职位": "初高中物理、社科、英语、文学、生物、化学", "薪资期望": "18-22K+住宿", "跟进记录": "1.1/18发了深美，没回\n2.1/22发了国际预科", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1642464000000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22033"
fi
sleep 0.3

# Record 33: R22034
echo "导入 33/669: R22034"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22034", "姓名": "Mitchell Andrisevic", "中介": "Ray", "国籍": "美国", "专业": "国际商业", "资格证": "CELTA", "教学经验": "4年", "目前所在地": "浙江衢州", "上岗时间": "Feb. 2022", "签证类型": "工作签证", "意向城市": "深圳南山、福田 、罗湖", "意向职位": "IGCSE经济，英语", "薪资期望": "32K税后及以上", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1639526400000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22034"
fi
sleep 0.3

# Record 34: R22035
echo "导入 34/669: R22035"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22035", "姓名": "Lola", "中介": "Alessandra", "国籍": "南非", "专业": "会计", "教学经验": "2年", "目前所在地": "上海", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向城市": "上海", "意向职位": "幼儿园，小学，初中", "薪资期望": "26-30K", "性别": "女", "肤色": "黑", "学历": "本科", "更新日期": 1644019200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22035"
fi
sleep 0.3

# Record 35: R22036
echo "导入 35/669: R22036"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22036", "姓名": "Gevory Avetisyan (George)", "中介": "Alessandra", "国籍": "亚美尼亚", "专业": "物理", "资格证": "TEFL", "教学经验": "3年", "目前所在地": "深圳", "上岗时间": "Feb. 2022", "签证类型": "商业类工签", "工签职位": "销售经理", "意向城市": "深圳", "意向职位": "数学,ESL", "薪资期望": "Negotiable", "跟进记录": "1/26发SIE", "性别": "男", "肤色": "白", "学历": "博士", "更新日期": 1643155200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22036"
fi
sleep 0.3

# Record 36: R22037
echo "导入 36/669: R22037"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22037", "姓名": "Eddy Salguero", "中介": "Ray", "国籍": "美国", "专业": "应用数学与统计学", "教学经验": "6年", "目前所在地": "深圳", "上岗时间": "Feb. 2022", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "数学,ESL", "跟进记录": "1/26发SIE\n通达可能直接转给华美", "性别": "男", "肤色": "棕", "学历": "本科", "是否可转聘": "可转聘", "更新日期": 1643155200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22037"
fi
sleep 0.3

# Record 37: R22038
echo "导入 37/669: R22038"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22038", "姓名": "Jose Merrero", "中介": "Paul", "国籍": "美国", "专业": "教育领导学", "教学经验": "14年", "目前所在地": "境外·美国", "上岗时间": "Aug.2022", "性别": "男", "学历": "硕士"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22038"
fi
sleep 0.3

# Record 38: R22039
echo "导入 38/669: R22039"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22039", "姓名": "Phillip Mlambo", "中介": "Paul", "国籍": "津巴布韦", "专业": "国际贸易与经济", "资格证": "TEFL", "教学经验": "3年", "目前所在地": "深圳", "上岗时间": "ASAP", "签证类型": "工作签证", "意向城市": "深圳、北京", "意向职位": "幼儿园、培训中心", "薪资期望": "20-30K+住宿补贴", "性别": "男", "肤色": "浅黑", "学历": "本科", "更新日期": 1642896000000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22039"
fi
sleep 0.3

# Record 39: R22040
echo "导入 39/669: R22040"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22040", "姓名": "Finn Wright", "中介": "Ray", "国籍": "英国", "专业": "工程", "资格证": "TEFL", "教学经验": "3年", "目前所在地": "境外·英国", "上岗时间": "Aug.2022", "意向城市": "深圳", "意向职位": "幼儿园", "跟进记录": "1/23发美凯誉\n1/24 嫌工资低取消面试", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1642896000000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22040"
fi
sleep 0.3

# Record 40: R22041
echo "导入 40/669: R22041"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22041", "姓名": "Angelique Argyropoulos", "中介": "Alessandra", "国籍": "南非", "专业": "教育学", "资格证": "TEFL", "教学经验": "10年", "目前所在地": "境外·南非", "上岗时间": "Feb. 2022", "意向城市": "深圳", "意向职位": "幼儿园、培训中心", "薪资期望": "22K税后+住宿", "跟进记录": "人在国外，暂停", "性别": "女", "肤色": "浅黑", "学历": "本科", "更新日期": 1642896000000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22041"
fi
sleep 0.3

# Record 41: R22042
echo "导入 41/669: R22042"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22042", "姓名": "Andrew Potter", "中介": "Alessandra", "国籍": "美国", "专业": "记者", "资格证": "TEFL", "教学经验": "1年", "目前所在地": "境外·美国", "上岗时间": "Aug.2022", "意向城市": "广东省", "意向职位": "幼儿园或其他", "跟进记录": "1/24发SIE，SDE，EDUHOPE\n1/25 SDE面试通过", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1643155200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22042"
fi
sleep 0.3

# Record 42: R22043
echo "导入 42/669: R22043"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22043", "姓名": "Elijah Kov", "中介": "Alessandra", "国籍": "俄罗斯", "专业": "贸易", "资格证": "TEFL", "教学经验": "5年", "目前所在地": "成都", "上岗时间": "Feb. 2022", "签证类型": "工作签证", "工签职位": "俄语老师", "意向城市": "深圳", "意向职位": "幼儿园、小学", "薪资期望": "16k+住宿", "跟进记录": "1/25发SDE", "性别": "男", "肤色": "白", "学历": "本科", "是否可转聘": "可转聘", "更新日期": 1643068800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22043"
fi
sleep 0.3

# Record 43: R22044
echo "导入 43/669: R22044"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22044", "姓名": "Alex Pike", "中介": "优才社郭", "国籍": "英国", "资格证": "TKT", "教学经验": "1年", "目前所在地": "深圳", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "幼儿园、小学", "薪资期望": "税后20K+住宿", "跟进记录": "1/26发金生", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1643155200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22044"
fi
sleep 0.3

# Record 44: R22045
echo "导入 44/669: R22045"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22045", "姓名": "Violet Lawrence", "中介": "优才社郭", "国籍": "英国", "资格证": "TKT", "教学经验": "1年", "目前所在地": "深圳", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "幼儿园、小学", "薪资期望": "税后20K+住宿", "跟进记录": "1/26发金生", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1643155200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22045"
fi
sleep 0.3

# Record 45: R22046
echo "导入 45/669: R22046"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22046", "姓名": "Ryan Mason", "中介": "Ray", "国籍": "加拿大", "专业": "商业管理", "资格证": "TESOL", "目前所在地": "广州", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "幼儿园、小学", "薪资期望": "税后28K+住宿", "跟进记录": "年后推深美", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1643155200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22046"
fi
sleep 0.3

# Record 46: R22047
echo "导入 46/669: R22047"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22047", "姓名": "Latoya", "中介": "Dandan", "目前所在地": "北京", "上岗时间": "Aug.2022", "意向职位": "小学，三年级", "薪资期望": "20-26K税后", "性别": "女", "更新日期": 1643155200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22047"
fi
sleep 0.3

# Record 47: R22048
echo "导入 47/669: R22048"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22048", "姓名": "Elvis B. Orellana", "中介": "Josie", "国籍": "美国", "专业": "信息科技", "资格证": "TEFL", "教学经验": "4年", "目前所在地": "上海", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "ESL，数学、科学", "跟进记录": "1/26发深美", "性别": "男", "肤色": "棕", "学历": "本科", "更新日期": 1643155200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22048"
fi
sleep 0.3

# Record 48: R22049
echo "导入 48/669: R22049"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22049", "姓名": "Curtis Rogers", "中介": "Josie", "国籍": "美国", "专业": "英语文学", "资格证": "TEFL", "目前所在地": "深圳", "上岗时间": "Feb. 2022", "性别": "男", "学历": "本科", "更新日期": 1643155200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22049"
fi
sleep 0.3

# Record 49: R22050
echo "导入 49/669: R22050"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22050", "姓名": "Ewilina Budner(Evie)", "中介": "Ray", "国籍": "波兰", "专业": "TESOL \n本科英语研究", "资格证": "QTS", "教学经验": "8年", "目前所在地": "佛山", "上岗时间": "Aug.2022", "签证类型": "工作签证", "工签职位": "Homeroom Teaching", "意向职位": "Homeroom,ESL", "跟进记录": "年后重点推深美", "性别": "女", "肤色": "白", "学历": "硕士", "更新日期": 1643155200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22050"
fi
sleep 0.3

# Record 50: R22051
echo "导入 50/669: R22051"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22051", "姓名": "Hayden", "中介": "Woody", "国籍": "新西兰", "目前所在地": "境外·越南", "性别": "男", "肤色": "白", "更新日期": 1643155200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22051"
fi
sleep 0.3

# Record 51: R22052
echo "导入 51/669: R22052"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22052", "姓名": "Marcel Reyes Lozano", "中介": "Ray", "国籍": "哥伦比亚", "专业": "哲学与语言", "资格证": "TEFL", "教学经验": "15年", "目前所在地": "蛇口，深圳", "上岗时间": "Feb. 2022", "签证类型": "家属签证", "意向城市": "深圳", "意向职位": "国际学校", "薪资期望": "25K+住宿补贴", "跟进记录": "8年都没工签，难", "性别": "男", "肤色": "棕", "学历": "本科", "更新日期": 1643155200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22052"
fi
sleep 0.3

# Record 52: R22053
echo "导入 52/669: R22053"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22053", "姓名": "John Calvin Jones", "中介": "Ray", "国籍": "英国", "专业": "教育学", "资格证": "数学教学资格证", "教学经验": "20年", "目前所在地": "江苏常州", "签证类型": "工作签证", "意向职位": "数学、管理岗", "跟进记录": "1/27发富源", "性别": "男", "肤色": "棕", "学历": "博士", "更新日期": 1643241600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22053"
fi
sleep 0.3

# Record 53: R22054
echo "导入 53/669: R22054"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22054", "姓名": "Kelvin W.", "中介": "Ray", "国籍": "英国", "专业": "计算机与信息系统", "教学经验": "8年", "目前所在地": "深圳", "上岗时间": "Feb. 2022", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "幼儿园、小学", "性别": "男", "肤色": "亚裔", "学历": "本科", "是否可转聘": "可转聘", "年龄": 36.0, "更新日期": 1643241600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22054"
fi
sleep 0.3

# Record 54: R22055
echo "导入 54/669: R22055"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22055", "姓名": "Leon Boer", "上岗时间": "Feb. 2022", "意向职位": "国际学校小学", "跟进记录": "在旅游中", "性别": "男", "肤色": "白", "更新日期": 1643241600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22055"
fi
sleep 0.3

# Record 55: R22056
echo "导入 55/669: R22056"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22056", "姓名": "John", "中介": "Ray", "国籍": "爱尔兰", "目前所在地": "境外·爱尔兰", "上岗时间": "Sep.2022", "跟进记录": "有个女朋友一起来，4月毕业，微信联系", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1643241600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22056"
fi
sleep 0.3

# Record 56: R22057
echo "导入 56/669: R22057"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22057", "姓名": "Jeremy Smith", "中介": "Barry", "国籍": "加拿大", "专业": "商务中文", "资格证": "TESOL", "教学经验": "4年", "目前所在地": "深圳", "上岗时间": "Feb. 2022", "签证类型": "商业类工签", "意向城市": "深圳", "意向职位": "幼儿园、小学", "薪资期望": "30K", "跟进记录": "可发Ruby", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1643328000000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22057"
fi
sleep 0.3

# Record 57: R22058
echo "导入 57/669: R22058"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22058", "姓名": "Trayvion Wallace\n（Wally)", "中介": "Ray", "国籍": "美国", "专业": "英文与教育学", "资格证": "教师资格证", "教学经验": "4年", "目前所在地": "深圳", "上岗时间": "Feb. 2022", "意向城市": "深圳", "意向职位": "国际学校", "性别": "男", "肤色": "黑", "学历": "博士", "更新日期": 1643328000000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22058"
fi
sleep 0.3

# Record 58: R22059
echo "导入 58/669: R22059"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22059", "姓名": "Winnifred Reid", "中介": "Ray", "国籍": "牙买加", "性别": "女", "更新日期": 1643328000000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22059"
fi
sleep 0.3

# Record 59: R22060
echo "导入 59/669: R22060"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22060", "姓名": "Scott Victor", "中介": "Ray", "国籍": "美国", "专业": "英语语言与文学", "资格证": "教师资格证", "目前所在地": "浙江金华", "上岗时间": "Feb. 2022", "签证类型": "工作签证", "意向城市": "大城市", "意向职位": "AP,英语文学，学术写作", "薪资期望": "教学 40-50k \n管理50-60K", "性别": "男", "肤色": "白", "学历": "硕士", "更新日期": 1643328000000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22060"
fi
sleep 0.3

# Record 60: R22061
echo "导入 60/669: R22061"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22061", "姓名": "Yolanda (Cherry)", "中介": "Bronson", "性别": "女", "更新日期": 1643328000000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22061"
fi
sleep 0.3

# Record 61: R22062
echo "导入 61/669: R22062"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22062", "姓名": "Karole Watson", "中介": "Ray", "国籍": "牙买加", "专业": "小学教育", "教学经验": "3年", "上岗时间": "Aug.2022", "性别": "女", "肤色": "黑", "学历": "硕士", "更新日期": 1643328000000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22062"
fi
sleep 0.3

# Record 62: R22063
echo "导入 62/669: R22063"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22063", "姓名": "Elijah Thomas", "中介": "Himo", "国籍": "美国", "资格证": "TEFL", "教学经验": "3年", "目前所在地": "杭州", "上岗时间": "Feb. 2022", "签证类型": "工作签证", "意向城市": "不限", "意向职位": "幼儿园，小学，初中", "薪资期望": "26K", "性别": "男", "肤色": "黑", "学历": "本科", "更新日期": 1643328000000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22063"
fi
sleep 0.3

# Record 63: R22064
echo "导入 63/669: R22064"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22064", "姓名": "George", "中介": "Ray", "教学经验": "7.5年", "跟进记录": "求职金生管理岗", "性别": "男", "肤色": "白", "更新日期": 1643328000000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22064"
fi
sleep 0.3

# Record 64: R22065
echo "导入 64/669: R22065"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22065", "姓名": "Aaron Wilde", "中介": "Ray", "国籍": "美国", "目前所在地": "境外·香港", "意向城市": "广州、珠海", "性别": "男", "肤色": "白"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22065"
fi
sleep 0.3

# Record 65: R22066
echo "导入 65/669: R22066"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22066", "姓名": "Winnifred Reid", "中介": "Ray", "国籍": "牙买加", "资格证": "QTS", "上岗时间": "Feb. 2022", "意向城市": "深圳", "性别": "女", "肤色": "黑"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22066"
fi
sleep 0.3

# Record 66: R22067
echo "导入 66/669: R22067"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22067", "姓名": "Mike Chernavin", "中介": "Ray", "国籍": "俄罗斯", "专业": "教育学", "目前所在地": "深圳", "签证类型": "工作签证", "工签职位": "俄罗斯语教师", "意向城市": "深圳", "跟进记录": "国培10月刚下证", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1643328000000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22067"
fi
sleep 0.3

# Record 67: R22068
echo "导入 67/669: R22068"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22068", "姓名": "Eugene Horak", "中介": "Alessandra", "国籍": "南非", "专业": "工程学", "资格证": "TEFL", "教学经验": "12年", "目前所在地": "深圳", "上岗时间": "Feb. 2022", "意向城市": "深圳", "薪资期望": "20K", "跟进记录": "发爱义JD", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1643414400000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22068"
fi
sleep 0.3

# Record 68: R22069
echo "导入 68/669: R22069"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22069", "姓名": "Donald Anthony Hines", "中介": "Alessandra", "国籍": "美国", "专业": "教育学", "教学经验": "4年", "意向职位": "教学主管", "跟进记录": "等简历视频，拟发金生", "性别": "男", "肤色": "白", "学历": "博士", "更新日期": 1643328000000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22069"
fi
sleep 0.3

# Record 69: R22070
echo "导入 69/669: R22070"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22070", "姓名": "Alejandra Cetrangolo", "中介": "Ray", "国籍": "意大利", "专业": "教育学", "资格证": "教师资格证", "教学经验": "10年", "目前所在地": "深圳", "上岗时间": "Feb. 2022", "签证类型": "工作签证", "工签职位": "舞蹈老师", "意向城市": "深圳", "意向职位": "幼儿园、高中\n艺术老师，ESL", "薪资期望": "28/30K 税前+ 3K", "跟进记录": "节年联系福田艺术学校", "性别": "女", "肤色": "白", "学历": "硕士", "更新日期": 1677196800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22070"
fi
sleep 0.3

# Record 70: R22071
echo "导入 70/669: R22071"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22071", "姓名": "Wanda Normn", "中介": "Alessandra", "国籍": "美国", "专业": "中药学", "资格证": "教师资格证", "教学经验": "7年", "上岗时间": "Feb. 2022", "签证类型": "工作签证", "意向城市": "江苏", "薪资期望": "23000 after tax\n paid holidays", "跟进记录": "Sherry问江苏", "性别": "女", "肤色": "白", "学历": "硕士", "更新日期": 1644019200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22071"
fi
sleep 0.3

# Record 71: R22072
echo "导入 71/669: R22072"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22072", "姓名": "Sonia Ike", "中介": "Ray", "国籍": "美国", "专业": "国际经济发展", "资格证": "TEFL", "教学经验": "1年", "目前所在地": "深圳", "上岗时间": "Feb. 2022", "签证类型": "停留签证", "意向城市": "深圳福田", "意向职位": "四年级及以上", "薪资期望": "27K+3K", "性别": "女", "肤色": "黑", "学历": "硕士", "更新日期": 1644019200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22072"
fi
sleep 0.3

# Record 72: R22073
echo "导入 72/669: R22073"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22073", "姓名": "Jackson Pollock", "中介": "Alessandra", "国籍": "美国", "专业": "IT", "资格证": "TEFL", "教学经验": "12年", "目前所在地": "安徽合肥", "上岗时间": "Feb. 2022", "签证类型": "家属签证", "意向城市": "南方城市", "意向职位": "幼儿园，小学，初中", "薪资期望": "22-30k", "跟进记录": "可发SIE", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1644019200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22073"
fi
sleep 0.3

# Record 73: R22074
echo "导入 73/669: R22074"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22074", "姓名": "Jack Pinion", "中介": "Alessandra", "国籍": "英国", "专业": "商业管理", "资格证": "TEFL", "教学经验": "4年", "目前所在地": "上海", "上岗时间": "Feb. 2022", "签证类型": "工作签证", "意向城市": "上海", "意向职位": "幼儿园，小学，初中", "薪资期望": "28K", "跟进记录": "Barry@Panda", "性别": "男", "肤色": "白", "学历": "本科", "是否可转聘": "可转聘", "更新日期": 1644019200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22074"
fi
sleep 0.3

# Record 74: R22075
echo "导入 74/669: R22075"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22075", "姓名": "Corey Lindner", "中介": "Ray", "国籍": "牙买加", "专业": "管理", "资格证": "TEFL", "教学经验": "7年", "目前所在地": "武汉", "上岗时间": "Jul.2022", "签证类型": "工作签证", "意向城市": "南方海滨城市", "意向职位": "幼儿园，小学，初中", "薪资期望": "20K税后", "性别": "男", "肤色": "黑", "学历": "本科", "更新日期": 1644019200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22075"
fi
sleep 0.3

# Record 75: R22076
echo "导入 75/669: R22076"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22076", "姓名": "Eric-Theophilus Nwodom", "中介": "Ray", "国籍": "尼日利亚", "专业": "本科工业物理", "资格证": "教师资格证", "教学经验": "5年", "目前所在地": "苏州", "上岗时间": "Feb. 2022", "签证类型": "工作签证", "意向职位": "IGCSE/A level Physics", "跟进记录": "已发君华国际学校，2.9拒绝", "性别": "男", "肤色": "黑", "学历": "硕士", "是否可转聘": "可转聘", "更新日期": 1644192000000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22076"
fi
sleep 0.3

# Record 76: R22077
echo "导入 76/669: R22077"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22077", "姓名": "Val Sheptiukov", "中介": "Ray", "国籍": "俄罗斯", "专业": "体育教育学", "教学经验": "8年", "目前所在地": "深圳", "上岗时间": "Aug.2022", "签证类型": "工作签证", "工签职位": "篮球教练", "意向城市": "深圳", "意向职位": "篮球教练、体育老师", "薪资期望": "20K税后+5K住宿", "性别": "男", "肤色": "白", "学历": "硕士", "更新日期": 1644364800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22077"
fi
sleep 0.3

# Record 77: R22078
echo "导入 77/669: R22078"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22078", "姓名": "Romani", "中介": "Ray", "国籍": "俄罗斯", "专业": "教育学", "资格证": "教师资格证", "教学经验": "7年", "目前所在地": "深圳", "上岗时间": "Feb. 2022", "签证类型": "家属签证", "意向城市": "深圳", "跟进记录": "4月可有中国身份证", "性别": "男", "肤色": "白", "学历": "硕士", "是否可转聘": "可转聘", "更新日期": 1644364800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22078"
fi
sleep 0.3

# Record 78: R22079
echo "导入 78/669: R22079"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22079", "姓名": "Darl", "中介": "Sherry", "国籍": "爱尔兰", "资格证": "TEFL", "教学经验": "4年", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向城市": "广州、佛山", "意向职位": "ESL", "薪资期望": "26税后以上", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1644451200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22079"
fi
sleep 0.3

# Record 79: R22080
echo "导入 79/669: R22080"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22080", "姓名": "Eugene Horak", "中介": "Alessandra", "国籍": "南非", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1644451200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22080"
fi
sleep 0.3

# Record 80: R22081
echo "导入 80/669: R22081"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22081", "姓名": "Jameyia Shamia", "中介": "优才社郭", "国籍": "美国", "专业": "计算机工程", "教学经验": "3年", "目前所在地": "深圳", "上岗时间": "Mar.2022", "签证类型": "工作签证", "意向城市": "宝安、福田或南山区", "意向职位": "初高中", "薪资期望": "20K税后+住宿", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1644451200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22081"
fi
sleep 0.3

# Record 81: R22082
echo "导入 81/669: R22082"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22082", "姓名": "Matthew McGovern", "中介": "Himo", "国籍": "美国", "教学经验": "15年", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向城市": "上\\广\\深", "意向职位": "初高中ESL", "薪资期望": "30K税后", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1644451200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22082"
fi
sleep 0.3

# Record 82: R22083
echo "导入 82/669: R22083"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22083", "姓名": "Craig Dudley", "中介": "Ray", "国籍": "英国", "教学经验": "10年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "意向城市": "深圳", "意向职位": "体育", "薪资期望": "25-30K", "性别": "男", "肤色": "白", "更新日期": 1644537600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22083"
fi
sleep 0.3

# Record 83: R22084
echo "导入 83/669: R22084"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22084", "姓名": "Ana Gomaez", "中介": "优才社郭", "国籍": "西班牙", "专业": "历史", "上岗时间": "Aug.2022", "签证类型": "工作签证", "工签职位": "西语老师", "意向城市": "广州佛山深圳", "意向职位": "西班牙语", "薪资期望": "薪资可谈", "性别": "女", "肤色": "白", "学历": "硕士", "更新日期": 1644883200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22084"
fi
sleep 0.3

# Record 84: R22085
echo "导入 84/669: R22085"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22085", "姓名": "Jeffrey Young", "中介": "优才社郭", "国籍": "美国", "专业": "体育管理", "教学经验": "3年", "目前所在地": "广州", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向城市": "上海广州深圳", "意向职位": "体育", "薪资期望": "27K+", "性别": "男", "肤色": "白", "学历": "硕士", "更新日期": 1644883200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22085"
fi
sleep 0.3

# Record 85: R22086
echo "导入 85/669: R22086"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22086", "姓名": "Richard Press", "中介": "Ray", "国籍": "英国", "专业": "旅游管理", "教学经验": "14年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "初高中ESL", "性别": "男", "肤色": "白", "学历": "硕士", "更新日期": 1644883200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22086"
fi
sleep 0.3

# Record 86: R22087
echo "导入 86/669: R22087"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22087", "姓名": "Fergus Butler", "中介": "Ray", "国籍": "爱尔兰", "专业": "供应链管理", "资格证": "TEFL", "教学经验": "6年", "目前所在地": "深圳", "上岗时间": "Feb. 2022", "签证类型": "Feb. 2022", "意向城市": "深圳", "意向职位": "幼儿园，小学，初中", "薪资期望": "薪资可谈", "性别": "男", "肤色": "白", "学历": "硕士", "更新日期": 1645056000000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22087"
fi
sleep 0.3

# Record 87: R22088
echo "导入 87/669: R22088"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22088", "姓名": "Erik Molina", "中介": "优才社郭", "国籍": "美国", "教学经验": "3年", "目前所在地": "北京", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "小学Homeroom", "薪资期望": "25-31K", "性别": "男", "肤色": "白", "学历": "硕士", "更新日期": 1646006400000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22088"
fi
sleep 0.3

# Record 88: R22089
echo "导入 88/669: R22089"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22089", "姓名": "OSCAR GUTIERREZ", "中介": "优才社郭", "国籍": "西班牙", "专业": "教育学与英语", "目前所在地": "北京", "上岗时间": "Feb. 2022", "签证类型": "工作签证", "工签职位": "经理", "意向城市": "深圳", "意向职位": "西语", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1646006400000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22089"
fi
sleep 0.3

# Record 89: R22090
echo "导入 89/669: R22090"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22090", "姓名": "Bulent Yuksel", "中介": "优才社郭", "国籍": "美国", "专业": "经济", "资格证": "教师资格证", "教学经验": "9年", "目前所在地": "慈溪", "上岗时间": "Apr or Sep", "意向城市": "深圳", "意向职位": "数学", "薪资期望": "25K税后+住宿", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1646006400000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22090"
fi
sleep 0.3

# Record 90: R22091
echo "导入 90/669: R22091"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22091", "姓名": "Rajesh Koonan", "中介": "优才社郭", "国籍": "印度", "专业": "数学-教育学", "教学经验": "8年", "目前所在地": "贵州", "上岗时间": "Mar.2022", "意向城市": "深圳", "意向职位": "数学", "性别": "男", "肤色": "棕", "学历": "硕士", "更新日期": 1646006400000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22091"
fi
sleep 0.3

# Record 91: R22092
echo "导入 91/669: R22092"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22092", "姓名": "Declan Roche", "中介": "优才社郭", "国籍": "爱尔兰", "资格证": "足球教练证", "教学经验": "10年", "目前所在地": "济南", "上岗时间": "Aug.2022", "签证类型": "工作签证", "工签职位": "足球教练", "意向职位": "足球教练", "薪资期望": "28税后", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1646006400000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22092"
fi
sleep 0.3

# Record 92: R22093
echo "导入 92/669: R22093"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22093", "姓名": "Danielle Tedesha Whyte", "中介": "Ray", "国籍": "牙买加", "专业": "旅游管理", "资格证": "TEFL", "教学经验": "3年", "上岗时间": "Mar.2022", "签证类型": "工作签证", "意向城市": "不限", "意向职位": "ESL", "薪资期望": "23k左右", "性别": "女", "肤色": "黑", "学历": "本科", "是否可转聘": "可转聘", "更新日期": 1646092800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22093"
fi
sleep 0.3

# Record 93: R22094
echo "导入 93/669: R22094"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22094", "姓名": "Jay", "中介": "Alessandra", "国籍": "南非", "资格证": "TESOL", "教学经验": "4年", "目前所在地": "郑州", "上岗时间": "Mar.2022", "签证类型": "工作签证", "薪资期望": "20-27K", "性别": "男", "肤色": "黑", "更新日期": 1646438400000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22094"
fi
sleep 0.3

# Record 94: R22095
echo "导入 94/669: R22095"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22095", "姓名": "Filip Mitrović", "中介": "Ray", "国籍": "塞尔维亚", "专业": "商业与市场管理", "资格证": "IB PYP", "教学经验": "8年", "目前所在地": "北京", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向城市": "深圳，上海，北京", "意向职位": "ESL,体育，经济", "薪资期望": "28-30k", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1646438400000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22095"
fi
sleep 0.3

# Record 95: R22096
echo "导入 95/669: R22096"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22096", "姓名": "Shawn Fobes", "国籍": "牙买加", "性别": "男", "肤色": "黑", "更新日期": 1646438400000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22096"
fi
sleep 0.3

# Record 96: R22097
echo "导入 96/669: R22097"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22097", "姓名": "Cristina Isabel Villalobos Ruiz.", "中介": "Ray", "国籍": "墨西哥", "专业": "兽医", "资格证": "TEFL / PYP", "教学经验": "3年", "目前所在地": "广州", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1646438400000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22097"
fi
sleep 0.3

# Record 97: R22098
echo "导入 97/669: R22098"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22098", "姓名": "Gordan", "中介": "Dandan", "国籍": "塞尔维亚", "专业": "体育教育学", "教学经验": "10年", "目前所在地": "深圳", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "体育", "薪资期望": "30K", "性别": "男", "肤色": "白", "学历": "硕士", "更新日期": 1646438400000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22098"
fi
sleep 0.3

# Record 98: R22099
echo "导入 98/669: R22099"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22099", "姓名": "Claus", "中介": "Byron", "国籍": "英国", "意向城市": "深圳", "薪资期望": "20K", "性别": "男", "肤色": "亚裔", "学历": "本科", "更新日期": 1646611200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22099"
fi
sleep 0.3

# Record 99: R22100
echo "导入 99/669: R22100"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22100", "姓名": "Jacob Parming", "中介": "Byron", "国籍": "瑞典", "专业": "机械工程", "意向城市": "上海", "薪资期望": "27K+", "性别": "男", "肤色": "白", "学历": "硕士", "更新日期": 1646611200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22100"
fi
sleep 0.3

# Record 100: R22101
echo "导入 100/669: R22101"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22101", "姓名": "Kirsten Marshall", "中介": "Himo", "国籍": "南非", "资格证": "PGCE", "目前所在地": "上海", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向城市": "苏州", "意向职位": "幼儿园", "薪资期望": "28-30K", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1647216000000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22101"
fi
sleep 0.3

# Record 101: R22102
echo "导入 101/669: R22102"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22102", "姓名": "Chayce Dylan Andrew Zangel.", "中介": "Himo", "国籍": "南非", "教学经验": "5年", "目前所在地": "天津", "上岗时间": "Jul.2022", "签证类型": "工作签证", "意向城市": "天津", "意向职位": "幼儿园，小学", "薪资期望": "20K税后+住宿", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1647216000000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22102"
fi
sleep 0.3

# Record 102: R22103
echo "导入 102/669: R22103"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22103", "姓名": "Rochelle Nadine Simon", "中介": "Himo", "国籍": "南非", "专业": "基础教育", "资格证": "TEFL", "教学经验": "4年", "目前所在地": "天津", "上岗时间": "Jul.2022", "签证类型": "工作签证", "意向城市": "天津", "意向职位": "幼儿园，小学", "薪资期望": "20K", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1647216000000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22103"
fi
sleep 0.3

# Record 103: R22104
echo "导入 103/669: R22104"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22104", "姓名": "MARIKA SCOTT", "中介": "Sherry", "国籍": "南非", "专业": "法律", "教学经验": "20年", "目前所在地": "宜昌", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向城市": "深圳、沿海", "意向职位": "高中", "薪资期望": "25k左右", "性别": "女", "肤色": "白", "学历": "硕士", "更新日期": 1647388800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22104"
fi
sleep 0.3

# Record 104: R22105
echo "导入 104/669: R22105"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22105", "姓名": "Grant Scott", "中介": "Sherry", "国籍": "南非", "专业": "工程", "教学经验": "11年", "目前所在地": "宜昌", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向城市": "深圳、沿海", "意向职位": "高中", "薪资期望": "25k左右", "性别": "男", "肤色": "白", "学历": "硕士", "更新日期": 1647388800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22105"
fi
sleep 0.3

# Record 105: R22106
echo "导入 105/669: R22106"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22106", "姓名": "GORANA DURDIC", "中介": "Ray", "国籍": "塞尔维亚", "专业": "生物医学工程", "教学经验": "4年", "目前所在地": "深圳", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "生物、化学", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1647475200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22106"
fi
sleep 0.3

# Record 106: R22107
echo "导入 106/669: R22107"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22107", "姓名": "Tyron", "中介": "Alessandra", "国籍": "南非", "资格证": "PGCE", "教学经验": "5年", "目前所在地": "西安", "上岗时间": "Aug.2022", "性别": "男", "肤色": "白", "学历": "硕士", "更新日期": 1649116800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22107"
fi
sleep 0.3

# Record 107: R22108
echo "导入 107/669: R22108"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22108", "姓名": "Sebastien Le", "中介": "优才社郭", "国籍": "法国", "意向职位": "高中艺术", "性别": "男", "肤色": "白", "更新日期": 1649116800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22108"
fi
sleep 0.3

# Record 108: R22109
echo "导入 108/669: R22109"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22109", "姓名": "Jack", "中介": "优才社郭", "国籍": "英国", "专业": "历史", "资格证": "TEFL", "教学经验": "8年", "目前所在地": "徐州", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向职位": "高中", "薪资期望": "30K+住宿", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1649116800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22109"
fi
sleep 0.3

# Record 109: R22111
echo "导入 109/669: R22111"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22111", "姓名": "Dana", "中介": "Sherry", "国籍": "塞尔维亚", "专业": "音乐", "教学经验": "5年", "目前所在地": "上海", "上岗时间": "Aug.2022", "意向职位": "音乐", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1649116800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22111"
fi
sleep 0.3

# Record 110: R22112
echo "导入 110/669: R22112"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22112", "姓名": "Jessy", "中介": "Alessandra", "国籍": "伊朗", "性别": "女", "肤色": "白", "更新日期": 1649116800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22112"
fi
sleep 0.3

# Record 111: R22113
echo "导入 111/669: R22113"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22113", "姓名": "Giorgi", "中介": "Alessandra", "国籍": "乌克兰", "性别": "男", "肤色": "白", "更新日期": 1649116800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22113"
fi
sleep 0.3

# Record 112: R22114
echo "导入 112/669: R22114"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22114", "姓名": "Gyulie", "中介": "Alessandra", "国籍": "亚美尼亚", "性别": "女", "肤色": "白", "更新日期": 1649116800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22114"
fi
sleep 0.3

# Record 113: R22115
echo "导入 113/669: R22115"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22115", "姓名": "Elizaveta （Lily)", "中介": "Alessandra", "国籍": "俄罗斯", "性别": "女", "肤色": "白", "更新日期": 1649116800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22115"
fi
sleep 0.3

# Record 114: R22116
echo "导入 114/669: R22116"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22116", "姓名": "Caroline", "中介": "Sherry", "国籍": "英国", "薪资期望": "34K", "性别": "女", "肤色": "白", "更新日期": 1649116800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22116"
fi
sleep 0.3

# Record 115: R22117
echo "导入 115/669: R22117"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22117", "姓名": "Peter", "中介": "Sherry", "国籍": "英国", "薪资期望": "28k", "性别": "男", "肤色": "白", "更新日期": 1649116800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22117"
fi
sleep 0.3

# Record 116: R22118
echo "导入 116/669: R22118"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22118", "姓名": "Jonathan Paets", "中介": "优才社郭", "国籍": "美国", "专业": "音乐", "意向职位": "音乐", "性别": "男", "肤色": "黑", "更新日期": 1649116800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22118"
fi
sleep 0.3

# Record 117: R22119
echo "导入 117/669: R22119"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22119", "姓名": "Callum Jones", "中介": "Ray", "国籍": "英国", "意向职位": "视觉设计", "性别": "男", "肤色": "白", "更新日期": 1649116800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22119"
fi
sleep 0.3

# Record 118: R22119
echo "导入 118/669: R22119"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22119", "姓名": "Callum Jones", "中介": "Ray", "国籍": "英国", "专业": "游戏设计", "资格证": "TEFL", "教学经验": "5年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "视觉设计", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1677110400000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22119"
fi
sleep 0.3

# Record 119: R22120
echo "导入 119/669: R22120"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22120", "姓名": "Miguel", "中介": "Ray", "国籍": "美国", "教学经验": "12年", "意向职位": "幼儿园", "薪资期望": "30k", "性别": "男", "肤色": "白", "更新日期": 1649116800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22120"
fi
sleep 0.3

# Record 120: R22121
echo "导入 120/669: R22121"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22121", "姓名": "Santie Otto", "中介": "优才社郭", "国籍": "南非", "意向职位": "幼儿园", "薪资期望": "28K", "性别": "女", "肤色": "白", "更新日期": 1649116800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22121"
fi
sleep 0.3

# Record 121: R22122
echo "导入 121/669: R22122"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22122", "姓名": "Vardan Sahakian", "中介": "优才社郭", "国籍": "澳大利亚", "意向职位": "校长", "性别": "男", "肤色": "白", "更新日期": 1649116800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22122"
fi
sleep 0.3

# Record 122: R22123
echo "导入 122/669: R22123"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22123", "姓名": "Rodney Allan Callinan", "中介": "Ray", "国籍": "澳大利亚", "意向职位": "幼儿园校长", "性别": "男", "肤色": "白", "更新日期": 1649116800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22123"
fi
sleep 0.3

# Record 123: R22124
echo "导入 123/669: R22124"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22124", "姓名": "Manuel Basso", "中介": "优才社郭", "国籍": "英国", "专业": "法律", "资格证": "TEFL", "教学经验": "2年", "目前所在地": "深圳", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向职位": "幼儿园或小学低年级", "薪资期望": "税后28K+住宿", "性别": "男", "肤色": "白", "学历": "硕士", "更新日期": 1649116800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22124"
fi
sleep 0.3

# Record 124: R22125
echo "导入 124/669: R22125"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22125", "姓名": "Paul J. Blois", "中介": "优才社郭", "国籍": "加拿大", "专业": "数学教育", "资格证": "IB证书", "目前所在地": "佛山", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向职位": "数学科学生物化学职位", "薪资期望": "30K+住宿", "性别": "男", "肤色": "白", "学历": "硕士", "更新日期": 1649116800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22125"
fi
sleep 0.3

# Record 125: R22126
echo "导入 125/669: R22126"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22126", "姓名": "Gabi", "中介": "Ray", "国籍": "匈牙利", "目前所在地": "深圳", "上岗时间": "ASAP", "签证类型": "工作签证", "意向职位": "视觉设计", "性别": "男", "肤色": "白", "更新日期": 1649116800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22126"
fi
sleep 0.3

# Record 126: R22127
echo "导入 126/669: R22127"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22127", "姓名": "Chris Carter", "中介": "优才社郭", "国籍": "美国", "专业": "教育领导学", "资格证": "MBA+PGCE+AP，IBDP和加拿大课程经验", "教学经验": "10年管理经验", "目前所在地": "广州", "上岗时间": "Aug.2022", "签证类型": "中国绿卡", "意向职位": "校长、管理岗", "薪资期望": "50-90万", "性别": "男", "肤色": "白", "学历": "硕士", "更新日期": 1649116800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22127"
fi
sleep 0.3

# Record 127: R22128
echo "导入 127/669: R22128"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22128", "姓名": "Henry Skupek", "中介": "优才社郭", "国籍": "澳大利亚", "目前所在地": "深圳", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向职位": "校长、管理岗", "性别": "男", "肤色": "白", "学历": "博士", "更新日期": 1649116800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22128"
fi
sleep 0.3

# Record 128: R22129
echo "导入 128/669: R22129"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22129", "姓名": "Adnan", "中介": "Ray", "国籍": "英国", "资格证": "TEFL", "目前所在地": "深圳", "签证类型": "工作签证", "意向职位": "小学、初中、高中", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1649116800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22129"
fi
sleep 0.3

# Record 129: R22130
echo "导入 129/669: R22130"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22130", "姓名": "Colin Jones", "中介": "Ray", "国籍": "英国", "资格证": "TEFL", "教学经验": "6年", "目前所在地": "深圳", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向职位": "小学、初中、高中", "薪资期望": "20K", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1649116800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22130"
fi
sleep 0.3

# Record 130: R22131
echo "导入 130/669: R22131"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22131", "姓名": "Max Klein", "中介": "优才社郭", "国籍": "美国", "专业": "政治", "资格证": "TEFL", "教学经验": "2年", "目前所在地": "深圳", "上岗时间": "ASAP", "签证类型": "工作签证", "意向城市": "深圳、广州", "意向职位": "幼儿园", "薪资期望": "30k", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1649116800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22131"
fi
sleep 0.3

# Record 131: R22132
echo "导入 131/669: R22132"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22132", "姓名": "Wilma Joubert", "中介": "优才社郭", "国籍": "南非", "专业": "教育学", "教学经验": "4年幼儿园", "目前所在地": "佛山", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向城市": "深圳海口三亚", "意向职位": "幼儿园", "薪资期望": "28K", "性别": "女", "肤色": "白", "学历": "硕士", "更新日期": 1649116800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22132"
fi
sleep 0.3

# Record 132: R22133
echo "导入 132/669: R22133"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22133", "姓名": "SCOTT WELK", "中介": "优才社郭", "国籍": "美国", "专业": "早教专业", "资格证": "TEFL", "目前所在地": "北京", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向职位": "幼儿园校长、管理岗", "薪资期望": "50-70K", "性别": "男", "学历": "硕士", "更新日期": 1649116800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22133"
fi
sleep 0.3

# Record 133: R22134
echo "导入 133/669: R22134"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22134", "姓名": "Andrew Astbury", "中介": "优才社郭", "国籍": "英国", "目前所在地": "天津", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向职位": "校长，副校长和主管", "薪资期望": "60K+", "性别": "男", "肤色": "白", "更新日期": 1649116800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22134"
fi
sleep 0.3

# Record 134: R22135
echo "导入 134/669: R22135"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22135", "姓名": "Klinton Cahoy", "中介": "优才社郭", "国籍": "美国", "专业": "国际关系", "资格证": "TEFL", "教学经验": "4年", "目前所在地": "武汉", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向职位": "社会科学", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1649116800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22135"
fi
sleep 0.3

# Record 135: R22136
echo "导入 135/669: R22136"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22136", "姓名": "Stacy Johnson", "中介": "Ray", "国籍": "美国", "资格证": "TEFL", "教学经验": "4年", "目前所在地": "深圳", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向城市": "深圳上海", "意向职位": "小学、初中、高中", "薪资期望": "25k", "性别": "男", "肤色": "黑", "学历": "硕士", "更新日期": 1649116800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22136"
fi
sleep 0.3

# Record 136: R22137
echo "导入 136/669: R22137"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22137", "姓名": "Eamonn OHagan", "中介": "优才社郭", "国籍": "英国", "专业": "法律", "资格证": "TEFL", "教学经验": "4年", "目前所在地": "深圳", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向城市": "深圳、成都", "意向职位": "音乐\\英语", "薪资期望": "26-31K", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1649116800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22137"
fi
sleep 0.3

# Record 137: R22138
echo "导入 137/669: R22138"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22138", "姓名": "Kyle Grimes", "中介": "Ray", "国籍": "美国", "专业": "课程设计", "资格证": "TESOL", "目前所在地": "深圳", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "校长、管理岗", "薪资期望": "税后35K", "性别": "男", "肤色": "白", "学历": "硕士", "更新日期": 1649116800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22138"
fi
sleep 0.3

# Record 138: R22139
echo "导入 138/669: R22139"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22139", "姓名": "RIZKY TIELMAN", "中介": "优才社郭", "国籍": "澳大利亚", "专业": "教育学", "资格证": "PGCE", "教学经验": "25年", "目前所在地": "苏州", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向职位": "管理或商务教学", "薪资期望": "31.5K", "性别": "男", "肤色": "亚裔", "学历": "硕士", "更新日期": 1649116800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22139"
fi
sleep 0.3

# Record 139: R22140
echo "导入 139/669: R22140"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22140", "姓名": "Lauren Byrne", "中介": "Ray", "国籍": "爱尔兰", "目前所在地": "深圳", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向职位": "幼儿园", "薪资期望": "27K税后", "性别": "女", "肤色": "白", "更新日期": 1649116800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22140"
fi
sleep 0.3

# Record 140: R22141
echo "导入 140/669: R22141"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22141", "姓名": "Daire Delaney", "中介": "Ray", "国籍": "爱尔兰", "目前所在地": "深圳", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向职位": "幼儿园、生物", "薪资期望": "27K税后", "性别": "男", "肤色": "白", "更新日期": 1649116800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22141"
fi
sleep 0.3

# Record 141: R22142
echo "导入 141/669: R22142"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22142", "姓名": "Platon Kerau", "中介": "Ray", "国籍": "波兰", "专业": "艺术", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向职位": "艺术", "性别": "男", "肤色": "白", "更新日期": 1649116800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22142"
fi
sleep 0.3

# Record 142: R22143
echo "导入 142/669: R22143"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22143", "姓名": "Derek Blair Buick", "中介": "Sherry", "国籍": "英国", "资格证": "TEFL", "教学经验": "12年", "目前所在地": "广州", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向职位": "高中", "薪资期望": "20K税后", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1649116800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22143"
fi
sleep 0.3

# Record 143: R22144
echo "导入 143/669: R22144"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22144", "姓名": "Govender", "中介": "Sherry", "国籍": "南非", "教学经验": "23年", "目前所在地": "苏州", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向职位": "校长、管理岗", "性别": "男", "更新日期": 1649203200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22144"
fi
sleep 0.3

# Record 144: R22145
echo "导入 144/669: R22145"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22145", "姓名": "David Janz", "中介": "Ray", "国籍": "加拿大", "专业": "应用经济学", "资格证": "TESOL", "教学经验": "9年", "目前所在地": "深圳", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "高中", "薪资期望": "25K+住宿补贴", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1649203200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22145"
fi
sleep 0.3

# Record 145: R22146
echo "导入 145/669: R22146"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22146", "姓名": "DavidAMedina", "中介": "优才社郭", "国籍": "美国", "意向职位": "校长、管理岗", "薪资期望": "50-60K", "性别": "男", "肤色": "白", "学历": "博士", "更新日期": 1649203200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22146"
fi
sleep 0.3

# Record 146: R22147
echo "导入 146/669: R22147"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22147", "姓名": "JOSH R VANCE", "中介": "Ray", "国籍": "美国", "专业": "英语", "资格证": "TEFL", "教学经验": "4年", "目前所在地": "深圳", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "幼儿园", "薪资期望": "27K税后", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1649203200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22147"
fi
sleep 0.3

# Record 147: R22148
echo "导入 147/669: R22148"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22148", "姓名": "Dani Shah", "中介": "Ray", "国籍": "英国", "专业": "国际商务", "资格证": "TEFL", "教学经验": "4年", "目前所在地": "东莞", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "深圳、东莞", "意向职位": "ESL", "薪资期望": "30+福利", "性别": "男", "肤色": "棕", "学历": "本科", "更新日期": 1649203200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22148"
fi
sleep 0.3

# Record 148: R22149
echo "导入 148/669: R22149"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22149", "姓名": "Dejan Paunovic", "中介": "Ray", "国籍": "塞尔维亚", "专业": "英语教育学", "教学经验": "8年", "目前所在地": "深圳", "上岗时间": "ASAP", "签证类型": "家属签证", "意向城市": "深圳", "意向职位": "小学、初中、高中", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1649203200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22149"
fi
sleep 0.3

# Record 149: R22150
echo "导入 149/669: R22150"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22150", "姓名": "Famia", "中介": "Ray", "国籍": "南非", "资格证": "TEFL", "教学经验": "3年", "目前所在地": "深圳", "上岗时间": "ASAP", "签证类型": "学生签证", "意向城市": "深圳", "意向职位": "幼儿园", "性别": "女", "肤色": "棕", "学历": "硕士", "更新日期": 1649203200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22150"
fi
sleep 0.3

# Record 150: R22151
echo "导入 150/669: R22151"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22151", "姓名": "Steve", "中介": "Ray", "国籍": "英国", "目前所在地": "深圳", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "幼儿园", "性别": "男", "肤色": "白", "更新日期": 1649203200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22151"
fi
sleep 0.3

# Record 151: R22152
echo "导入 151/669: R22152"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22152", "姓名": "Shanice", "中介": "Ray", "国籍": "南非", "目前所在地": "深圳", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "幼儿园", "性别": "女", "肤色": "浅黑", "更新日期": 1649203200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22152"
fi
sleep 0.3

# Record 152: R22153
echo "导入 152/669: R22153"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22153", "姓名": "SIPHESIHLE", "中介": "Himo", "国籍": "南非", "资格证": "TEFL", "教学经验": "5年", "目前所在地": "天津", "上岗时间": "Sep.2022", "签证类型": "工作签证", "意向城市": "天津", "意向职位": "小学", "薪资期望": "26税后以上", "性别": "女", "肤色": "黑", "学历": "本科", "更新日期": 1649203200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22153"
fi
sleep 0.3

# Record 153: R22154
echo "导入 153/669: R22154"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22154", "姓名": "Jae Giford", "中介": "Himo", "国籍": "英国", "专业": "化学", "资格证": "TEFL", "教学经验": "2年", "目前所在地": "福州", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向城市": "上海", "意向职位": "小学、初中、高中", "薪资期望": "28K", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1649203200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22154"
fi
sleep 0.3

# Record 154: R22155
echo "导入 154/669: R22155"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22155", "姓名": "Wilma Joubert", "中介": "优才社郭", "国籍": "南非", "专业": "教育学", "教学经验": "9年", "目前所在地": "佛山", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向城市": "深圳、三亚", "意向职位": "幼儿园", "薪资期望": "28K", "性别": "女", "肤色": "白", "学历": "本科", "年龄": 47.0, "更新日期": 1649203200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22155"
fi
sleep 0.3

# Record 155: R22156
echo "导入 155/669: R22156"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22156", "姓名": "Santie Otto", "中介": "Himo", "国籍": "南非", "专业": "商业管理", "教学经验": "5年", "目前所在地": "合肥", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向城市": "深圳、三亚", "意向职位": "幼儿园", "薪资期望": "27K", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1649203200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22156"
fi
sleep 0.3

# Record 156: R22157
echo "导入 156/669: R22157"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22157", "姓名": "Gregory Farah", "中介": "Himo", "国籍": "南非", "专业": "心理学", "资格证": "TEFL", "教学经验": "4年", "目前所在地": "合肥", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向城市": "厦门、云南", "意向职位": "小学、初中、高中", "薪资期望": "25k", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1649203200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22157"
fi
sleep 0.3

# Record 157: R22158
echo "导入 157/669: R22158"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22158", "姓名": "Claudine Bester", "中介": "Himo", "国籍": "南非", "专业": "教育学", "资格证": "PGCE", "教学经验": "12年", "目前所在地": "合肥", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向城市": "厦门、云南", "意向职位": "小学、初中、高中", "薪资期望": "25k", "性别": "女", "肤色": "白", "学历": "硕士", "更新日期": 1649203200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22158"
fi
sleep 0.3

# Record 158: R22159
echo "导入 158/669: R22159"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22159", "姓名": "Carlin Reeves", "中介": "Himo", "国籍": "南非", "资格证": "CELTA", "教学经验": "13年", "目前所在地": "杭州", "上岗时间": "ASAP", "签证类型": "工作签证", "意向城市": "杭州", "意向职位": "小学、初中、高中", "薪资期望": "20K", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1649203200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22159"
fi
sleep 0.3

# Record 159: R22160
echo "导入 159/669: R22160"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22160", "姓名": "Reddy", "中介": "Alessandra", "国籍": "南非", "专业": "早教专业", "教学经验": "15年", "目前所在地": "上海", "上岗时间": "May. 2022", "签证类型": "工作签证", "意向职位": "幼儿园", "薪资期望": "23-26税后", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1649203200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22160"
fi
sleep 0.3

# Record 160: R22161
echo "导入 160/669: R22161"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22161", "姓名": "Saber", "中介": "Alessandra", "国籍": "伊朗", "专业": "生物", "教学经验": "10年", "目前所在地": "杭州", "上岗时间": "Aug.2022", "签证类型": "工作签证", "性别": "男", "肤色": "白", "学历": "博士", "更新日期": 1649203200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22161"
fi
sleep 0.3

# Record 161: R22162
echo "导入 161/669: R22162"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22162", "姓名": "Franco Smith", "中介": "Alessandra", "国籍": "南非", "专业": "小学教育学", "教学经验": "6年", "目前所在地": "苏州", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向城市": "苏州", "意向职位": "幼儿园、小学、初中", "薪资期望": "25K税后", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1649203200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22162"
fi
sleep 0.3

# Record 162: R22163
echo "导入 162/669: R22163"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22163", "姓名": "Keaton", "中介": "Ray", "国籍": "美国", "资格证": "教师资格证", "性别": "男", "肤色": "白", "更新日期": 1649203200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22163"
fi
sleep 0.3

# Record 163: R22164
echo "导入 163/669: R22164"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22164", "姓名": "JASON HARADYN", "中介": "Patrick-Lynne", "国籍": "英国", "专业": "数学", "资格证": "PGCE", "教学经验": "8年", "目前所在地": "章丘", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向职位": "数学", "性别": "男", "学历": "硕士", "更新日期": 1649289600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22164"
fi
sleep 0.3

# Record 164: R22165
echo "导入 164/669: R22165"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22165", "姓名": "Candace Williams", "中介": "Ray", "国籍": "美国", "专业": "教育领导学", "资格证": "教师资格证", "教学经验": "16年", "目前所在地": "广州", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向职位": "管理岗", "性别": "女", "学历": "硕士", "更新日期": 1649289600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22165"
fi
sleep 0.3

# Record 165: R22166
echo "导入 165/669: R22166"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22166", "姓名": "Daniel Moss", "中介": "Nemo", "国籍": "英国", "专业": "古代历史", "资格证": "PGCE+QTS", "教学经验": "8年", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向职位": "高中、管理岗", "薪资期望": "30K税后", "性别": "男", "肤色": "白", "学历": "硕士", "更新日期": 1649289600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22166"
fi
sleep 0.3

# Record 166: R22167
echo "导入 166/669: R22167"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22167", "姓名": "Ivan Vukasovic", "中介": "Ray", "国籍": "塞尔维亚", "专业": "法律", "教学经验": "4年", "目前所在地": "深圳", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向职位": "幼儿园校长", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1649289600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22167"
fi
sleep 0.3

# Record 167: R22168
echo "导入 167/669: R22168"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22168", "姓名": "MARKO \nJOVANIĆ", "中介": "Ray", "国籍": "塞尔维亚", "专业": "体育教育学", "资格证": "TESOL", "教学经验": "7年", "目前所在地": "深圳", "上岗时间": "Aug.2022", "签证类型": "家属签证", "意向城市": "深圳", "意向职位": "体育", "薪资期望": "25-30K全包", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1649289600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22168"
fi
sleep 0.3

# Record 168: R22169
echo "导入 168/669: R22169"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22169", "姓名": "STEVE SEWARD", "中介": "Ray", "国籍": "英国", "专业": "教育领导学", "资格证": "TKT", "教学经验": "9年", "目前所在地": "深圳", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向职位": "幼儿园校长", "性别": "男", "肤色": "白", "学历": "硕士", "更新日期": 1649376000000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22169"
fi
sleep 0.3

# Record 169: R22170
echo "导入 169/669: R22170"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22170", "姓名": "Stefano J. Chin", "中介": "Ray", "国籍": "牙买加", "专业": "环境科学", "资格证": "TEFL", "教学经验": "7年", "目前所在地": "苏州", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向职位": "幼儿园、小学、初中", "薪资期望": "15-20税后", "性别": "男", "肤色": "黑", "学历": "本科", "更新日期": 1649376000000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22170"
fi
sleep 0.3

# Record 170: R22171
echo "导入 170/669: R22171"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22171", "姓名": "David Reimer", "中介": "Ray", "专业": "心理学、教育学", "资格证": "教师资格证", "教学经验": "8年", "目前所在地": "深圳", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向职位": "心理、数学、文学、历史、Homeroom", "性别": "男", "肤色": "白", "学历": "硕士", "更新日期": 1649462400000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22171"
fi
sleep 0.3

# Record 171: R22172
echo "导入 171/669: R22172"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22172", "姓名": "Luke F. Brumback", "中介": "Ray", "国籍": "美国", "专业": "辅修心理", "教学经验": "5年", "目前所在地": "北京", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向职位": "社会学、英语", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1677196800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22172"
fi
sleep 0.3

# Record 172: R22173
echo "导入 172/669: R22173"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22173", "姓名": "SHANICE SADHI", "中介": "Ray", "国籍": "牙买加", "资格证": "TEFL", "教学经验": "4年", "目前所在地": "深圳", "上岗时间": "ASAP", "签证类型": "工作签证", "意向职位": "幼儿园", "性别": "女", "肤色": "浅黑", "学历": "本科", "更新日期": 1649462400000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22173"
fi
sleep 0.3

# Record 173: R22174
echo "导入 173/669: R22174"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22174", "姓名": "(Kate) EKATERINA AKMANOVA", "中介": "Ray", "国籍": "俄罗斯", "专业": "英语教育学", "教学经验": "9年", "目前所在地": "汉中", "上岗时间": "ASAP", "签证类型": "工作签证", "意向职位": "幼儿园", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1649548800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22174"
fi
sleep 0.3

# Record 174: R22175
echo "导入 174/669: R22175"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22175", "姓名": "SEBASTIAN \nALEXANDER", "中介": "Ray", "专业": "音乐", "教学经验": "5年数学", "目前所在地": "深圳", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向职位": "数学", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1649548800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22175"
fi
sleep 0.3

# Record 175: R22176
echo "导入 175/669: R22176"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22176", "姓名": "Bart Mazur", "更新日期": 1649548800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22176"
fi
sleep 0.3

# Record 176: R22177
echo "导入 176/669: R22177"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22177", "姓名": "Ray Flores", "中介": "Sherry", "国籍": "美国", "专业": "亚洲研究", "资格证": "TEFL", "教学经验": "9年", "目前所在地": "深圳", "上岗时间": "ASAP", "签证类型": "工作签证", "意向职位": "幼儿园", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1649548800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22177"
fi
sleep 0.3

# Record 177: R22178
echo "导入 177/669: R22178"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22178", "姓名": "Julia", "中介": "Ray", "国籍": "澳大利亚", "跟进记录": "推车公庙培训中心", "性别": "女", "肤色": "亚裔", "更新日期": 1649548800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22178"
fi
sleep 0.3

# Record 178: R22179
echo "导入 178/669: R22179"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22179", "姓名": "Ian Wu", "中介": "Ray", "国籍": "加拿大", "跟进记录": "推车公庙培训中心", "性别": "男", "肤色": "亚裔", "更新日期": 1649548800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22179"
fi
sleep 0.3

# Record 179: R22180
echo "导入 179/669: R22180"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22180", "姓名": "CHRISTOPHER JACKSON", "中介": "Patrick-Lynne", "国籍": "美国", "性别": "男", "肤色": "白", "更新日期": 1649980800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22180"
fi
sleep 0.3

# Record 180: R22181
echo "导入 180/669: R22181"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22181", "姓名": "Kabel Moody(Rico)", "中介": "俄Dan", "国籍": "美国", "专业": "体育教育学", "教学经验": "5年", "目前所在地": "浙江金华", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "体育", "薪资期望": "25-30K全包", "性别": "男", "肤色": "黑", "学历": "本科", "更新日期": 1649980800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22181"
fi
sleep 0.3

# Record 181: R22182
echo "导入 181/669: R22182"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22182", "姓名": "Chabland Gabikini（Chaz)", "中介": "Ray", "国籍": "加拿大", "意向城市": "深圳", "意向职位": "体育", "性别": "男"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22182"
fi
sleep 0.3

# Record 182: R22183
echo "导入 182/669: R22183"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22183", "姓名": "Tina", "中介": "Byron", "国籍": "德国", "意向城市": "深圳", "意向职位": "舞蹈", "性别": "女", "肤色": "白", "更新日期": 1650412800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22183"
fi
sleep 0.3

# Record 183: R22184
echo "导入 183/669: R22184"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22184", "姓名": "Sian Redmond", "中介": "Ray", "国籍": "英国", "专业": "动物园生物学", "资格证": "TEFL", "教学经验": "5年", "目前所在地": "深圳", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向城市": "罗湖", "意向职位": "英语、科学、homeroom", "薪资期望": "24-30k.", "性别": "女", "肤色": "白", "学历": "博士", "更新日期": 1650412800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22184"
fi
sleep 0.3

# Record 184: R22185
echo "导入 184/669: R22185"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22185", "姓名": "Tracy N. Waugh", "中介": "Ray", "国籍": "牙买加", "专业": "社会学", "资格证": "CELTA", "教学经验": "2年", "意向职位": "英语、英语文学", "性别": "女", "肤色": "黑", "学历": "本科", "更新日期": 1650412800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22185"
fi
sleep 0.3

# Record 185: R22186
echo "导入 185/669: R22186"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22186", "姓名": "Amy", "中介": "Ray", "国籍": "埃塞俄比亚", "教学经验": "7年", "性别": "女", "肤色": "黑", "学历": "本科", "更新日期": 1650412800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22186"
fi
sleep 0.3

# Record 186: R22187
echo "导入 186/669: R22187"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22187", "姓名": "Craig Maguire", "中介": "Alessandra", "国籍": "英国", "专业": "旅游管理", "教学经验": "6年", "目前所在地": "上海", "意向职位": "英语、管理homeroom", "性别": "男", "学历": "本科", "更新日期": 1650412800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22187"
fi
sleep 0.3

# Record 187: R22188
echo "导入 187/669: R22188"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22188", "姓名": "Saber", "中介": "Alessandra", "国籍": "伊朗", "专业": "生物学", "资格证": "TEFL", "教学经验": "10年", "目前所在地": "杭州", "上岗时间": "Aug.2022", "性别": "男", "肤色": "白", "学历": "博士", "更新日期": 1650412800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22188"
fi
sleep 0.3

# Record 188: R22189
echo "导入 188/669: R22189"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22189", "姓名": "Leburu Boniswa  Baby", "中介": "Alessandra", "国籍": "南非", "性别": "女", "肤色": "黑", "更新日期": 1650412800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22189"
fi
sleep 0.3

# Record 189: R22190
echo "导入 189/669: R22190"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22190", "姓名": "Nicholas_Sukiennik", "中介": "Himo", "国籍": "美国", "专业": "计算机科学\n本科化学工程", "资格证": "TEFL", "目前所在地": "境外·美国", "上岗时间": "Aug.2022", "意向职位": "ESL", "性别": "男", "肤色": "白", "学历": "硕士", "更新日期": 1650412800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22190"
fi
sleep 0.3

# Record 190: R22191
echo "导入 190/669: R22191"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22191", "姓名": "Jacob Ketcher", "中介": "Himo", "国籍": "英国", "专业": "本科历史专业", "资格证": "TEFL", "教学经验": "5年", "目前所在地": "南昌", "上岗时间": "ASAP", "签证类型": "工作签证", "意向城市": "深圳，上海，北京，南昌，苏州", "意向职位": "高中国际学校ESL", "薪资期望": "30K", "性别": "男", "肤色": "白", "学历": "硕士", "更新日期": 1650412800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22191"
fi
sleep 0.3

# Record 191: R22192
echo "导入 191/669: R22192"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22192", "姓名": "Parahat Tajov", "中介": "Josie", "国籍": "土库曼斯坦", "专业": "物理教育学", "意向职位": "物理", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1650412800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22192"
fi
sleep 0.3

# Record 192: R22193
echo "导入 192/669: R22193"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22193", "姓名": "Jono", "中介": "Michael", "国籍": "澳大利亚", "性别": "男", "肤色": "白", "更新日期": 1650412800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22193"
fi
sleep 0.3

# Record 193: R22194
echo "导入 193/669: R22194"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22194", "姓名": "Isaac Smith", "中介": "Ray", "国籍": "澳大利亚", "专业": "国际商务", "资格证": "TEFL", "教学经验": "7年", "意向城市": "深圳罗湖", "意向职位": "ESL，homeroom", "薪资期望": "25-30K", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1651017600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22194"
fi
sleep 0.3

# Record 194: R22195
echo "导入 194/669: R22195"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22195", "姓名": "Kelin Song", "中介": "优才社郭", "国籍": "英国", "专业": "心理学", "资格证": "TEFL", "意向城市": "深圳", "意向职位": "ESL，homeroom", "薪资期望": "25K", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1651017600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22195"
fi
sleep 0.3

# Record 195: R22196
echo "导入 195/669: R22196"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22196", "姓名": "Klaus", "中介": "Ray", "国籍": "英国", "性别": "男", "肤色": "黑", "更新日期": 1651017600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22196"
fi
sleep 0.3

# Record 196: R22197
echo "导入 196/669: R22197"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22197", "姓名": "Mason", "中介": "Alessandra", "国籍": "摩洛哥", "专业": "摩洛哥", "性别": "男", "肤色": "白", "更新日期": 1652054400000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22197"
fi
sleep 0.3

# Record 197: R22198
echo "导入 197/669: R22198"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22198", "姓名": "Tony Melnick", "中介": "Ray", "国籍": "美国", "专业": "早教专业", "资格证": "TEFL", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1652054400000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22198"
fi
sleep 0.3

# Record 198: R22199
echo "导入 198/669: R22199"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22199", "姓名": "Anton", "中介": "Ray", "国籍": "英国", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1652140800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22199"
fi
sleep 0.3

# Record 199: R22200
echo "导入 199/669: R22200"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22200", "姓名": "Gaya", "中介": "Ray", "国籍": "亚美尼亚", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1652400000000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22200"
fi
sleep 0.3

# Record 200: R22201
echo "导入 200/669: R22201"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22201", "姓名": "Margarita Mchedlishvili", "中介": "Ray", "国籍": "俄罗斯", "专业": "教育学", "资格证": "iPGCE", "教学经验": "5年", "目前所在地": "深圳", "签证类型": "工作签证", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1653004800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22201"
fi
sleep 0.3

# Record 201: R22202
echo "导入 201/669: R22202"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22202", "姓名": "Lily", "中介": "Ray", "国籍": "墨西哥", "专业": "教育学", "教学经验": "15年", "性别": "女", "肤色": "棕", "学历": "本科", "更新日期": 1653004800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22202"
fi
sleep 0.3

# Record 202: R22203
echo "导入 202/669: R22203"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22203", "姓名": "Goran", "中介": "Richel", "国籍": "塞尔维亚", "性别": "男", "肤色": "白", "更新日期": 1653004800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22203"
fi
sleep 0.3

# Record 203: R22204
echo "导入 203/669: R22204"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22204", "姓名": "Tricia", "中介": "Zaidi", "国籍": "南非", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1653264000000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22204"
fi
sleep 0.3

# Record 204: R22205
echo "导入 204/669: R22205"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22205", "姓名": "Dylan Burgess", "中介": "优才社郭", "国籍": "英国", "专业": "心理学", "资格证": "TEFL", "教学经验": "7年", "目前所在地": "杭州", "签证类型": "工作签证", "意向城市": "杭州", "意向职位": "小学", "薪资期望": "26K", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1653264000000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22205"
fi
sleep 0.3

# Record 205: R22206
echo "导入 205/669: R22206"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22206", "姓名": "Matthew Mitchell", "中介": "Ray", "国籍": "美国", "资格证": "TEFL", "目前所在地": "境外·美国", "意向城市": "深圳", "薪资期望": "16-18", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1658880000000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22206"
fi
sleep 0.3

# Record 206: R22207
echo "导入 206/669: R22207"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22207", "姓名": "Nate C", "中介": "Himo", "国籍": "美国", "专业": "市场、经济", "教学经验": "10年+", "目前所在地": "境外·韩国", "上岗时间": "Nov.2022", "意向城市": "深圳", "意向职位": "幼儿园，小学，初中", "薪资期望": "25-30K", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1658966400000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22207"
fi
sleep 0.3

# Record 207: R22208
echo "导入 207/669: R22208"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22208", "姓名": "Richard Joseph Ko", "中介": "Ray", "国籍": "美国", "资格证": "TEFL", "目前所在地": "深圳", "意向城市": "深圳", "性别": "男", "肤色": "亚裔", "学历": "本科", "更新日期": 1658966400000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22208"
fi
sleep 0.3

# Record 208: R22209
echo "导入 208/669: R22209"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22209", "姓名": "Johnny Zaher", "中介": "Sherry", "国籍": "巴基斯坦", "性别": "男", "学历": "博士", "更新日期": 1660089600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22209"
fi
sleep 0.3

# Record 209: R22210
echo "导入 209/669: R22210"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22210", "姓名": "Neil Mcmillan", "中介": "优才社郭", "国籍": "英国", "资格证": "TEFL", "目前所在地": "深圳", "意向城市": "深圳", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1660089600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22210"
fi
sleep 0.3

# Record 210: R22211
echo "导入 210/669: R22211"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22211", "姓名": "ABD", "中介": "Ray", "国籍": "摩洛哥", "专业": "地理", "意向城市": "深圳", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1660089600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22211"
fi
sleep 0.3

# Record 211: R22212
echo "导入 211/669: R22212"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22212", "姓名": "Iso", "中介": "Ray", "国籍": "土耳其", "意向城市": "深圳", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1660089600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22212"
fi
sleep 0.3

# Record 212: R22213
echo "导入 212/669: R22213"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22213", "姓名": "Tatevik", "中介": "Ray", "国籍": "亚美尼亚", "意向城市": "深圳", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1660089600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22213"
fi
sleep 0.3

# Record 213: R22214
echo "导入 213/669: R22214"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22214", "姓名": "Emma", "中介": "Ray", "国籍": "南非", "性别": "女", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22214"
fi
sleep 0.3

# Record 214: R22215
echo "导入 214/669: R22215"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22215", "姓名": "Maria Hendriena Bresler", "中介": "Patrick-Lynne", "国籍": "南非", "目前所在地": "广州", "意向城市": "广州", "薪资期望": "税后25", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1660262400000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22215"
fi
sleep 0.3

# Record 215: R22216
echo "导入 215/669: R22216"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22216", "姓名": "Yanga Sontshi", "中介": "Himo", "国籍": "南非", "专业": "教育学", "教学经验": "8年", "目前所在地": "昆山", "薪资期望": "税后25", "性别": "女", "肤色": "浅黑", "学历": "本科", "更新日期": 1660262400000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22216"
fi
sleep 0.3

# Record 216: R22217
echo "导入 216/669: R22217"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22217", "姓名": "Petunia Khotle", "中介": "Himo", "国籍": "南非", "专业": "戏剧", "目前所在地": "境外·韩国", "薪资期望": "23-25K", "性别": "女", "肤色": "浅黑", "学历": "本科", "更新日期": 1660348800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22217"
fi
sleep 0.3

# Record 217: R22218
echo "导入 217/669: R22218"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22218", "姓名": "JOVAN\nDORDEVIC", "中介": "Helen", "国籍": "塞尔维亚", "专业": "地理", "目前所在地": "上海", "性别": "男", "肤色": "白", "学历": "硕士", "更新日期": 1660521600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22218"
fi
sleep 0.3

# Record 218: R22219
echo "导入 218/669: R22219"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22219", "姓名": "Donald Tabor", "中介": "Kseniya", "国籍": "英国", "教学经验": "4年", "目前所在地": "深圳", "意向城市": "龙华", "意向职位": "幼儿园", "薪资期望": "28+税后", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1660608000000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22219"
fi
sleep 0.3

# Record 219: R22220
echo "导入 219/669: R22220"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22220", "姓名": "Dr. Sarah", "中介": "Ray", "国籍": "坦桑尼亚", "目前所在地": "武汉", "性别": "女", "肤色": "浅黑", "学历": "博士"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22220"
fi
sleep 0.3

# Record 220: R22221
echo "导入 220/669: R22221"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22221", "姓名": "Michael MLADEN CAREVIĆ", "中介": "Ray", "国籍": "塞尔维亚", "专业": "教育学", "目前所在地": "深圳", "跟进记录": "2年副校长", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1660780800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22221"
fi
sleep 0.3

# Record 221: R22222
echo "导入 221/669: R22222"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22222", "姓名": "Jelena_Milosevic", "中介": "Ray", "国籍": "塞尔维亚", "专业": "体育", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1660780800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22222"
fi
sleep 0.3

# Record 222: R22223
echo "导入 222/669: R22223"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22223", "姓名": "Darko Cancar", "中介": "Ray", "国籍": "塞尔维亚", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1660780800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22223"
fi
sleep 0.3

# Record 223: R22224
echo "导入 223/669: R22224"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22224", "姓名": "Cara Wilson", "中介": "Himo", "国籍": "英国", "目前所在地": "境外·英国", "薪资期望": "20-25K", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1660780800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22224"
fi
sleep 0.3

# Record 224: R22225
echo "导入 224/669: R22225"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22225", "姓名": "David Bohlin", "中介": "Ray", "国籍": "瑞典", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1660780800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22225"
fi
sleep 0.3

# Record 225: R22226
echo "导入 225/669: R22226"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22226", "姓名": "Sandy Orozco", "中介": "Ray", "国籍": "美国", "目前所在地": "深圳", "薪资期望": "28-32税后", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1660867200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22226"
fi
sleep 0.3

# Record 226: R22227
echo "导入 226/669: R22227"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22227", "姓名": "Barnett Thomas", "中介": "优才社郭", "国籍": "英国", "目前所在地": "境外·英国", "薪资期望": "22-25k", "跟进记录": "已签别的", "性别": "男", "肤色": "白", "学历": "本科", "是否可转聘": "不可转聘", "更新日期": 1660867200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22227"
fi
sleep 0.3

# Record 227: R22228
echo "导入 227/669: R22228"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22228", "姓名": "Enoch Nimeson", "中介": "优才社郭", "国籍": "加纳", "专业": "BA经济", "目前所在地": "南京", "薪资期望": "25K+", "性别": "男", "肤色": "黑", "学历": "博士", "更新日期": 1660867200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22228"
fi
sleep 0.3

# Record 228: R22229
echo "导入 228/669: R22229"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22229", "姓名": "Julio Langford De Paula E Silva", "中介": "Himo", "国籍": "南非", "专业": "英语文学", "资格证": "TEFL", "目前所在地": "西安", "意向城市": "西安", "薪资期望": "24K+", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1660867200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22229"
fi
sleep 0.3

# Record 229: R22230
echo "导入 229/669: R22230"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22230", "姓名": "HINA ASIF", "中介": "优才社郭", "国籍": "巴基斯坦", "专业": "化学", "目前所在地": "北京", "薪资期望": "25-30K", "性别": "女", "肤色": "白", "学历": "博士", "更新日期": 1660867200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22230"
fi
sleep 0.3

# Record 230: R22231
echo "导入 230/669: R22231"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22231", "姓名": "Ntenga Sihle", "中介": "Alessandra", "国籍": "南非", "专业": "本科教育学", "教学经验": "7年", "性别": "女", "肤色": "浅黑", "学历": "硕士", "更新日期": 1661731200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22231"
fi
sleep 0.3

# Record 231: R22232
echo "导入 231/669: R22232"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22232", "姓名": "PERRY BRADSHAW", "中介": "Ray", "国籍": "英国", "专业": "商业研究", "资格证": "TEFL", "教学经验": "7年", "目前所在地": "境外·英国", "上岗时间": "Nov.2022", "意向城市": "深圳", "跟进记录": "在英国，9月中拿到美国学历，已面试SIE，无犯罪已有", "性别": "男", "肤色": "白", "学历": "本科", "是否可转聘": "不可转聘", "更新日期": 1661817600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22232"
fi
sleep 0.3

# Record 232: R22233
echo "导入 232/669: R22233"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22233", "姓名": "Julia Tsisin", "中介": "希为Richard", "国籍": "美国", "专业": "双语教育", "资格证": "TEFL", "目前所在地": "境外·美国", "性别": "女", "肤色": "白", "学历": "硕士", "是否可转聘": "不可转聘", "更新日期": 1661817600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22233"
fi
sleep 0.3

# Record 233: R22234
echo "导入 233/669: R22234"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22234", "姓名": "Refilwe Digoamaje", "中介": "Ray", "国籍": "南非", "专业": "商业管理", "教学经验": "无", "目前所在地": "境外·南非", "上岗时间": "Feb.2023", "跟进记录": "已加Skype，约李明星面试", "性别": "女", "肤色": "浅黑", "学历": "本科", "是否可转聘": "不可转聘", "更新日期": 1661817600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22234"
fi
sleep 0.3

# Record 234: R22235
echo "导入 234/669: R22235"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22235", "姓名": "Jasen Hines", "中介": "Ray", "国籍": "美国", "专业": "社会学", "资格证": "PET & KET", "教学经验": "8年", "目前所在地": "境外·日本", "上岗时间": "Nov.2022", "意向城市": "深圳", "意向职位": "托福、阅读、写作", "跟进记录": "已加微信，在日本，9月中拿到无犯罪记录，建议日本办理，学历未认证", "性别": "男", "肤色": "黑", "学历": "本科", "是否可转聘": "不可转聘", "更新日期": 1661817600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22235"
fi
sleep 0.3

# Record 235: R22236
echo "导入 235/669: R22236"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22236", "姓名": "Charlie Arnold", "中介": "Ray", "国籍": "美国", "专业": "刑事司法", "资格证": "TEFL", "教学经验": "无", "目前所在地": "境外·美国", "上岗时间": "Feb.2023", "意向城市": "深圳", "跟进记录": "skype联系了，在美国，估计明年才能来", "联系方式": "CharlieWarnold906@gmail.com", "性别": "男", "肤色": "白", "学历": "本科", "是否可转聘": "不可转聘", "更新日期": 1661817600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22236"
fi
sleep 0.3

# Record 236: R22237
echo "导入 236/669: R22237"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22237", "姓名": "Cornie van der Merwe", "中介": "Ray", "国籍": "南非", "专业": "法律", "资格证": "TEFL", "教学经验": "1年", "目前所在地": "境外·韩国", "上岗时间": "Apr.2023", "意向城市": "深圳", "意向职位": "幼儿园小学ESL", "薪资期望": "18-24税后+住宿", "跟进记录": "一对南非白，在韩国，明天3月合同结束来中国", "联系方式": "cornievandermerwe19@gmail.com", "性别": "女", "肤色": "白", "学历": "本科", "是否可转聘": "不可转聘", "更新日期": 1661817600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22237"
fi
sleep 0.3

# Record 237: R22238
echo "导入 237/669: R22238"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22238", "姓名": "Williem Hendrik Van  Reenen", "中介": "Ray", "国籍": "南非", "专业": "体育", "资格证": "PGCE 体育", "教学经验": "2年", "目前所在地": "境外·韩国", "上岗时间": "Apr.2023", "意向城市": "深圳", "意向职位": "体育 G4-G12", "薪资期望": "23-28税后+住宿", "跟进记录": "一对南非白，在韩国，明天3月合同结束来中国", "联系方式": "dirkaplex@gmail.com", "性别": "男", "肤色": "白", "学历": "本科", "是否可转聘": "不可转聘", "更新日期": 1661817600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22238"
fi
sleep 0.3

# Record 238: R22239
echo "导入 238/669: R22239"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22239", "姓名": "THOMAS A MARAIS", "中介": "Ray", "国籍": "南非", "专业": "Humanities", "资格证": "TEFL", "目前所在地": "境外·韩国", "上岗时间": "Feb.2023", "跟进记录": "约Skpye聊", "联系方式": "mynameisteachertom@gmail.com", "性别": "男", "学历": "本科", "是否可转聘": "不可转聘", "更新日期": 1661817600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22239"
fi
sleep 0.3

# Record 239: R22240
echo "导入 239/669: R22240"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22240", "姓名": "Michaela Jones", "中介": "Ray", "国籍": "美国", "专业": "综合研究", "资格证": "ESL", "教学经验": "无", "目前所在地": "境外·美国", "上岗时间": "Feb.2023", "意向城市": "深圳，苏州、成都、北京", "意向职位": "K1-G3 英语", "跟进记录": "22年8月毕业，在美国\n约Skpye聊", "联系方式": "Jonesrmichaela@gmail.com", "性别": "女", "肤色": "浅黑", "学历": "本科", "是否可转聘": "不可转聘", "更新日期": 1661817600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22240"
fi
sleep 0.3

# Record 240: R22241
echo "导入 240/669: R22241"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22241", "姓名": "Ongeziwe Dodo", "中介": "Ray", "国籍": "南非", "专业": "心理学", "目前所在地": "境外·南非", "上岗时间": "Feb.2023", "跟进记录": "约Skype聊", "联系方式": "ongeziweaadodo@gmail.com", "性别": "女", "肤色": "黑", "学历": "本科", "是否可转聘": "不可转聘", "更新日期": 1661817600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22241"
fi
sleep 0.3

# Record 241: R22242
echo "导入 241/669: R22242"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22242", "姓名": "MOJABENG CLAIRE MABATHOANA", "中介": "Ray", "国籍": "南非", "专业": "环境科学", "资格证": "TEFL", "教学经验": "1年", "目前所在地": "境外·南非", "上岗时间": "Nov.2022", "意向城市": "深圳、杭州、武汉", "意向职位": "幼儿园小学ESL", "薪资期望": "15税前+3K住宿", "联系方式": "mc.mabathoana@gmail.com", "性别": "女", "肤色": "浅黑", "学历": "本科", "是否可转聘": "不可转聘", "更新日期": 1661817600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22242"
fi
sleep 0.3

# Record 242: R22243
echo "导入 242/669: R22243"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22243", "姓名": "PHADIMA OBED THOBEJANE", "中介": "Ray", "国籍": "南非", "专业": "数学与统计", "教学经验": "5年", "目前所在地": "境外·南非", "上岗时间": "Feb.2023", "意向职位": "数学", "性别": "男", "肤色": "黑", "学历": "本科", "是否可转聘": "不可转聘", "更新日期": 1661904000000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22243"
fi
sleep 0.3

# Record 243: R22244
echo "导入 243/669: R22244"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22244", "姓名": "Clinton Mthembu", "中介": "Ray", "国籍": "南非", "专业": "会计", "资格证": "TEFL", "教学经验": "无", "目前所在地": "境外·南非", "上岗时间": "Feb.2023", "意向城市": "北京、上海", "意向职位": "幼儿园小学ESL", "薪资期望": "14K+住宿补贴", "联系方式": "lclintonmthokozisi7@gmail.com\nive:clintonmthokozisi7", "性别": "男", "肤色": "黑", "学历": "本科", "是否可转聘": "不可转聘", "更新日期": 1661904000000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22244"
fi
sleep 0.3

# Record 244: R22245
echo "导入 244/669: R22245"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22245", "姓名": "Thomas Jong", "中介": "优才社郭", "国籍": "英国", "专业": "生物学", "资格证": "TEFL", "教学经验": "3年", "目前所在地": "境外·德国", "上岗时间": "Nov.2022", "意向城市": "不限", "意向职位": "幼儿园小学初中英语生物", "薪资期望": "20-27K", "跟进记录": "已签其他", "性别": "男", "肤色": "白", "学历": "硕士", "是否可转聘": "不可转聘", "更新日期": 1661904000000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22245"
fi
sleep 0.3

# Record 245: R22246
echo "导入 245/669: R22246"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22246", "姓名": "Mark McGil", "中介": "优才社郭", "国籍": "美国", "专业": "教育学，本科化学", "资格证": "化学教学资格证", "教学经验": "10年以上", "目前所在地": "境外·美国", "上岗时间": "Nov.2022", "意向城市": "不限", "意向职位": "初高中数学科学化学", "薪资期望": "26K", "跟进记录": "SIE已发合同", "性别": "男", "肤色": "白", "学历": "硕士", "是否可转聘": "不可转聘", "更新日期": 1661904000000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22246"
fi
sleep 0.3

# Record 246: R22247
echo "导入 246/669: R22247"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22247", "姓名": "Nangamso Bandezi", "中介": "Ray", "国籍": "南非", "专业": "教育学-经济与数学", "资格证": "教学资格证", "教学经验": "5年", "目前所在地": "台湾", "上岗时间": "Oct.2022", "意向城市": "不限", "意向职位": "小学、初中", "薪资期望": "22税后+住宿", "性别": "女", "肤色": "黑", "学历": "本科", "是否可转聘": "不可转聘", "更新日期": 1661904000000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22247"
fi
sleep 0.3

# Record 247: R22248
echo "导入 247/669: R22248"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22248", "姓名": "Kenny Ko", "中介": "Ray", "国籍": "美国", "资格证": "TEFL", "目前所在地": "深圳", "上岗时间": "Sep.2022", "性别": "男", "肤色": "亚裔", "学历": "本科", "是否可转聘": "不可转聘", "更新日期": 1661904000000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22248"
fi
sleep 0.3

# Record 248: R22249
echo "导入 248/669: R22249"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22249", "姓名": "Grantham Watts", "中介": "Ray", "国籍": "美国", "意向城市": "不限", "意向职位": "高中", "薪资期望": "40K左右或小城市不坐班20K", "性别": "男", "肤色": "白", "更新日期": 1662076800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22249"
fi
sleep 0.3

# Record 249: R22250
echo "导入 249/669: R22250"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22250", "姓名": "Robyn Michaela George", "中介": "Alessandra", "国籍": "南非", "专业": "管理学", "资格证": "TEFL", "教学经验": "4年", "目前所在地": "广州", "上岗时间": "Sep.2022", "意向职位": "幼儿园", "薪资期望": "26000", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1662076800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22250"
fi
sleep 0.3

# Record 250: R22251
echo "导入 250/669: R22251"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22251", "姓名": "Ola Fraser", "中介": "Ray", "国籍": "英国", "专业": "金融与会计", "资格证": "TEFL", "教学经验": "4年", "目前所在地": "境外·英国", "上岗时间": "Feb.2023", "意向城市": "深圳", "意向职位": "初中", "薪资期望": "12K以上+住宿", "性别": "女", "肤色": "黑", "学历": "本科", "是否可转聘": "不可转聘", "更新日期": 1662336000000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22251"
fi
sleep 0.3

# Record 251: R22252
echo "导入 251/669: R22252"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22252", "姓名": "Shane Fraser", "中介": "Ray", "国籍": "英国", "专业": "国际关系与语言", "资格证": "TEFL", "教学经验": "2年", "目前所在地": "境外·英国", "上岗时间": "Feb.2023", "意向城市": "深圳", "意向职位": "初中、高中", "薪资期望": "12K以上+住宿", "性别": "男", "肤色": "黑", "学历": "本科", "是否可转聘": "不可转聘", "更新日期": 1662336000000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22252"
fi
sleep 0.3

# Record 252: R22253
echo "导入 252/669: R22253"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22253", "姓名": "Edrick", "中介": "EF-Paul", "国籍": "美国", "专业": "商业管理", "资格证": "无", "教学经验": "2年", "目前所在地": "香港", "上岗时间": "Oct.2022", "意向城市": "深圳", "意向职位": "幼儿园小学ESL", "薪资期望": "18左右", "性别": "男", "肤色": "亚裔", "学历": "本科", "是否可转聘": "不可转聘", "更新日期": 1662595200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22253"
fi
sleep 0.3

# Record 253: R22254
echo "导入 253/669: R22254"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22254", "姓名": "Thando Patrick Mdingi", "中介": "Ray", "国籍": "南非", "专业": "商务英语", "资格证": "CELTA", "教学经验": "8年", "目前所在地": "境外·沙特", "上岗时间": "Feb.2023", "意向城市": "深圳、广州、上海", "意向职位": "初中、高中、大学", "薪资期望": "20K税后+住宿", "跟进记录": "他老婆Jabu一起来", "性别": "男", "肤色": "黑", "学历": "硕士", "是否可转聘": "不可转聘", "更新日期": 1663027200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22254"
fi
sleep 0.3

# Record 254: R22255
echo "导入 254/669: R22255"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22255", "姓名": "Ervinas Sventickis", "中介": "Alessandra", "国籍": "立陶宛", "专业": "英语、西语", "资格证": "TEFL", "教学经验": "4年", "目前所在地": "深圳", "上岗时间": "Sep.2022", "签证类型": "工作签证", "意向城市": "不限", "意向职位": "幼儿园小学ESL", "薪资期望": "15税前+3K住宿", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1663027200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22255"
fi
sleep 0.3

# Record 255: R22256
echo "导入 255/669: R22256"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22256", "姓名": "Shivani  Chetty", "中介": "Ray", "国籍": "南非", "专业": "心理学", "资格证": "TEFL", "教学经验": "6年", "目前所在地": "境外·韩国", "上岗时间": "Feb.2023", "意向城市": "深圳、广州、上海", "意向职位": "幼儿园", "薪资期望": "28+税后", "跟进记录": "269号姐姐", "性别": "女", "肤色": "浅黑", "学历": "本科", "是否可转聘": "不可转聘", "更新日期": 1663113600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22256"
fi
sleep 0.3

# Record 256: R22257
echo "导入 256/669: R22257"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22257", "姓名": "Johannes Venter", "中介": "Ray", "国籍": "南非", "专业": "TESOL", "资格证": "TEFL", "教学经验": "10年", "目前所在地": "境外·泰国", "上岗时间": "ASAP", "意向城市": "不限", "意向职位": "小学、初中、高中", "薪资期望": "20K+住宿", "性别": "男", "肤色": "白", "学历": "本科", "是否可转聘": "不可转聘", "更新日期": 1663113600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22257"
fi
sleep 0.3

# Record 257: R22258
echo "导入 257/669: R22258"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22258", "姓名": "Chuck Wu", "中介": "Ray", "国籍": "加拿大", "专业": "教育学", "资格证": "数学教学资格证", "教学经验": "14年", "目前所在地": "深圳", "上岗时间": "ASAP", "签证类型": "家属签证", "意向城市": "深圳、广州、东莞", "意向职位": "小学、初中、高中", "薪资期望": "28+住宿 可谈", "性别": "男", "肤色": "亚裔", "学历": "硕士", "是否可转聘": "不可转聘", "更新日期": 1663113600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22258"
fi
sleep 0.3

# Record 258: R22259
echo "导入 258/669: R22259"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22259", "姓名": "Edric T. Ha", "中介": "中介Alex", "国籍": "美国", "专业": "数学教育", "资格证": "教师资格证", "教学经验": "10年+", "目前所在地": "南京", "上岗时间": "ASAP", "签证类型": "工作签证", "意向城市": "深圳、广州、上海", "意向职位": "代数、几何、微积分", "薪资期望": "30+住宿 可谈", "性别": "男", "肤色": "亚裔", "学历": "博士", "是否可转聘": "可转聘", "更新日期": 1663286400000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22259"
fi
sleep 0.3

# Record 259: R22260
echo "导入 259/669: R22260"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22260", "姓名": "Stephen Wharton", "中介": "Ray", "国籍": "英国", "专业": "表演艺术", "资格证": "TEFL/EYTS", "教学经验": "3年", "目前所在地": "境外·英国", "上岗时间": "Nov.2022", "意向城市": "深圳", "意向职位": "幼儿园", "薪资期望": "25-30K", "性别": "男", "肤色": "白", "学历": "本科", "是否可转聘": "不可转聘", "更新日期": 1663286400000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22260"
fi
sleep 0.3

# Record 260: R22261
echo "导入 260/669: R22261"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22261", "姓名": "Clarie Nellis", "中介": "Ray", "国籍": "英国", "专业": "国际关系/本科地理", "资格证": "PGCE+QTS", "教学经验": "4年", "目前所在地": "境外·英国", "上岗时间": "Feb.2023", "意向城市": "深圳", "意向职位": "地理、人文、英语", "薪资期望": "25-30K，小孩上一年级", "性别": "女", "肤色": "白", "学历": "硕士", "是否可转聘": "不可转聘", "更新日期": 1663286400000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22261"
fi
sleep 0.3

# Record 261: R22262
echo "导入 261/669: R22262"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22262", "姓名": "Cameron Cross", "中介": "Ray", "国籍": "澳大利亚", "专业": "设计", "资格证": "TEFL", "教学经验": "7年", "目前所在地": "境外·澳大利亚", "上岗时间": "Feb.2023", "意向城市": "南方城市", "意向职位": "ESL、艺术", "薪资期望": "27税后+住宿+假期全薪", "性别": "男", "肤色": "白", "学历": "本科", "是否可转聘": "不可转聘", "更新日期": 1663718400000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22262"
fi
sleep 0.3

# Record 262: R22263
echo "导入 262/669: R22263"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22263", "姓名": "Bashir Moulvi", "中介": "Ray", "国籍": "南非", "专业": "商业", "资格证": "TEFL", "教学经验": "无", "目前所在地": "境外·南非", "上岗时间": "Nov.2022", "意向城市": "深圳", "意向职位": "幼、小、初、高", "性别": "男", "肤色": "白", "学历": "本科", "是否可转聘": "不可转聘", "更新日期": 1663718400000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22263"
fi
sleep 0.3

# Record 263: R22264
echo "导入 263/669: R22264"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22264", "姓名": "Victor Maneilly", "中介": "Ray", "国籍": "美国", "专业": "教育学", "资格证": "教师资格证", "教学经验": "20年", "目前所在地": "境外·美国", "上岗时间": "Feb.2023", "意向城市": "不限", "意向职位": "小、初、高", "联系方式": "微信", "性别": "男", "肤色": "白", "学历": "硕士", "是否可转聘": "不可转聘", "更新日期": 1663718400000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22264"
fi
sleep 0.3

# Record 264: R22265
echo "导入 264/669: R22265"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22265", "姓名": "Daniel Joseph Stone", "中介": "Zaidi", "国籍": "美国", "专业": "教育学", "资格证": "TEFL", "教学经验": "5年", "目前所在地": "境外·菲律宾", "上岗时间": "Nov.2022", "意向城市": "不限", "意向职位": "幼儿园、培训中心", "薪资期望": "23K", "性别": "男", "肤色": "白", "学历": "本科", "是否可转聘": "不可转聘", "更新日期": 1663804800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22265"
fi
sleep 0.3

# Record 265: R22266
echo "导入 265/669: R22266"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22266", "姓名": "Jabulile Mpambane", "中介": "Ray", "国籍": "南非", "专业": "公共管理", "资格证": "TEFL", "教学经验": "5年", "目前所在地": "境外·沙特", "上岗时间": "Feb.2023", "意向城市": "深圳、广州、上海", "意向职位": "初中、高中、大学", "薪资期望": "20K税后+住宿", "跟进记录": "他老公Tando一起来,", "联系方式": "微信", "肤色": "黑", "学历": "硕士", "是否可转聘": "不可转聘", "更新日期": 1663804800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22266"
fi
sleep 0.3

# Record 266: R22267
echo "导入 266/669: R22267"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22267", "姓名": "Sarah Franey", "中介": "Ray", "国籍": "英国", "专业": "电脑游戏设计", "资格证": "PGCE+QTS 艺术、设计", "教学经验": "6年", "目前所在地": "境外·英国", "上岗时间": "Oct.2022", "签证类型": "工作签证", "意向城市": "不限", "意向职位": "初中、高中、大学-艺术、设计、ESL", "薪资期望": "30-35K", "性别": "女", "肤色": "白", "学历": "本科", "是否可转聘": "不可转聘", "更新日期": 1663804800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22267"
fi
sleep 0.3

# Record 267: R22268
echo "导入 267/669: R22268"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22268", "姓名": "Nathan Myers", "中介": "Ray", "国籍": "英国", "专业": "表演", "资格证": "IB证书, 教育学证书", "教学经验": "7年", "目前所在地": "境外·英国", "上岗时间": "Oct.2022", "签证类型": "工作签证", "意向城市": "不限", "意向职位": "小初高-戏剧、英语", "薪资期望": "30-35K", "性别": "男", "肤色": "白", "学历": "本科", "是否可转聘": "不可转聘", "更新日期": 1663891200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22268"
fi
sleep 0.3

# Record 268: R22269
echo "导入 268/669: R22269"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22269", "姓名": "Ashlin Chetty", "中介": "Ray", "国籍": "南非", "专业": "会计", "资格证": "TEFL", "教学经验": "4年", "目前所在地": "境外·韩国", "上岗时间": "Feb.2023", "意向城市": "深圳、广州、上海", "意向职位": "幼儿园", "薪资期望": "28+税后", "跟进记录": "256号妹妹", "性别": "女", "肤色": "浅黑", "学历": "本科", "是否可转聘": "不可转聘", "更新日期": 1663891200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22269"
fi
sleep 0.3

# Record 269: R22270
echo "导入 269/669: R22270"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22270", "姓名": "ZARIN CHOWDHURY", "中介": "Ray", "国籍": "加拿大", "专业": "教育学，本科英语", "教学经验": "5年", "目前所在地": "境外·泰国", "跟进记录": "约skype还没约上", "性别": "女", "学历": "硕士", "是否可转聘": "不可转聘", "更新日期": 1663891200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22270"
fi
sleep 0.3

# Record 270: R22271
echo "导入 270/669: R22271"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22271", "姓名": "Dmytro Mylokostov(Dima)", "中介": "Ray", "国籍": "乌克兰", "专业": "翻译与英语教育", "资格证": "TESOL", "教学经验": "11年", "目前所在地": "杭州", "上岗时间": "Nov.2022", "签证类型": "工作签证", "意向城市": "浙江", "意向职位": "幼、小、初", "薪资期望": "25-30K", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1664064000000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22271"
fi
sleep 0.3

# Record 271: R22272
echo "导入 271/669: R22272"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22272", "姓名": "Dan Baird", "中介": "Ray", "国籍": "加拿大", "跟进记录": "金生幼儿园的", "性别": "男", "肤色": "白", "更新日期": 1664064000000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22272"
fi
sleep 0.3

# Record 272: R22273
echo "导入 272/669: R22273"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22273", "姓名": "Bongiwe Pakkies", "中介": "Ray", "国籍": "南非", "专业": "社会科学", "资格证": "PGCE", "性别": "女", "肤色": "黑", "学历": "硕士", "更新日期": 1664064000000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22273"
fi
sleep 0.3

# Record 273: R22274
echo "导入 273/669: R22274"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22274", "姓名": "Ruan Van Staalduinen", "中介": "Ray", "国籍": "南非", "专业": "心理学，经济与商业教育学在读", "资格证": "TESOL", "教学经验": "4年", "目前所在地": "境外·南非", "上岗时间": "Feb.2023", "意向城市": "不限", "意向职位": "初高中--文学、辩论、地理、历史、英语", "性别": "男", "肤色": "白", "学历": "本科", "是否可转聘": "不可转聘", "更新日期": 1664064000000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22274"
fi
sleep 0.3

# Record 274: R22275
echo "导入 274/669: R22275"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22275", "姓名": "Magda Bell", "中介": "Ray", "国籍": "南非", "专业": "高等教育", "目前所在地": "境外·南非", "上岗时间": "Feb.2023", "意向城市": "不限", "意向职位": "幼儿园、小学", "性别": "女", "肤色": "白", "学历": "本科", "是否可转聘": "不可转聘", "更新日期": 1664064000000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22275"
fi
sleep 0.3

# Record 275: R22276
echo "导入 275/669: R22276"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22276", "姓名": "Nomvuzo Khanyile", "中介": "Ray", "国籍": "南非", "专业": "心理学", "资格证": "PGCE", "教学经验": "1年", "目前所在地": "境外·南非", "上岗时间": "Feb.2023", "意向城市": "不限", "意向职位": "幼儿园、小学", "性别": "女", "肤色": "黑", "学历": "本科", "是否可转聘": "不可转聘", "更新日期": 1664064000000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22276"
fi
sleep 0.3

# Record 276: R22277
echo "导入 276/669: R22277"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22277", "姓名": "Christina Van Der Watt", "中介": "Ray", "国籍": "南非", "专业": "发展研究", "资格证": "PGCE", "教学经验": "3年", "目前所在地": "境外·南非", "上岗时间": "Feb.2023", "意向城市": "不限", "性别": "女", "肤色": "白", "学历": "本科", "是否可转聘": "不可转聘", "更新日期": 1664064000000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22277"
fi
sleep 0.3

# Record 277: R22278
echo "导入 277/669: R22278"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22278", "姓名": "Luleka Ngoboza", "中介": "Ray", "国籍": "南非", "专业": "人口研究", "资格证": "PGCE", "教学经验": "7年", "目前所在地": "境外·南非", "上岗时间": "Feb.2023", "意向城市": "不限", "性别": "女", "肤色": "黑", "学历": "本科", "是否可转聘": "不可转聘", "更新日期": 1664064000000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22278"
fi
sleep 0.3

# Record 278: R22279
echo "导入 278/669: R22279"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22279", "姓名": "Gerald Gary", "中介": "Ray", "国籍": "美国", "专业": "商业", "资格证": "TEFL", "教学经验": "5年", "目前所在地": "境外·沙特", "上岗时间": "Feb.2023", "意向城市": "不限", "意向职位": "高中、大学", "联系方式": "graygerald98@gmail.com", "性别": "男", "肤色": "黑", "学历": "硕士", "是否可转聘": "不可转聘", "更新日期": 1664064000000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22279"
fi
sleep 0.3

# Record 279: R22280
echo "导入 279/669: R22280"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22280", "姓名": "Euleen Patricia Henry", "中介": "Ray", "国籍": "南非", "专业": "心理学", "教学经验": "5年", "目前所在地": "境外·南非", "上岗时间": "Feb.2023", "意向城市": "不限", "性别": "女", "肤色": "黑", "学历": "本科", "是否可转聘": "不可转聘", "更新日期": 1664064000000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22280"
fi
sleep 0.3

# Record 280: R22281
echo "导入 280/669: R22281"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22281", "姓名": "Malcolm Wesley Wrest", "中介": "Ray", "国籍": "澳大利亚", "专业": "应用语言学", "资格证": "TESOL", "教学经验": "14年", "目前所在地": "境外·澳大利亚", "上岗时间": "Nov.2022", "意向城市": "不限", "意向职位": "小、初", "性别": "男", "肤色": "白", "学历": "硕士", "是否可转聘": "不可转聘", "更新日期": 1664064000000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22281"
fi
sleep 0.3

# Record 281: R22282
echo "导入 281/669: R22282"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22282", "姓名": "Garth Muller", "中介": "Ray", "国籍": "南非", "资格证": "TEFL", "教学经验": "14年", "目前所在地": "境外·南非", "上岗时间": "Nov.2022", "意向城市": "不限", "意向职位": "初高中", "性别": "男", "肤色": "白", "学历": "本科", "是否可转聘": "不可转聘", "更新日期": 1664064000000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22282"
fi
sleep 0.3

# Record 282: R22283
echo "导入 282/669: R22283"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22283", "姓名": "Sinethemba Tamy Vetshilo", "中介": "Ray", "国籍": "南非", "专业": "小学教育", "资格证": "无", "教学经验": "11年", "目前所在地": "境外·南非", "上岗时间": "Feb.2023", "意向城市": "不限", "意向职位": "小学", "性别": "男", "肤色": "黑", "学历": "本科", "是否可转聘": "不可转聘", "更新日期": 1664064000000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22283"
fi
sleep 0.3

# Record 283: R22284
echo "导入 283/669: R22284"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22284", "姓名": "Kamel Habachi", "中介": "Ray", "国籍": "澳大利亚", "性别": "男", "肤色": "白", "更新日期": 1664150400000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22284"
fi
sleep 0.3

# Record 284: R22285
echo "导入 284/669: R22285"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22285", "姓名": "Arman Tommy Gharechaie", "中介": "Ray", "国籍": "瑞典", "专业": "教育学", "资格证": "TKT", "教学经验": "4年", "目前所在地": "上海", "上岗时间": "ASAP", "意向城市": "上海", "意向职位": "小、初、高", "性别": "男", "肤色": "白", "学历": "硕士", "是否可转聘": "可转聘", "更新日期": 1664150400000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22285"
fi
sleep 0.3

# Record 285: R22286
echo "导入 285/669: R22286"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22286", "姓名": "Ben Brown", "中介": "Ray", "国籍": "英国", "性别": "男", "肤色": "白", "更新日期": 1664150400000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22286"
fi
sleep 0.3

# Record 286: R22287
echo "导入 286/669: R22287"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22287", "姓名": "ALEKSANDAR KITANOVIC", "中介": "Ray", "国籍": "塞尔维亚", "意向职位": "经济", "性别": "男", "肤色": "白", "更新日期": 1664150400000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22287"
fi
sleep 0.3

# Record 287: R22288
echo "导入 287/669: R22288"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22288", "姓名": "Ilona Baghdasarian", "中介": "Ray", "国籍": "美国", "专业": "犯罪学", "资格证": "TEFL", "教学经验": "2年", "目前所在地": "境外·台湾", "上岗时间": "Feb.2023", "意向城市": "深圳", "意向职位": "小学", "性别": "女", "肤色": "白", "学历": "本科", "是否可转聘": "不可转聘", "更新日期": 1664150400000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22288"
fi
sleep 0.3

# Record 288: R22289
echo "导入 288/669: R22289"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22289", "姓名": "Naprasha Balram", "中介": "Ray", "国籍": "南非", "专业": "生物科学", "资格证": "PGCE，教师资格证", "教学经验": "8年", "目前所在地": "境外·南非", "上岗时间": "Feb.2023", "意向城市": "深圳", "意向职位": "初高中英语文学/生物/数学/自然科学", "性别": "女", "肤色": "白", "学历": "本科", "是否可转聘": "不可转聘", "更新日期": 1664150400000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22289"
fi
sleep 0.3

# Record 289: R22290
echo "导入 289/669: R22290"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22290", "姓名": "Kyle C Loganathan", "中介": "Ray", "国籍": "南非", "专业": "运动科学", "资格证": "TEFL", "教学经验": "无", "目前所在地": "境外·南非", "上岗时间": "Feb.2023", "意向城市": "深圳", "意向职位": "小学", "性别": "男", "肤色": "黑", "学历": "本科", "是否可转聘": "不可转聘", "更新日期": 1664150400000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22290"
fi
sleep 0.3

# Record 290: R22291
echo "导入 290/669: R22291"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22291", "姓名": "Kari SAKARI S. NICHOLS", "中介": "Ruby", "国籍": "美国", "目前所在地": "深圳", "上岗时间": "ASAP", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "幼儿园、小学", "性别": "女", "肤色": "黑", "学历": "本科", "是否可转聘": "可转聘", "更新日期": 1664150400000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22291"
fi
sleep 0.3

# Record 291: R22292
echo "导入 291/669: R22292"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22292", "姓名": "Osama Qureshi", "中介": "Ray", "国籍": "加拿大", "专业": "经济学", "资格证": "TEFL", "教学经验": "1年", "目前所在地": "境外·加拿大", "上岗时间": "Feb.2023", "意向城市": "深圳", "意向职位": "小、初、高", "性别": "男", "肤色": "白", "学历": "本科", "是否可转聘": "不可转聘", "更新日期": 1664150400000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22292"
fi
sleep 0.3

# Record 292: R22293
echo "导入 292/669: R22293"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22293", "姓名": "Lizette Botha", "中介": "Ray", "国籍": "南非", "专业": "商业管理", "资格证": "TEFL", "教学经验": "2年", "目前所在地": "境外·南非", "上岗时间": "Feb.2023", "意向城市": "深圳", "意向职位": "小、初、高", "性别": "女", "肤色": "白", "学历": "本科", "是否可转聘": "不可转聘", "更新日期": 1664150400000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22293"
fi
sleep 0.3

# Record 293: R22294
echo "导入 293/669: R22294"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22294", "姓名": "Shaun Africa", "中介": "Ray", "国籍": "南非", "专业": "心理、英语", "资格证": "PGCE", "教学经验": "20年", "目前所在地": "境外·南非", "上岗时间": "Feb.2023", "意向城市": "深圳", "意向职位": "小、初、高", "跟进记录": "熟悉UK课程,IGCSE", "联系方式": "Skype Id: chantie001", "性别": "男", "肤色": "棕", "学历": "本科", "是否可转聘": "不可转聘", "更新日期": 1664150400000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22294"
fi
sleep 0.3

# Record 294: R22295
echo "导入 294/669: R22295"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22295", "姓名": "Philip Higgs", "中介": "Ray", "国籍": "英国", "资格证": "TEFL", "目前所在地": "深圳", "上岗时间": "ASAP", "意向城市": "深圳", "性别": "男", "肤色": "白", "是否可转聘": "可转聘", "更新日期": 1664409600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22295"
fi
sleep 0.3

# Record 295: R22296
echo "导入 295/669: R22296"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22296", "姓名": "Steve Hennes", "中介": "Ray", "国籍": "英国", "资格证": "TEFL", "目前所在地": "深圳", "上岗时间": "ASAP", "意向城市": "深圳", "性别": "男", "肤色": "白", "是否可转聘": "可转聘", "更新日期": 1664409600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22296"
fi
sleep 0.3

# Record 296: R22297
echo "导入 296/669: R22297"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22297", "姓名": "Carline Victorin", "中介": "Ray", "国籍": "美国", "专业": "犯罪学", "资格证": "TEFL", "教学经验": "4年", "目前所在地": "深圳", "上岗时间": "ASAP", "意向城市": "深圳", "联系方式": "weixin TokyoChina", "性别": "女", "肤色": "黑", "学历": "本科", "更新日期": 1664409600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22297"
fi
sleep 0.3

# Record 297: R22298
echo "导入 297/669: R22298"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22298", "姓名": "Lindo Mchunu", "中介": "Ray", "国籍": "南非", "专业": "地理与环境学", "资格证": "PGCE", "教学经验": "4年", "目前所在地": "境外·南非", "上岗时间": "Feb.2023", "意向城市": "深圳", "联系方式": "weixin", "性别": "男", "肤色": "白", "学历": "本科", "是否可转聘": "不可转聘", "更新日期": 1664496000000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22298"
fi
sleep 0.3

# Record 298: R22299
echo "导入 298/669: R22299"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22299", "姓名": "Maria Margo", "中介": "海丽达林老师", "国籍": "俄罗斯", "专业": "英语教育", "教学经验": "10年", "目前所在地": "深圳", "上岗时间": "ASAP", "意向城市": "深圳", "意向职位": "幼儿园", "性别": "女", "肤色": "白", "学历": "硕士", "是否可转聘": "可转聘", "年龄": 33.0, "更新日期": 1665532800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22299"
fi
sleep 0.3

# Record 299: R22300
echo "导入 299/669: R22300"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22300", "姓名": "Lana", "中介": "海丽达林老师", "国籍": "加拿大", "专业": "国际关系", "资格证": "TEFL", "教学经验": "5年", "目前所在地": "惠州", "上岗时间": "ASAP", "意向城市": "惠州", "性别": "女", "肤色": "白", "学历": "硕士", "更新日期": 1665532800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22300"
fi
sleep 0.3

# Record 300: R22301
echo "导入 300/669: R22301"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22301", "姓名": "ALAAELDIN 阿拉丁", "中介": "Ray", "国籍": "埃及", "专业": "本科物理", "目前所在地": "深圳", "上岗时间": "Feb.2023", "性别": "男", "肤色": "浅黑", "学历": "硕士", "是否可转聘": "可转聘", "年龄": 52.0, "更新日期": 1665532800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22301"
fi
sleep 0.3

# Record 301: R22302
echo "导入 301/669: R22302"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22302", "姓名": "Rupert Watson", "中介": "Ray", "国籍": "美国", "专业": "社会学", "资格证": "TEFL", "教学经验": "6年", "目前所在地": "深圳", "上岗时间": "ASAP", "签证类型": "停留签证", "意向城市": "深圳", "性别": "男", "肤色": "黑", "学历": "本科", "更新日期": 1665532800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22302"
fi
sleep 0.3

# Record 302: R22303
echo "导入 302/669: R22303"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22303", "姓名": "Phoenix Robinson", "中介": "Ray", "国籍": "巴哈马", "专业": "电子信息与通信工程", "目前所在地": "北京", "意向城市": "深圳", "意向职位": "STEM老师", "性别": "女", "学历": "本科", "更新日期": 1665532800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22303"
fi
sleep 0.3

# Record 303: R22304
echo "导入 303/669: R22304"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22304", "姓名": "John R. Hooven", "中介": "Ray", "国籍": "美国", "专业": "英语与文学", "资格证": "CELTA", "教学经验": "7年", "目前所在地": "深圳", "上岗时间": "Sep.2023", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "全科", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1677196800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22304"
fi
sleep 0.3

# Record 304: R22305
echo "导入 304/669: R22305"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22305", "姓名": "Donald   Pelfrey", "中介": "Ray", "国籍": "美国", "专业": "教育学-社会科学", "资格证": "教师资格证", "教学经验": "10.年", "目前所在地": "深圳", "上岗时间": "Sep.2023", "签证类型": "家庭签证", "意向城市": "深圳", "意向职位": "社会科学、人文、地理、英语", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22305"
fi
sleep 0.3

# Record 305: R22306
echo "导入 305/669: R22306"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22306", "姓名": "Cristina Ponce", "中介": "Ray", "国籍": "厄瓜多尔", "性别": "女", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22306"
fi
sleep 0.3

# Record 306: R22307
echo "导入 306/669: R22307"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22307", "姓名": "Jon Stacy", "中介": "Ray", "国籍": "英国", "性别": "男", "肤色": "白", "学历": "博士"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22307"
fi
sleep 0.3

# Record 307: R22308
echo "导入 307/669: R22308"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22308", "姓名": "JONATHAN DALLAS", "中介": "Ray", "国籍": "美国", "专业": "工商管理", "资格证": "教师资格证", "教学经验": "10年以上", "目前所在地": "境外·泰国", "意向城市": "深圳", "意向职位": "高中优先", "性别": "男", "肤色": "黑", "学历": "硕士", "更新日期": 1666483200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22308"
fi
sleep 0.3

# Record 308: R22309
echo "导入 308/669: R22309"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22309", "姓名": "Imani Brown", "中介": "Ray（Nina)", "国籍": "美国", "专业": "教育学", "资格证": "教师资格证", "教学经验": "5年", "目前所在地": "境外·美国", "上岗时间": "Feb.2023", "意向城市": "深圳", "意向职位": "全科", "性别": "女", "学历": "硕士", "更新日期": 1666483200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22309"
fi
sleep 0.3

# Record 309: R22310
echo "导入 309/669: R22310"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22310", "姓名": "Milos Taskovic", "中介": "Ray", "国籍": "塞尔维亚", "性别": "男", "肤色": "白"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22310"
fi
sleep 0.3

# Record 310: R22311
echo "导入 310/669: R22311"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22311", "姓名": "Yolan Naidoo", "中介": "Ray", "国籍": "南非", "专业": "教育学", "资格证": "教师资格证", "性别": "男", "肤色": "黑"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22311"
fi
sleep 0.3

# Record 311: R22312
echo "导入 311/669: R22312"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22312", "姓名": "Christo De Koker", "中介": "Ray", "国籍": "南非", "专业": "本科教育学", "性别": "男", "肤色": "浅黑", "学历": "硕士"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22312"
fi
sleep 0.3

# Record 312: R22313
echo "导入 312/669: R22313"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22313", "姓名": "Simon Kinney", "中介": "Ray", "国籍": "英国", "性别": "男", "肤色": "白"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22313"
fi
sleep 0.3

# Record 313: R22314
echo "导入 313/669: R22314"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22314", "姓名": "Kamina Hall", "中介": "Ray", "国籍": "美国", "专业": "教育学", "资格证": "CELTA", "教学经验": "5年", "上岗时间": "NOV.2022", "意向职位": "初高中", "性别": "女", "肤色": "黑", "学历": "硕士"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22314"
fi
sleep 0.3

# Record 314: R22315
echo "导入 314/669: R22315"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22315", "姓名": "Ayesha Patel", "中介": "Ray", "国籍": "英国", "资格证": "TEFL", "性别": "女", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22315"
fi
sleep 0.3

# Record 315: R22316
echo "导入 315/669: R22316"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22316", "姓名": "Hannah Quinn", "中介": "Ray", "国籍": "爱尔兰", "专业": "数学", "资格证": "TKT", "教学经验": "5年", "性别": "女", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22316"
fi
sleep 0.3

# Record 316: R22317
echo "导入 316/669: R22317"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22317", "姓名": "Liam Moir", "中介": "Ray", "国籍": "英国", "专业": "应用语言学与TESOL", "资格证": "CELTA", "性别": "男", "肤色": "白", "学历": "硕士"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22317"
fi
sleep 0.3

# Record 317: R22318
echo "导入 317/669: R22318"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22318", "姓名": "Zahir A Mcneil", "中介": "Ray", "国籍": "美国", "专业": "教育学-数学", "教学经验": "3年", "联系方式": "zahir.mcneil@gmail.com", "性别": "男", "肤色": "黑", "学历": "硕士"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22318"
fi
sleep 0.3

# Record 318: R22319
echo "导入 318/669: R22319"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22319", "姓名": "Dorrian Applegreen", "中介": "Ray", "国籍": "南非", "专业": "地理、化学", "资格证": "TEFL", "教学经验": "3年", "联系方式": "微信： orian_007", "性别": "女", "肤色": "浅黑", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22319"
fi
sleep 0.3

# Record 319: R22320
echo "导入 319/669: R22320"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22320", "姓名": "Carl Willetts", "中介": "Ray", "国籍": "英国", "专业": "历史", "资格证": "CELTA", "教学经验": "10年", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22320"
fi
sleep 0.3

# Record 320: R22321
echo "导入 320/669: R22321"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22321", "姓名": "Yildiz Onay", "中介": "Ray", "国籍": "英国", "资格证": "TEFL", "教学经验": "5年", "性别": "女", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22321"
fi
sleep 0.3

# Record 321: R22322
echo "导入 321/669: R22322"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22322", "姓名": "Odwa Manciya", "中介": "Ray", "国籍": "南非", "资格证": "PGCE", "性别": "女", "肤色": "黑"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22322"
fi
sleep 0.3

# Record 322: R22323
echo "导入 322/669: R22323"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22323", "姓名": "Ann Corhn", "中介": "Ray", "国籍": "美国", "专业": "creative writing", "资格证": "TEFL", "教学经验": "1年", "性别": "女", "学历": "硕士"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22323"
fi
sleep 0.3

# Record 323: R22324
echo "导入 323/669: R22324"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22324", "姓名": "Ramona Jahangirian", "中介": "Ray", "国籍": "澳大利亚", "教学经验": "12年", "联系方式": "ramonajahan@hotmail.com", "性别": "女", "肤色": "白", "学历": "硕士"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22324"
fi
sleep 0.3

# Record 324: R22325
echo "导入 324/669: R22325"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22325", "姓名": "Sarah Mahlangu", "中介": "Ray", "国籍": "南非", "专业": "教育学", "教学经验": "9年", "意向职位": "数学、英语", "性别": "女", "肤色": "浅黑", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22325"
fi
sleep 0.3

# Record 325: R22326
echo "导入 325/669: R22326"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22326", "姓名": "Sherelle Stols", "中介": "Ray", "国籍": "南非", "资格证": "TEFL", "教学经验": "0", "性别": "女", "肤色": "浅黑", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22326"
fi
sleep 0.3

# Record 326: R22327
echo "导入 326/669: R22327"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22327", "姓名": "Jozef Fourie", "中介": "Ray", "国籍": "南非", "资格证": "PGCE", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22327"
fi
sleep 0.3

# Record 327: R22328
echo "导入 327/669: R22328"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22328", "姓名": "Malik Battles", "中介": "Ray", "国籍": "美国", "教学经验": "7年", "性别": "男", "肤色": "黑", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22328"
fi
sleep 0.3

# Record 328: R22329
echo "导入 328/669: R22329"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22329", "姓名": "Christina Schloss", "中介": "Ray", "国籍": "美国", "目前所在地": "境外·韩国", "性别": "女", "肤色": "黑"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22329"
fi
sleep 0.3

# Record 329: R22330
echo "导入 329/669: R22330"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22330", "姓名": "Michael Mansell", "中介": "Ray", "国籍": "美国", "专业": "物理", "意向职位": "科学、物理、数学", "联系方式": "157 3610 2274", "性别": "男", "肤色": "白", "学历": "博士"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22330"
fi
sleep 0.3

# Record 330: R22331
echo "导入 330/669: R22331"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22331", "姓名": "Tumelo Gracious Ratlhogo", "中介": "Ray", "国籍": "南非", "专业": "教育学", "教学经验": "4年", "性别": "女", "肤色": "黑", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22331"
fi
sleep 0.3

# Record 331: R22332
echo "导入 331/669: R22332"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22332", "姓名": "Serusha Naidoo", "中介": "Ray", "国籍": "南非", "专业": "教育学", "性别": "女", "肤色": "黑", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22332"
fi
sleep 0.3

# Record 332: R22333
echo "导入 332/669: R22333"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22333", "姓名": "Valeriu Lazar", "中介": "Ray", "国籍": "加拿大", "专业": "英语文学", "教学经验": "10年", "目前所在地": "境外·泰国", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22333"
fi
sleep 0.3

# Record 333: R22334
echo "导入 333/669: R22334"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22334", "姓名": "Ahmed Karim", "中介": "Ray", "国籍": "加拿大", "专业": "英语文学", "资格证": "CELTA", "联系方式": "ankarim94@gmail.com", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22334"
fi
sleep 0.3

# Record 334: R22335
echo "导入 334/669: R22335"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22335", "姓名": "Christian Sonekan", "中介": "Ray", "国籍": "加拿大", "专业": "本科物理", "资格证": "TESOL", "教学经验": "10年", "意向职位": "科学、物理、化学", "性别": "男", "肤色": "黑", "学历": "硕士"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22335"
fi
sleep 0.3

# Record 335: R22336
echo "导入 335/669: R22336"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22336", "姓名": "Raphael Gaines Brown", "中介": "Ray", "国籍": "美国", "专业": "公共管理", "资格证": "TESOL", "性别": "男", "肤色": "白", "学历": "硕士"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22336"
fi
sleep 0.3

# Record 336: R22337
echo "导入 336/669: R22337"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22337", "姓名": "Colin Hall", "中介": "Ray", "国籍": "英国", "专业": "教育管理", "意向职位": "科学", "性别": "男", "肤色": "黑", "学历": "硕士"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22337"
fi
sleep 0.3

# Record 337: R22338
echo "导入 337/669: R22338"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22338", "姓名": "Ilona Baghdasarian", "中介": "Ray", "国籍": "美国", "目前所在地": "境外·台湾", "性别": "女", "肤色": "白"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22338"
fi
sleep 0.3

# Record 338: R22339
echo "导入 338/669: R22339"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22339", "姓名": "Christopher Summers", "中介": "Ray", "国籍": "美国", "教学经验": "5年", "性别": "男", "肤色": "白", "学历": "硕士"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22339"
fi
sleep 0.3

# Record 339: R22340
echo "导入 339/669: R22340"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22340", "姓名": "Charles Duntoye", "中介": "Ray", "国籍": "英国", "联系方式": "charlesduntoye3@gmail.com", "性别": "男", "肤色": "白"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22340"
fi
sleep 0.3

# Record 340: R22341
echo "导入 340/669: R22341"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22341", "姓名": "Lee Hughes", "中介": "Ray", "国籍": "英国", "目前所在地": "境外·柬埔寨", "性别": "男", "肤色": "白"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22341"
fi
sleep 0.3

# Record 341: R22342
echo "导入 341/669: R22342"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22342", "姓名": "Gregory M. Francis", "中介": "Ray", "国籍": "美国", "专业": "经济学", "教学经验": "7年", "目前所在地": "武汉", "意向城市": "武汉及周边", "意向职位": "经济、英语", "薪资期望": "25K 全包", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22342"
fi
sleep 0.3

# Record 342: R22343
echo "导入 342/669: R22343"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22343", "姓名": "David Pay", "中介": "Ray", "国籍": "英国", "专业": "现代历史与政治", "资格证": "IPGCE", "教学经验": "4年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "签证类型": "工作签证", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1677196800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22343"
fi
sleep 0.3

# Record 343: R22344
echo "导入 343/669: R22344"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22344", "姓名": "James Webster", "中介": "Sherry", "国籍": "英国", "目前所在地": "深圳龙岗", "性别": "男", "肤色": "白"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22344"
fi
sleep 0.3

# Record 344: R22345
echo "导入 344/669: R22345"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22345", "姓名": "Kathy Lynne Hompstead", "中介": "Ray", "国籍": "英国", "专业": "幼儿研究", "目前所在地": "境外·英国", "上岗时间": "Aug.2023", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1677801600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22345"
fi
sleep 0.3

# Record 345: R22346
echo "导入 345/669: R22346"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22346", "姓名": "John", "中介": "Ray", "国籍": "英国", "专业": "教育研究（小学）", "目前所在地": "境外·英国", "上岗时间": "Aug.2023", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1677801600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22346"
fi
sleep 0.3

# Record 346: R22347
echo "导入 346/669: R22347"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22347", "姓名": "Jermaine Allen", "中介": "Patrick-Prinz", "国籍": "英国", "专业": "体育，商业与市场管理", "教学经验": "2年", "目前所在地": "深圳", "意向城市": "深圳", "意向职位": "体育", "性别": "男", "肤色": "黑", "学历": "硕士"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22347"
fi
sleep 0.3

# Record 347: R22348
echo "导入 347/669: R22348"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22348", "姓名": "APS", "中介": "Himo", "国籍": "英国", "专业": "物理", "教学经验": "7年", "目前所在地": "苏州", "意向城市": "深圳", "意向职位": "英语、物理", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22348"
fi
sleep 0.3

# Record 348: R22349
echo "导入 348/669: R22349"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22349", "姓名": "Chelsea White", "中介": "Ray", "国籍": "英国", "性别": "女", "肤色": "黑"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22349"
fi
sleep 0.3

# Record 349: R22350
echo "导入 349/669: R22350"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22350", "姓名": "Marsha", "中介": "Ray", "国籍": "美国", "性别": "女", "肤色": "白"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22350"
fi
sleep 0.3

# Record 350: R22351
echo "导入 350/669: R22351"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22351", "姓名": "Joy", "中介": "Ray", "国籍": "美国", "专业": "早教专业", "意向城市": "深圳", "意向职位": "幼儿园", "跟进记录": "去了BeniBaby", "性别": "女", "肤色": "黑"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22351"
fi
sleep 0.3

# Record 351: R22352
echo "导入 351/669: R22352"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22352", "姓名": "Iain McLeod", "中介": "Ray", "国籍": "加拿大", "性别": "男", "肤色": "白"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22352"
fi
sleep 0.3

# Record 352: R22353
echo "导入 352/669: R22353"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22353", "姓名": "Craig Carney", "中介": "Ray", "国籍": "爱尔兰", "意向城市": "深圳", "意向职位": "小学", "性别": "男", "肤色": "白"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22353"
fi
sleep 0.3

# Record 353: R22354
echo "导入 353/669: R22354"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22354", "姓名": "Peter C. Perez", "中介": "Ray", "国籍": "美国", "专业": "哲学与社会学", "教学经验": "8年", "目前所在地": "深圳", "意向城市": "深圳", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22354"
fi
sleep 0.3

# Record 354: R22355
echo "导入 354/669: R22355"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22355", "姓名": "Safara", "中介": "Ray", "国籍": "印度", "目前所在地": "佛山", "意向城市": "深圳", "意向职位": "幼儿园", "性别": "女", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22355"
fi
sleep 0.3

# Record 355: R22356
echo "导入 355/669: R22356"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22356", "姓名": "Lucas Magyarics", "中介": "Ray", "国籍": "美国", "专业": "通信", "资格证": "TEFL", "教学经验": "13年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "不限", "意向职位": "大学", "跟进记录": "在EF，想换工作，要2个月离职", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1677628800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22356"
fi
sleep 0.3

# Record 356: R22357
echo "导入 356/669: R22357"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22357", "姓名": "Shehan", "中介": "Lilying", "国籍": "英国", "性别": "男", "肤色": "白"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22357"
fi
sleep 0.3

# Record 357: R22358
echo "导入 357/669: R22358"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22358", "姓名": "Sarah", "中介": "Ray", "国籍": "伊朗", "目前所在地": "深圳", "签证类型": "家属签证", "意向城市": "深圳", "意向职位": "幼儿园", "性别": "女", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22358"
fi
sleep 0.3

# Record 358: R22359
echo "导入 358/669: R22359"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22359", "姓名": "Mohammed Kamal jemmouj", "中介": "Ray", "国籍": "法国", "目前所在地": "广州", "签证类型": "自己工签", "意向城市": "深圳", "意向职位": "幼儿园", "性别": "男", "肤色": "白"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22359"
fi
sleep 0.3

# Record 359: R22360
echo "导入 359/669: R22360"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22360", "姓名": "Bernard Louis Van Hooidonk", "中介": "Ray", "教学经验": "15年", "目前所在地": "深圳", "上岗时间": "Dec.2022", "意向城市": "深圳", "意向职位": "初高中ESL", "性别": "男", "肤色": "棕"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22360"
fi
sleep 0.3

# Record 360: R22361
echo "导入 360/669: R22361"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22361", "姓名": "Shana", "中介": "Ray", "国籍": "南非", "意向城市": "深圳", "意向职位": "幼儿园", "性别": "女", "肤色": "黑", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22361"
fi
sleep 0.3

# Record 361: R22362
echo "导入 361/669: R22362"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22362", "姓名": "Yassine Nouiri", "中介": "Ray", "目前所在地": "东莞", "签证类型": "工作签证", "工签职位": "英语教师", "性别": "男", "肤色": "棕", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22362"
fi
sleep 0.3

# Record 362: R22363
echo "导入 362/669: R22363"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22363", "姓名": "Giovanni Alexander", "中介": "优才社郭", "国籍": "美国", "教学经验": "8年", "签证类型": "工作签证", "工签职位": "英语教师", "意向城市": "深圳", "意向职位": "科学、物理、化学", "性别": "男", "肤色": "白", "学历": "硕士"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22363"
fi
sleep 0.3

# Record 363: R22364
echo "导入 363/669: R22364"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22364", "姓名": "Basma", "中介": "Harper", "国籍": "摩洛哥", "目前所在地": "郑州", "意向城市": "郑州", "性别": "女", "肤色": "白"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22364"
fi
sleep 0.3

# Record 364: R22365
echo "导入 364/669: R22365"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22365", "姓名": "Michaen Chan", "中介": "EF-Paul", "国籍": "美国", "目前所在地": "深圳", "签证类型": "工作签证", "工签职位": "英语教师", "意向城市": "深圳", "跟进记录": "签了加州儿童会", "性别": "男", "肤色": "亚裔"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22365"
fi
sleep 0.3

# Record 365: R22366
echo "导入 365/669: R22366"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22366", "姓名": "Meghan White", "中介": "Ray", "国籍": "南非", "目前所在地": "深圳", "上岗时间": "ASAP", "签证类型": "停留签证", "工签职位": "英语教师", "意向城市": "深圳", "意向职位": "幼儿园", "薪资期望": "28K税后", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1676851200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22366"
fi
sleep 0.3

# Record 366: R22367
echo "导入 366/669: R22367"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22367", "姓名": "David Pay", "中介": "Ray", "国籍": "英国", "专业": "现代历史与政治", "资格证": "iPGCE", "教学经验": "4.5", "目前所在地": "深圳", "上岗时间": "Aug.2023", "签证类型": "工作签证", "工签职位": "英语教师", "意向城市": "深圳", "意向职位": "初高中ESL", "薪资期望": "28K以上", "跟进记录": "推给了梅沙", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1676851200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22367"
fi
sleep 0.3

# Record 367: R22368
echo "导入 367/669: R22368"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22368", "姓名": "Elliot", "中介": "Ray", "国籍": "英国", "资格证": "TEFL", "目前所在地": "深圳", "上岗时间": "Aug.2023", "签证类型": "工作签证", "工签职位": "英语教师", "意向城市": "深圳", "意向职位": "初高中ESL", "跟进记录": "找梅沙，等简历视频", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1676851200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22368"
fi
sleep 0.3

# Record 368: R22369
echo "导入 368/669: R22369"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22369", "姓名": "Liam Corby", "中介": "Ray", "国籍": "英国", "专业": "犯罪学", "资格证": "TEFL", "教学经验": "14年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "签证类型": "工作签证", "工签职位": "英语教师", "意向城市": "深圳", "意向职位": "初高中ESL", "跟进记录": "找梅沙，等简历视频", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1676851200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22369"
fi
sleep 0.3

# Record 369: R22370
echo "导入 369/669: R22370"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22370", "姓名": "Edrick", "中介": "EF-Paul", "国籍": "美国", "专业": "商业管理", "资格证": "无", "教学经验": "2年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "意向城市": "深圳", "意向职位": "幼儿园小学ESL", "薪资期望": "18左右", "跟进记录": "七月千希合同结束，想找幼儿园或小学", "性别": "男", "肤色": "亚裔", "学历": "本科", "是否可转聘": "不可转聘", "更新日期": 1662595200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22370"
fi
sleep 0.3

# Record 370: R22371
echo "导入 370/669: R22371"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22371", "姓名": "Mike", "中介": "Ray", "国籍": "瑞士", "意向城市": "福田、南山", "意向职位": "经济学", "薪资期望": "25K", "更新日期": 1676851200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22371"
fi
sleep 0.3

# Record 371: R22372
echo "导入 371/669: R22372"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22372", "姓名": "Andrea Fourie", "中介": "Ray", "国籍": "南非", "专业": "会计", "资格证": "TEFL", "教学经验": "4年", "目前所在地": "境外·南非", "上岗时间": "Aug.2023", "意向城市": "厦门、杭州、深圳", "意向职位": "幼儿园小学ESL", "联系方式": "微信", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1676851200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22372"
fi
sleep 0.3

# Record 372: R22374
echo "导入 372/669: R22374"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22374", "姓名": "Daniel Potter", "中介": "Nemo", "国籍": "英国", "专业": "英语文学", "教学经验": "7年", "上岗时间": "Aug.2023", "意向职位": "体育", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1676851200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22374"
fi
sleep 0.3

# Record 373: R22375
echo "导入 373/669: R22375"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22375", "姓名": "Thomas Ward", "中介": "Sherry", "国籍": "美国", "专业": "历史", "资格证": "TEFL", "教学经验": "9年", "目前所在地": "境外·泰国", "上岗时间": "Aug.2023", "意向职位": "小学homeroom", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1676851200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22375"
fi
sleep 0.3

# Record 374: R22376
echo "导入 374/669: R22376"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22376", "姓名": "Mia", "中介": "Sherry", "国籍": "南非/爱尔兰", "资格证": "TEFL", "教学经验": "4年", "目前所在地": "境外·泰国", "上岗时间": "Aug.2023", "意向职位": "幼儿园小学ESL", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1676851200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22376"
fi
sleep 0.3

# Record 375: R22377
echo "导入 375/669: R22377"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22377", "姓名": "Mike", "中介": "Sherry", "国籍": "南非", "资格证": "TESOL", "教学经验": "17", "目前所在地": "境外·马来西亚", "上岗时间": "Aug.2023", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1676851200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22377"
fi
sleep 0.3

# Record 376: R22378
echo "导入 376/669: R22378"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22378", "姓名": "Jordan Bourque", "中介": "Nemo", "国籍": "加拿大", "教学经验": "2年", "目前所在地": "沈阳", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "海南", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1676851200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22378"
fi
sleep 0.3

# Record 377: R22379
echo "导入 377/669: R22379"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22379", "姓名": "Kelly", "中介": "Sherry", "国籍": "美国", "上岗时间": "Aug.2023", "签证类型": "工作签证", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1676851200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22379"
fi
sleep 0.3

# Record 378: R22380
echo "导入 378/669: R22380"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22380", "姓名": "Daniel James Paul Taylerson", "中介": "Ray", "国籍": "加拿大", "专业": "教育学", "资格证": "TEFL", "教学经验": "17年", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "深圳", "跟进记录": "目前在培训中心，可离职", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1676851200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22380"
fi
sleep 0.3

# Record 379: R22381
echo "导入 379/669: R22381"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22381", "姓名": "Marcin Lipski", "中介": "Nemo", "国籍": "加拿大", "专业": "教育学", "教学经验": "10年以上", "目前所在地": "宁波", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "小学Homeroom、初高中ESL", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1676851200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22381"
fi
sleep 0.3

# Record 380: R22382
echo "导入 380/669: R22382"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22382", "姓名": "Jake Compton", "中介": "Sherry", "国籍": "美国", "专业": "教育学", "资格证": "教师资格证", "教学经验": "11年", "目前所在地": "广州", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向职位": "社会科学", "性别": "男", "肤色": "白", "学历": "硕士", "更新日期": 1676937600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22382"
fi
sleep 0.3

# Record 381: R22383
echo "导入 381/669: R22383"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22383", "姓名": "Temacia", "中介": "Sherry", "国籍": "美国", "专业": "课程与教学", "资格证": "教师资格证", "教学经验": "13年", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向职位": "物理、科学", "性别": "女", "肤色": "棕", "学历": "硕士", "更新日期": 1676851200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22383"
fi
sleep 0.3

# Record 382: R22384
echo "导入 382/669: R22384"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22384", "姓名": "Marissa", "中介": "Sherry", "国籍": "美国", "专业": "艺术教育", "资格证": "教师资格证", "教学经验": "5年", "目前所在地": "北京", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向职位": "艺术（美术）", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1676937600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22384"
fi
sleep 0.3

# Record 383: R22385
echo "导入 383/669: R22385"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22385", "姓名": "Ishta", "中介": "Sherry", "国籍": "南非", "专业": "教育学", "教学经验": "4年", "目前所在地": "武汉", "上岗时间": "Aug.2023", "意向职位": "幼儿园", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1676592000000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22385"
fi
sleep 0.3

# Record 384: R22386
echo "导入 384/669: R22386"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22386", "姓名": "Christy Phillips", "中介": "Ray", "国籍": "美国", "专业": "商业管理与经济", "资格证": "TEFL", "教学经验": "10年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "签证类型": "家属签证", "意向城市": "深圳南山、福田", "意向职位": "小学英语", "薪资期望": "25K税后", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1677024000000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22386"
fi
sleep 0.3

# Record 385: R22387
echo "导入 385/669: R22387"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22387", "姓名": "Amadeus Miranda", "中介": "Ray", "国籍": "美国", "专业": "文科与传播", "资格证": "TEFL", "教学经验": "6年", "目前所在地": "香港", "上岗时间": "Aug.2023", "意向城市": "深圳", "意向职位": "体育\\艺术", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1677024000000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22387"
fi
sleep 0.3

# Record 386: R22388
echo "导入 386/669: R22388"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22388", "姓名": "Georg", "中介": "Ray", "国籍": "美国", "专业": "物理", "目前所在地": "深圳", "意向城市": "深圳", "意向职位": "物理、数学", "性别": "男", "肤色": "白", "学历": "博士", "更新日期": 1677110400000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22388"
fi
sleep 0.3

# Record 387: R22389
echo "导入 387/669: R22389"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22389", "姓名": "Sam Le Chiq", "中介": "Ray", "国籍": "加拿大", "专业": "音乐", "教学经验": "8年", "目前所在地": "广州", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "深圳、广州", "薪资期望": "35k", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1677110400000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22389"
fi
sleep 0.3

# Record 388: R22390
echo "导入 388/669: R22390"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22390", "姓名": "Asma", "中介": "Ray", "国籍": "香港", "专业": "通讯与媒体研究", "资格证": "TEFL", "教学经验": "4年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "意向城市": "深圳", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1677110400000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22390"
fi
sleep 0.3

# Record 389: R22391
echo "导入 389/669: R22391"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22391", "姓名": "Dylan Souppes", "中介": "Ray", "国籍": "英国", "专业": "法律", "资格证": "CELTA", "教学经验": "6年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "意向城市": "深圳", "跟进记录": "在大手机上", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1677110400000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22391"
fi
sleep 0.3

# Record 390: R22392
echo "导入 390/669: R22392"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22392", "姓名": "Ron Price", "中介": "Ray", "国籍": "美国", "专业": "教育学", "教学经验": "10年以上", "目前所在地": "深圳", "上岗时间": "Aug.2023", "签证类型": "工作签证", "工签职位": "英语教师", "意向城市": "深圳", "意向职位": "文学、社会科学", "性别": "男", "肤色": "黑", "学历": "博士", "更新日期": 1677110400000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22392"
fi
sleep 0.3

# Record 391: R22394
echo "导入 391/669: R22394"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22394", "姓名": "Johnny Vermeulen", "中介": "Himo", "国籍": "南非", "专业": "教育学-数学科学", "资格证": "教师资格证", "教学经验": "6年", "目前所在地": "台湾", "上岗时间": "Sep.2023", "意向职位": "数学，科学，体育", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1677110400000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22394"
fi
sleep 0.3

# Record 392: R22395
echo "导入 392/669: R22395"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22395", "姓名": "Gareth Scallan", "中介": "Himo", "国籍": "南非", "专业": "教育学", "资格证": "PGCE", "教学经验": "10年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "ESL", "性别": "男", "肤色": "白", "学历": "硕士", "更新日期": 1677196800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22395"
fi
sleep 0.3

# Record 393: R22396
echo "导入 393/669: R22396"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22396", "姓名": "Travis Coner", "中介": "Himo", "国籍": "美国", "专业": "国际研究", "资格证": "教师资格证", "教学经验": "6年", "目前所在地": "成都", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "深圳，上海，北京、广州", "意向职位": "英语文学、社会科学", "薪资期望": "30K税后", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1677196800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22396"
fi
sleep 0.3

# Record 394: R22397
echo "导入 394/669: R22397"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22397", "姓名": "Petro Herbst", "中介": "Himo", "国籍": "南非", "专业": "法律", "资格证": "PGCE", "教学经验": "2年", "目前所在地": "境外·阿曼", "上岗时间": "Aug.2023", "意向城市": "深圳", "意向职位": "ESL", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1677196800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22397"
fi
sleep 0.3

# Record 395: R22398
echo "导入 395/669: R22398"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22398", "姓名": "Elmarie Henning", "中介": "Himo", "国籍": "南非", "专业": "小学教育学", "教学经验": "8年", "目前所在地": "上海", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "深圳", "薪资期望": "25 -30 k 税后+住宿", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1677196800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22398"
fi
sleep 0.3

# Record 396: R22399
echo "导入 396/669: R22399"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22399", "姓名": "Kiran Rehan", "中介": "Ray", "国籍": "巴基斯坦", "专业": "材料物理与化学\n硕士化学，本科教育学-科学教育、化学", "教学经验": "5年", "目前所在地": "深圳", "上岗时间": "ASAP", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "化学、科学", "性别": "女", "肤色": "棕", "学历": "博士", "更新日期": 1677196800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22399"
fi
sleep 0.3

# Record 397: R22400
echo "导入 397/669: R22400"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22400", "姓名": "Sain Bus Jamali", "中介": "Ray", "国籍": "巴基斯坦", "专业": "博士-物理，硕士-物理化学，本科-教育学", "教学经验": "9年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "物理、化学、科学、数学", "性别": "男", "肤色": "棕", "学历": "博士", "更新日期": 1677196800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22400"
fi
sleep 0.3

# Record 398: R22401
echo "导入 398/669: R22401"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22401", "姓名": "David Sjekloca", "中介": "Ray", "国籍": "塞尔维亚", "专业": "运动科学", "资格证": "TEFL", "教学经验": "13年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "体育", "薪资期望": "25-30K", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1677196800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22401"
fi
sleep 0.3

# Record 399: R22402
echo "导入 399/669: R22402"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22402", "姓名": "Maricar Sjekloca", "中介": "Ray", "国籍": "菲律宾", "专业": "教育学-音乐、艺术、体育", "教学经验": "3年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "签证类型": "家庭签证", "意向城市": "深圳", "意向职位": "ESL,音乐，艺术，体育", "性别": "女", "肤色": "亚裔", "学历": "本科", "更新日期": 1677196800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22402"
fi
sleep 0.3

# Record 400: R22403
echo "导入 400/669: R22403"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22403", "姓名": "Tiaan Herselman", "中介": "Nemo", "国籍": "南非", "专业": "建筑管理", "资格证": "TEFL", "教学经验": "6年", "目前所在地": "大连", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "小学", "薪资期望": "30k", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1677196800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22403"
fi
sleep 0.3

# Record 401: R22404
echo "导入 401/669: R22404"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22404", "姓名": "Nicole Breedt", "中介": "Nemo", "国籍": "南非", "专业": "教育学", "资格证": "TEFL", "教学经验": "10年", "目前所在地": "大连", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "幼儿园", "薪资期望": "30k", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1677196800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22404"
fi
sleep 0.3

# Record 402: R22405
echo "导入 402/669: R22405"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22405", "姓名": "Oleg Polyanskiy", "中介": "优才社郭", "国籍": "乌克兰", "专业": "音乐", "教学经验": "9年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "签证类型": "工作签证", "工签职位": "音乐老师", "意向城市": "深圳", "意向职位": "音乐", "薪资期望": "30 k 税后", "性别": "男", "肤色": "白", "学历": "硕士", "更新日期": 1677196800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22405"
fi
sleep 0.3

# Record 403: R22406
echo "导入 403/669: R22406"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22406", "姓名": "Carmie le Roux", "中介": "优才社郭", "国籍": "南非", "专业": "教育学", "教学经验": "4年", "目前所在地": "杭州", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "杭州", "意向职位": "幼儿园、小学", "薪资期望": "24K+房补", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1677196800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22406"
fi
sleep 0.3

# Record 404: R22407
echo "导入 404/669: R22407"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22407", "姓名": "Steven W. Hawbaker", "中介": "优才社郭", "国籍": "美国", "专业": "生物化学", "教学经验": "10年以上", "目前所在地": "境外·墨西哥", "上岗时间": "Aug.2023", "意向城市": "不限", "意向职位": "生物、化学", "薪资期望": "25K+", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1677196800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22407"
fi
sleep 0.3

# Record 405: R22408
echo "导入 405/669: R22408"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22408", "姓名": "Jack Evans", "中介": "Ray", "国籍": "英国", "专业": "音乐", "资格证": "TEFL", "教学经验": "4年", "目前所在地": "贵阳", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "英语、音乐", "性别": "男", "肤色": "白", "学历": "硕士", "更新日期": 1677369600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22408"
fi
sleep 0.3

# Record 406: R22409
echo "导入 406/669: R22409"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22409", "姓名": "Ethan Poellot", "中介": "Lilying", "国籍": "美国", "专业": "历史", "资格证": "TEFL", "教学经验": "1年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "幼儿园、小学", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1677456000000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22409"
fi
sleep 0.3

# Record 407: R22410
echo "导入 407/669: R22410"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22410", "姓名": "Daniel Braham", "中介": "名聘Lewis", "国籍": "英国", "专业": "工业设计", "资格证": "TEFL", "教学经验": "9年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "小学、初中", "薪资期望": "30K+", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1677456000000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22410"
fi
sleep 0.3

# Record 408: R22411
echo "导入 408/669: R22411"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22411", "姓名": "Jocelyn P", "中介": "Sherry", "国籍": "南非", "专业": "心理咨询", "资格证": "PGCE", "教学经验": "5年", "目前所在地": "武汉", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "深圳、武汉", "意向职位": "小学、初中", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1677456000000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22411"
fi
sleep 0.3

# Record 409: R22412
echo "导入 409/669: R22412"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22412", "姓名": "William", "中介": "Sherry", "国籍": "英国", "专业": "生物化学", "资格证": "TEFL", "教学经验": "4年", "目前所在地": "宁波", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "小学、初中", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1677456000000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22412"
fi
sleep 0.3

# Record 410: R22413
echo "导入 410/669: R22413"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22413", "姓名": "Jonathan Karl Jones", "中介": "Ray", "国籍": "美国", "专业": "哲学", "资格证": "ELA教师资格证", "教学经验": "5年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "签证类型": "停留签证", "意向城市": "深圳", "意向职位": "幼儿园、小学、初中", "薪资期望": "25-32K", "性别": "男", "肤色": "黑", "学历": "本科", "更新日期": 1677456000000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22413"
fi
sleep 0.3

# Record 411: R22414
echo "导入 411/669: R22414"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22414", "姓名": "Irene Dolan", "中介": "Ray", "国籍": "爱尔兰", "专业": "社会研究", "资格证": "TEFL", "教学经验": "5年", "目前所在地": "北京", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "幼儿园、小学", "薪资期望": "30K税后", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1677542400000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22414"
fi
sleep 0.3

# Record 412: R22415
echo "导入 412/669: R22415"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22415", "姓名": "Sonia", "中介": "Sherry", "国籍": "俄罗斯", "专业": "教育学，本科教育学（化学）", "教学经验": "7年", "目前所在地": "俄罗斯", "上岗时间": "Aug.2023", "意向城市": "深圳", "意向职位": "化学、科学", "性别": "女", "肤色": "白", "学历": "硕士", "更新日期": 1677542400000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22415"
fi
sleep 0.3

# Record 413: R22416
echo "导入 413/669: R22416"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22416", "姓名": "Terriel Thomas", "中介": "Sherry", "国籍": "美国", "专业": "健康、体育与领导学", "资格证": "TEFL", "教学经验": "8年", "目前所在地": "巴西", "上岗时间": "Aug.2023", "意向城市": "不限", "意向职位": "体育", "薪资期望": "25-30K", "性别": "男", "肤色": "黑", "学历": "本科", "更新日期": 1677542400000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22416"
fi
sleep 0.3

# Record 414: R22417
echo "导入 414/669: R22417"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22417", "姓名": "Fatima", "中介": "中介Jason", "国籍": "英国", "上岗时间": "Aug.2023"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22417"
fi
sleep 0.3

# Record 415: R22418
echo "导入 415/669: R22418"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22418", "姓名": "Ruan Beukes", "中介": "Ray", "国籍": "美国", "专业": "教育学，本科英语文学", "教学经验": "6年", "目前所在地": "北京", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "幼儿园、小学", "薪资期望": "30K税后", "跟进记录": "Irene男朋友", "性别": "男", "肤色": "白", "学历": "硕士", "更新日期": 1677801600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22418"
fi
sleep 0.3

# Record 416: R22419
echo "导入 416/669: R22419"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22419", "姓名": "Edgar Arca", "中介": "Dr. James", "国籍": "加拿大", "专业": "教育学", "上岗时间": "Aug.2023", "性别": "男", "肤色": "棕", "学历": "硕士", "更新日期": 1677801600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22419"
fi
sleep 0.3

# Record 417: R22420
echo "导入 417/669: R22420"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22420", "姓名": "Keegan", "中介": "Patrick-Prinz", "国籍": "南非", "专业": "英语", "教学经验": "5年", "目前所在地": "常州", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "小学", "薪资期望": "32K税后+房补", "性别": "男", "肤色": "白", "学历": "硕士", "更新日期": 1677801600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22420"
fi
sleep 0.3

# Record 418: R22421
echo "导入 418/669: R22421"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22421", "姓名": "Nicolene", "中介": "Patrick-Prinz", "国籍": "南非", "专业": "英语", "教学经验": "4年", "目前所在地": "常州", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "小学", "薪资期望": "32K税后+房补", "性别": "女", "肤色": "白", "学历": "硕士", "更新日期": 1677801600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22421"
fi
sleep 0.3

# Record 419: R22422
echo "导入 419/669: R22422"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22422", "姓名": "Mandeep Banga", "中介": "Himo", "国籍": "英国", "资格证": "iPGCE", "教学经验": "4年", "目前所在地": "苏州", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "小学", "薪资期望": "30K+住宿", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1677801600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22422"
fi
sleep 0.3

# Record 420: R22423
echo "导入 420/669: R22423"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22423", "姓名": "Matthew Parsons", "中介": "Himo", "国籍": "英国", "资格证": "iPGCE", "教学经验": "4年", "目前所在地": "苏州", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "小学", "薪资期望": "30K+住宿", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1677801600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22423"
fi
sleep 0.3

# Record 421: R22424
echo "导入 421/669: R22424"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22424", "姓名": "Anna", "中介": "Himo", "国籍": "南非", "专业": "教育（TESOL与早教）、英语与文学", "教学经验": "5年", "目前所在地": "大连", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "小学", "薪资期望": "25-30K", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1677801600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22424"
fi
sleep 0.3

# Record 422: R22425
echo "导入 422/669: R22425"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22425", "姓名": "Zak Pearson", "中介": "Sherry", "国籍": "美国", "专业": "教育学", "教学经验": "7年", "目前所在地": "香港", "上岗时间": "Aug.2023", "意向职位": "经济", "薪资期望": "30k", "性别": "男", "肤色": "浅黑", "学历": "博士", "更新日期": 1677801600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22425"
fi
sleep 0.3

# Record 423: R22426
echo "导入 423/669: R22426"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22426", "姓名": "Ivana Obradovic", "中介": "优才社郭", "国籍": "塞尔维亚", "专业": "艺术", "教学经验": "5年", "目前所在地": "上海", "上岗时间": "Aug.2023", "签证类型": "家庭签证", "意向城市": "深圳", "意向职位": "艺术", "薪资期望": "30k", "性别": "女", "肤色": "白", "学历": "硕士", "更新日期": 1677974400000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22426"
fi
sleep 0.3

# Record 424: R22427
echo "导入 424/669: R22427"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22427", "姓名": "George Sadek", "中介": "Ray", "国籍": "英国", "专业": "数学", "资格证": "TEFL", "教学经验": "2年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "数学", "薪资期望": "25-30K", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1677974400000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22427"
fi
sleep 0.3

# Record 425: R22428
echo "导入 425/669: R22428"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22428", "姓名": "Aleksandrs Jesikovs", "中介": "Ray", "国籍": "拉脱维亚", "专业": "商业", "教学经验": "5年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "意向城市": "深圳", "意向职位": "经济", "性别": "男", "肤色": "白", "学历": "MBA", "更新日期": 1677974400000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22428"
fi
sleep 0.3

# Record 426: R22429
echo "导入 426/669: R22429"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22429", "姓名": "Andy Barraclough", "中介": "Ray", "国籍": "英国", "专业": "英语文学（在读）", "资格证": "美国教师资格证、QTS", "教学经验": "4年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "英语文学", "薪资期望": "30K+住宿", "性别": "男", "肤色": "白", "学历": "硕士", "更新日期": 1677974400000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22429"
fi
sleep 0.3

# Record 427: R22430
echo "导入 427/669: R22430"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22430", "姓名": "Stevan Nešić", "国籍": "塞尔维亚", "专业": "教练、体育教育（美国）", "教学经验": "8年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "签证类型": "工作签证", "工签职位": "篮球教练", "意向城市": "深圳", "意向职位": "体育", "薪资期望": "25-30K", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1677974400000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22430"
fi
sleep 0.3

# Record 428: R22431
echo "导入 428/669: R22431"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22431", "姓名": "Sunica Nel", "中介": "Ray", "国籍": "南非", "专业": "教育学", "资格证": "TEFL", "教学经验": "3年", "目前所在地": "境外·南非", "上岗时间": "Aug.2023", "意向城市": "深圳南山", "意向职位": "幼儿园", "薪资期望": "25k左右", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1678233600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22431"
fi
sleep 0.3

# Record 429: R22432
echo "导入 429/669: R22432"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22432", "姓名": "Jason Donovan", "中介": "Ray", "国籍": "南非", "专业": "教育学", "资格证": "TEFL", "教学经验": "3年", "目前所在地": "境外·南非", "上岗时间": "Aug.2023", "意向城市": "深圳南山", "意向职位": "幼儿园", "薪资期望": "25k左右", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1678233600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22432"
fi
sleep 0.3

# Record 430: R22433
echo "导入 430/669: R22433"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22433", "姓名": "Dena Skalin", "中介": "Ray", "国籍": "加拿大", "专业": "艺术", "教学经验": "10年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "意向城市": "深圳", "意向职位": "艺术", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1678233600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22433"
fi
sleep 0.3

# Record 431: R22434
echo "导入 431/669: R22434"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22434", "姓名": "Ben Leach", "中介": "优才社郭", "国籍": "英国", "专业": "音乐", "教学经验": "5年", "目前所在地": "佛山", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "广东省", "意向职位": "音乐", "薪资期望": "30K", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1679443200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22434"
fi
sleep 0.3

# Record 432: R22435
echo "导入 432/669: R22435"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22435", "姓名": "Carl McDine", "中介": "Helen", "国籍": "澳大利亚", "专业": "音乐", "教学经验": "6年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "ESL", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1680048000000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22435"
fi
sleep 0.3

# Record 433: R22436
echo "导入 433/669: R22436"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22436", "姓名": "Robert McLntyre", "中介": "优才社郭", "国籍": "加拿大", "专业": "教育学", "资格证": "TESOL", "教学经验": "20年以上", "目前所在地": "北京", "上岗时间": "Aug.2023", "意向职位": "管理、人文社会研究、历史、地理、音乐、艺术", "薪资期望": "400K年薪", "性别": "男", "肤色": "白", "更新日期": 1680048000000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22436"
fi
sleep 0.3

# Record 434: R22437
echo "导入 434/669: R22437"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22437", "姓名": "Dominique Pierre Trag", "中介": "Ray", "国籍": "法国", "专业": "物理", "资格证": "数学教学资格证", "教学经验": "20年以上", "目前所在地": "深圳", "上岗时间": "Aug.2023", "意向职位": "物理、数学", "薪资期望": "33-35税后", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1680048000000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22437"
fi
sleep 0.3

# Record 435: R22438
echo "导入 435/669: R22438"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22438", "姓名": "Ian", "中介": "Sherry", "国籍": "罗马尼亚", "专业": "数学", "资格证": "QTS", "教学经验": "5年数学", "目前所在地": "境外", "上岗时间": "Aug.2023", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1680048000000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22438"
fi
sleep 0.3

# Record 436: R22439
echo "导入 436/669: R22439"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22439", "姓名": "Adam Y. Smith", "中介": "Sherry", "国籍": "美国", "专业": "教育领导学，本科数学教育学", "资格证": "教师资格证", "教学经验": "20年以上", "目前所在地": "境外·美国", "上岗时间": "Aug.2023", "意向职位": "数学、管理岗", "性别": "男", "肤色": "白", "学历": "硕士", "更新日期": 1680048000000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22439"
fi
sleep 0.3

# Record 437: R22440
echo "导入 437/669: R22440"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22440", "姓名": "Amy Heron", "中介": "Ray", "上岗时间": "Aug.2023", "性别": "女", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22440"
fi
sleep 0.3

# Record 438: R22441
echo "导入 438/669: R22441"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22441", "姓名": "SAMY SAMANDU", "中介": "Ray", "国籍": "南非", "专业": "国籍关系", "资格证": "TEFL", "教学经验": "4年", "上岗时间": "Aug.2023", "性别": "女", "肤色": "黑", "学历": "硕士"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22441"
fi
sleep 0.3

# Record 439: R22442
echo "导入 439/669: R22442"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22442", "姓名": "Robert Lindsay", "中介": "Ray", "国籍": "新西兰", "专业": "媒体", "资格证": "TEFL", "教学经验": "2年", "目前所在地": "深圳", "意向职位": "小初高", "薪资期望": "28K", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22442"
fi
sleep 0.3

# Record 440: R22443
echo "导入 440/669: R22443"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22443", "姓名": "JESSICA STANTON", "中介": "Ray", "国籍": "美国", "教学经验": "6年", "目前所在地": "境外·美国", "意向职位": "培训中心", "性别": "女", "肤色": "黑", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22443"
fi
sleep 0.3

# Record 441: R22444
echo "导入 441/669: R22444"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22444", "姓名": "Johannes Stephanus van Rooyen", "中介": "Sopia张", "国籍": "南非", "意向职位": "幼儿园", "性别": "男", "肤色": "白"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22444"
fi
sleep 0.3

# Record 442: R22445
echo "导入 442/669: R22445"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22445", "姓名": "Anna MacDonald", "中介": "Ray", "国籍": "英国", "目前所在地": "深圳", "意向职位": "幼儿园", "性别": "女", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22445"
fi
sleep 0.3

# Record 443: R22446
echo "导入 443/669: R22446"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22446", "姓名": "Carlos", "中介": "Sherry", "肤色": "白"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22446"
fi
sleep 0.3

# Record 444: R22447
echo "导入 444/669: R22447"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22447", "姓名": "David R. Goetz", "中介": "Ray", "国籍": "美国", "教学经验": "12年", "目前所在地": "境外·美国", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22447"
fi
sleep 0.3

# Record 445: R22448
echo "导入 445/669: R22448"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22448", "姓名": "Danielle Neal", "中介": "Ray", "国籍": "英国", "目前所在地": "深圳", "意向职位": "戏剧", "性别": "女", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22448"
fi
sleep 0.3

# Record 446: R22449
echo "导入 446/669: R22449"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22449", "姓名": "Ralton  Roman", "中介": "Ray", "国籍": "南非", "目前所在地": "深圳", "意向职位": "幼儿园、小学", "薪资期望": "20K+", "性别": "男", "肤色": "浅黑", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22449"
fi
sleep 0.3

# Record 447: R22450
echo "导入 447/669: R22450"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22450", "姓名": "Shawn Macaulay", "中介": "优才社郭", "国籍": "南非", "专业": "教育学", "资格证": "QTS", "目前所在地": "深圳", "意向职位": "小学ESL", "薪资期望": "30K", "性别": "男", "肤色": "白", "学历": "硕士"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22450"
fi
sleep 0.3

# Record 448: R22451
echo "导入 448/669: R22451"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22451", "姓名": "Gabriel Bilbao", "中介": "Ray", "国籍": "美国", "目前所在地": "深圳", "薪资期望": "20-23k", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22451"
fi
sleep 0.3

# Record 449: R22452
echo "导入 449/669: R22452"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22452", "姓名": "Peter John 康波", "中介": "Ray", "国籍": "美国", "专业": "地理", "教学经验": "10年", "目前所在地": "深圳", "意向职位": "小初高", "薪资期望": "25K", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22452"
fi
sleep 0.3

# Record 450: R22453
echo "导入 450/669: R22453"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22453", "姓名": "Ahmed Ahmed", "中介": "中介Jack", "国籍": "英国", "专业": "物理", "目前所在地": "深圳", "意向职位": "初高中", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22453"
fi
sleep 0.3

# Record 451: R22454
echo "导入 451/669: R22454"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22454", "姓名": "MARGIE\nSANABRIA", "中介": "Ray", "国籍": "哥伦比亚", "教学经验": "3年", "目前所在地": "南宁哈罗", "意向职位": "小学ESL", "性别": "女", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22454"
fi
sleep 0.3

# Record 452: R22455
echo "导入 452/669: R22455"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22455", "姓名": "Rosemary", "中介": "Sherry", "国籍": "英国", "目前所在地": "境外·英国", "意向职位": "小学ESL", "性别": "女", "肤色": "浅黑", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22455"
fi
sleep 0.3

# Record 453: R22456
echo "导入 453/669: R22456"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22456", "姓名": "Paul McTaggart", "中介": "Ray", "国籍": "美国", "专业": "Social Science", "资格证": "CELTA", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22456"
fi
sleep 0.3

# Record 454: R22457
echo "导入 454/669: R22457"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22457", "姓名": "Eric Ling", "中介": "Ray", "国籍": "英国华裔", "专业": "PGCE 早教", "资格证": "早教管理学", "教学经验": "10年", "目前所在地": "深圳", "意向城市": "深圳", "意向职位": "30K", "性别": "男", "肤色": "亚裔", "学历": "硕士"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22457"
fi
sleep 0.3

# Record 455: R22458
echo "导入 455/669: R22458"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22458", "姓名": "Alex Rodriguez", "中介": "Ray", "国籍": "哥伦比亚", "专业": "早教", "资格证": "CELTA", "教学经验": "13年", "目前所在地": "广州", "上岗时间": "Sep.2023", "签证类型": "工作签证", "意向城市": "广州", "意向职位": "幼儿园、小学、体育", "薪资期望": "33-40K+住宿", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22458"
fi
sleep 0.3

# Record 456: R22459
echo "导入 456/669: R22459"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22459", "姓名": "Ahhah Mogale", "中介": "Ray", "国籍": "南非", "专业": "本科", "资格证": "经济", "教学经验": "0", "目前所在地": "北京", "意向城市": "不限", "意向职位": "幼儿园、培训中心", "薪资期望": "12-15K", "性别": "女", "肤色": "黑", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22459"
fi
sleep 0.3

# Record 457: R22460
echo "导入 457/669: R22460"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22460", "姓名": "Tony Lebedev", "中介": "Ray", "国籍": "俄罗斯", "专业": "物理与应用数学", "目前所在地": "境外", "意向职位": "数学", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22460"
fi
sleep 0.3

# Record 458: R22461
echo "导入 458/669: R22461"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22461", "姓名": "Molly", "中介": "Ray", "国籍": "菲律宾", "专业": "教育学", "资格证": "TESOL", "目前所在地": "境外", "薪资期望": "15+住宿", "性别": "女", "肤色": "亚裔", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22461"
fi
sleep 0.3

# Record 459: R22462
echo "导入 459/669: R22462"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22462", "姓名": "Mesa E. Casiles", "中介": "海丽达林老师", "国籍": "菲律宾", "目前所在地": "境外", "性别": "女", "肤色": "亚裔", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22462"
fi
sleep 0.3

# Record 460: R22463
echo "导入 460/669: R22463"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22463", "姓名": "Kate-Maricar Sjekloca", "中介": "Ray", "国籍": "菲律宾", "专业": "音乐教育", "目前所在地": "深圳", "意向职位": "音乐", "性别": "女", "肤色": "亚裔", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22463"
fi
sleep 0.3

# Record 461: R22464
echo "导入 461/669: R22464"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22464", "姓名": "MEraj w", "中介": "Ray", "国籍": "土耳其", "目前所在地": "南宁", "意向城市": "四川、重庆、广州", "意向职位": "幼儿园", "薪资期望": "18-20", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22464"
fi
sleep 0.3

# Record 462: R22465
echo "导入 462/669: R22465"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22465", "姓名": "Franco Lozano", "中介": "Ray", "国籍": "哥伦比亚", "专业": "教育学", "资格证": "TEFL", "教学经验": "10年", "目前所在地": "温州", "性别": "男", "肤色": "棕", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22465"
fi
sleep 0.3

# Record 463: R22466
echo "导入 463/669: R22466"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22466", "姓名": "TERRY S. LEWIS", "中介": "Byron", "国籍": "英国", "资格证": "教师资格证", "教学经验": "3年", "目前所在地": "深圳", "意向城市": "深圳", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22466"
fi
sleep 0.3

# Record 464: R22467
echo "导入 464/669: R22467"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22467", "姓名": "Nick Podriadov", "中介": "Byron", "国籍": "俄罗斯", "专业": "英语文学", "教学经验": "10年", "目前所在地": "深圳", "意向城市": "深圳", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22467"
fi
sleep 0.3

# Record 465: R22468
echo "导入 465/669: R22468"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22468", "姓名": "Richard Budet", "中介": "Ray", "国籍": "德国", "专业": "教育学", "资格证": "QTS,德国教师资格证", "教学经验": "6年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "意向城市": "深圳", "薪资期望": "25-30K", "性别": "男", "肤色": "白", "学历": "硕士"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22468"
fi
sleep 0.3

# Record 466: R22469
echo "导入 466/669: R22469"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22469", "姓名": "Ross Delaney", "中介": "Ray", "国籍": "爱尔兰", "专业": "化学", "教学经验": "3年", "目前所在地": "深圳南山", "上岗时间": "Aug.2023", "意向城市": "深圳福田、南山", "意向职位": "高中，AP,IGCSE,科学，化学，生物", "薪资期望": "30K税后+住宿", "性别": "男", "肤色": "白", "学历": "硕士", "年龄": 30.0, "更新日期": 1642723200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22469"
fi
sleep 0.3

# Record 467: R22470
echo "导入 467/669: R22470"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22470", "姓名": "JAKE TYLER", "中介": "Ray", "国籍": "英国", "资格证": "TEFL", "教学经验": "3年", "目前所在地": "深圳", "意向城市": "深圳", "意向职位": "小学，初中", "薪资期望": "23-25K", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22470"
fi
sleep 0.3

# Record 468: R22471
echo "导入 468/669: R22471"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22471", "姓名": "Dana", "中介": "Sherry", "国籍": "塞尔维亚", "专业": "音乐", "教学经验": "5年", "目前所在地": "上海", "上岗时间": "Aug.2023", "意向城市": "上海/深圳", "意向职位": "音乐", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1649116800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22471"
fi
sleep 0.3

# Record 469: R22472
echo "导入 469/669: R22472"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22472", "姓名": "Kyle Sciacca", "中介": "Ray", "国籍": "美国", "资格证": "TEFL", "教学经验": "14年", "目前所在地": "境外·泰国", "上岗时间": "Aug.2023", "意向职位": "中小学、幼儿园", "薪资期望": "25K+", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22472"
fi
sleep 0.3

# Record 470: R22473
echo "导入 470/669: R22473"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22473", "姓名": "Kwesi Idun", "中介": "Indeed", "国籍": "英国", "专业": "通讯专业", "性别": "男"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22473"
fi
sleep 0.3

# Record 471: R22474
echo "导入 471/669: R22474"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22474", "姓名": "Zara Khan", "中介": "Ray", "国籍": "巴基斯坦", "专业": "Arts", "资格证": "TEFL", "教学经验": "5年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "签证类型": "中国绿卡", "意向城市": "深圳", "意向职位": "幼儿园", "薪资期望": "25k", "性别": "女", "肤色": "白"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22474"
fi
sleep 0.3

# Record 472: R22475
echo "导入 472/669: R22475"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22475", "姓名": "Terry Edwards", "中介": "Ray", "国籍": "牙买加", "目前所在地": "宁波", "上岗时间": "Aug.2023", "性别": "女", "肤色": "黑"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22475"
fi
sleep 0.3

# Record 473: R22476
echo "导入 473/669: R22476"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22476", "姓名": "Natasha Murtaza", "中介": "Ray", "国籍": "巴基斯坦", "专业": "经济学", "资格证": "IB证书", "目前所在地": "深圳", "上岗时间": "Aug.2023", "意向职位": "小学", "性别": "女", "肤色": "白", "学历": "博士"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22476"
fi
sleep 0.3

# Record 474: R22477
echo "导入 474/669: R22477"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22477", "姓名": "Alexander Chikuvanyanga", "中介": "Ray", "国籍": "津巴布韦", "专业": "教育学", "资格证": "TESOL", "教学经验": "6年", "目前所在地": "安徽宿州", "上岗时间": "Aug.2023", "性别": "男", "肤色": "黑"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22477"
fi
sleep 0.3

# Record 475: R22478
echo "导入 475/669: R22478"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22478", "姓名": "Alex Rodriguez", "中介": "Ray", "国籍": "哥伦比亚", "专业": "早教专业", "资格证": "CELTA", "教学经验": "13年", "目前所在地": "广州", "上岗时间": "Aug.2023", "意向城市": "广州", "意向职位": "幼儿园", "薪资期望": "33+住宿", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22478"
fi
sleep 0.3

# Record 476: R22479
echo "导入 476/669: R22479"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22479", "姓名": "Marco Jara", "中介": "Ray", "国籍": "哥斯达黎加/美国", "专业": "英语", "教学经验": "12年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "签证类型": "中国绿卡", "意向城市": "广州", "意向职位": "幼儿园", "薪资期望": "28-35K", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22479"
fi
sleep 0.3

# Record 477: R22480
echo "导入 477/669: R22480"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22480", "姓名": "Maryam Reda", "中介": "Ray", "国籍": "摩洛哥", "专业": "英语语言与文学", "资格证": "TESOL", "教学经验": "4年", "目前所在地": "境外·摩洛哥", "上岗时间": "Aug.2023", "薪资期望": "13-14K", "性别": "女", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22480"
fi
sleep 0.3

# Record 478: R22481
echo "导入 478/669: R22481"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22481", "姓名": "Andre Hooke", "中介": "Ray", "国籍": "牙买加", "资格证": "BC CERTIFIED/IPGCE", "教学经验": "3年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "广东", "性别": "男", "肤色": "黑"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22481"
fi
sleep 0.3

# Record 479: R22482
echo "导入 479/669: R22482"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22482", "姓名": "Lala Khoza", "中介": "Ray", "国籍": "南非", "教学经验": "8年", "目前所在地": "中东", "上岗时间": "Aug.2023", "薪资期望": "25+住宿", "性别": "女", "肤色": "黑", "学历": "硕士"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22482"
fi
sleep 0.3

# Record 480: R22483
echo "导入 480/669: R22483"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22483", "姓名": "Hamza SIDKI", "中介": "Ray", "国籍": "摩洛哥", "专业": "经济", "教学经验": "2年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "签证类型": "商务签", "意向城市": "深圳", "意向职位": "经济", "薪资期望": "18-20K", "性别": "男", "肤色": "浅黑", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22483"
fi
sleep 0.3

# Record 481: R22484
echo "导入 481/669: R22484"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22484", "姓名": "Darko Pajovic,", "中介": "Ray", "国籍": "塞尔维亚", "目前所在地": "深圳", "上岗时间": "Aug.2023", "意向城市": "深圳", "意向职位": "足球、体育", "性别": "男", "肤色": "白"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22484"
fi
sleep 0.3

# Record 482: R22485
echo "导入 482/669: R22485"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22485", "姓名": "Paul-Enrique", "中介": "Ray", "国籍": "法国", "资格证": "PGCE", "教学经验": "10年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "意向城市": "深圳", "意向职位": "经济", "性别": "男", "肤色": "白"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22485"
fi
sleep 0.3

# Record 483: R22486
echo "导入 483/669: R22486"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22486", "姓名": "Joshua R. Mullis", "中介": "日和夏Monica", "国籍": "美国", "专业": "教育学", "资格证": "TESOL", "教学经验": "20年", "目前所在地": "境外·柬埔寨", "上岗时间": "Aug.2023", "意向城市": "深圳", "意向职位": "幼儿园、管理岗", "性别": "男", "肤色": "白", "学历": "硕士"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22486"
fi
sleep 0.3

# Record 484: R22487
echo "导入 484/669: R22487"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22487", "姓名": "Sal Macias", "中介": "EF-Paul", "国籍": "美国", "专业": "儿童发展", "目前所在地": "境外·美国", "上岗时间": "Aug.2023", "意向城市": "深圳", "意向职位": "幼儿园", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22487"
fi
sleep 0.3

# Record 485: R22488
echo "导入 485/669: R22488"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22488", "姓名": "Stankovic Stefan", "中介": "Ray", "国籍": "塞尔维亚", "专业": "体育教练", "资格证": "篮球教练", "教学经验": "10年", "目前所在地": "境外·日本", "上岗时间": "Aug.2023", "意向城市": "深圳", "薪资期望": "25k", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22488"
fi
sleep 0.3

# Record 486: R22489
echo "导入 486/669: R22489"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22489", "姓名": "Zayne Ehlers", "中介": "Ray", "国籍": "南非", "专业": "早教专业", "资格证": "TEFL", "教学经验": "4年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "意向城市": "深圳", "意向职位": "幼儿园", "薪资期望": "28-32k", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22489"
fi
sleep 0.3

# Record 487: R22490
echo "导入 487/669: R22490"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22490", "姓名": "GEORGIOS BESAS", "中介": "Ray", "国籍": "英国", "专业": "英语语言学本科", "资格证": "QTS", "教学经验": "20年", "目前所在地": "境外·英国", "上岗时间": "Aug.2023", "性别": "男", "肤色": "白"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22490"
fi
sleep 0.3

# Record 488: R22491
echo "导入 488/669: R22491"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22491", "姓名": "Stacy  Otsile", "中介": "Ray", "国籍": "南非", "专业": "教育学", "教学经验": "3年", "上岗时间": "Aug.2023", "意向城市": "上海、深圳", "意向职位": "幼儿园", "薪资期望": "27K税后", "性别": "男", "肤色": "浅黑", "学历": "硕士"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22491"
fi
sleep 0.3

# Record 489: R22492
echo "导入 489/669: R22492"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22492", "姓名": "Ron Price", "中介": "Ray", "国籍": "美国", "专业": "教育学", "目前所在地": "深圳", "上岗时间": "Aug.2023", "签证类型": "工作签证", "工签职位": "英语教师", "意向城市": "深圳", "意向职位": "大学、管理岗", "跟进记录": "已拒SAIS合同", "性别": "男", "肤色": "黑", "学历": "博士", "更新日期": 1642723200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22492"
fi
sleep 0.3

# Record 490: R22493
echo "导入 490/669: R22493"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22493", "姓名": "Cesar Daniel Altamirano Azurduy", "中介": "Ray", "国籍": "玻利维亚", "专业": "体育教育与运动", "教学经验": "11年", "目前所在地": "上海", "上岗时间": "Aug.2023", "签证类型": "工作签证", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22493"
fi
sleep 0.3

# Record 491: R22494
echo "导入 491/669: R22494"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22494", "姓名": "Adam Hinkley", "中介": "Ray", "国籍": "美国", "专业": "教育学", "资格证": "教师资格证", "教学经验": "10年", "目前所在地": "境外·美国", "上岗时间": "Aug.2023", "性别": "男", "肤色": "白", "学历": "硕士"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22494"
fi
sleep 0.3

# Record 492: R22495
echo "导入 492/669: R22495"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22495", "姓名": "Callum Azam", "中介": "中介Jack吴", "国籍": "英国", "专业": "通信", "资格证": "TESOL", "教学经验": "6年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "小学/初中/高中/大学\n英语/戏剧/交流", "薪资期望": "23K", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22495"
fi
sleep 0.3

# Record 493: R22496
echo "导入 493/669: R22496"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22496", "姓名": "Jerry Abraham", "中介": "Ray", "国籍": "美国", "专业": "物理", "资格证": "TEFL", "教学经验": "3.5年", "目前所在地": "盐城", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "不限", "意向职位": "幼儿园、培训中心", "薪资期望": "29K+住宿", "性别": "男", "肤色": "棕", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22496"
fi
sleep 0.3

# Record 494: R22497
echo "导入 494/669: R22497"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22497", "姓名": "Carmen Mineo", "中介": "广州中介Candy", "国籍": "南非", "专业": "旅游管理", "资格证": "IB PYP", "教学经验": "3.5年", "目前所在地": "广州", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "广东省", "意向职位": "幼儿园", "薪资期望": "25-28K 加补贴", "性别": "女", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22497"
fi
sleep 0.3

# Record 495: R22498
echo "导入 495/669: R22498"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22498", "姓名": "Dylan Abrahamse", "中介": "广州中介Candy", "国籍": "南非", "专业": "教育学", "资格证": "IB PYP", "教学经验": "3.5年", "目前所在地": "广州", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "广东省", "意向职位": "幼儿园", "薪资期望": "25-28K 加补贴", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22498"
fi
sleep 0.3

# Record 496: R22499
echo "导入 496/669: R22499"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22499", "姓名": "Rumaiysa Haq", "中介": "日和夏Monica", "国籍": "南非", "专业": "会计与金融", "教学经验": "3年", "目前所在地": "境外·南非", "上岗时间": "Aug.2023", "意向职位": "幼儿园、小学", "性别": "女", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22499"
fi
sleep 0.3

# Record 497: R22500
echo "导入 497/669: R22500"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22500", "姓名": "Zamran Bhabha", "中介": "日和夏Monica", "国籍": "南非", "资格证": "TEFL", "教学经验": "2年", "目前所在地": "境外·韩国", "上岗时间": "Aug.2023", "意向职位": "幼儿园、小学", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22500"
fi
sleep 0.3

# Record 498: R22501
echo "导入 498/669: R22501"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22501", "姓名": "Joshua Rawlinson", "中介": "Ray", "国籍": "英国", "资格证": "TEFL", "教学经验": "5年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "薪资期望": "22-25k", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22501"
fi
sleep 0.3

# Record 499: R22502
echo "导入 499/669: R22502"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22502", "姓名": "Donald   Pelfrey", "中介": "Ray", "国籍": "美国", "专业": "教育学-社会科学", "资格证": "教师资格证", "教学经验": "10.年", "目前所在地": "深圳", "上岗时间": "Sep.2023", "签证类型": "家庭签证", "意向城市": "深圳", "意向职位": "社会科学、人文、地理、英语", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22502"
fi
sleep 0.3

# Record 500: R22503
echo "导入 500/669: R22503"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22503", "姓名": "Dan", "中介": "Ray", "国籍": "英国", "上岗时间": "Aug.2023", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22503"
fi
sleep 0.3

# Record 501: R22504
echo "导入 501/669: R22504"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22504", "姓名": "Michelle Chang", "中介": "Ray", "国籍": "美国", "专业": "音乐表演与教育", "资格证": "K-12音乐， IB PYP", "教学经验": "15年", "目前所在地": "北京", "上岗时间": "Aug.2023", "签证类型": "台胞证", "意向城市": "深圳、北京、天津", "薪资期望": "28K+", "性别": "女", "学历": "硕士"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22504"
fi
sleep 0.3

# Record 502: R22505
echo "导入 502/669: R22505"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22505", "姓名": "K A", "中介": "中介June盈", "国籍": "亚美尼亚", "专业": "表演艺术", "资格证": "TEFL", "教学经验": "8年", "目前所在地": "广州", "上岗时间": "Aug.2023", "签证类型": "工作签证", "工签职位": "戏剧教师", "意向城市": "广州或者附近城市，上海", "意向职位": "小学", "薪资期望": "25-26k", "性别": "女", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22505"
fi
sleep 0.3

# Record 503: R22506
echo "导入 503/669: R22506"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22506", "姓名": "James Ziegler", "中介": "Ray", "国籍": "美国", "专业": "人类学", "资格证": "TEFL", "教学经验": "12年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "大学或高中", "薪资期望": "30000", "性别": "男", "肤色": "白", "学历": "硕士"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22506"
fi
sleep 0.3

# Record 504: R22507
echo "导入 504/669: R22507"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22507", "姓名": "Sian Redmond", "中介": "Ray", "国籍": "英国", "专业": "动物园生物学", "资格证": "TEFL", "教学经验": "5年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "罗湖", "意向职位": "英语、科学、homeroom", "薪资期望": "24-30k.", "性别": "女", "肤色": "白", "学历": "博士", "更新日期": 1650412800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22507"
fi
sleep 0.3

# Record 505: R22508
echo "导入 505/669: R22508"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22508", "姓名": "Marjorie Namen", "中介": "Borja", "国籍": "美国", "专业": "通讯", "资格证": "TEFL", "教学经验": "10年", "目前所在地": "广州", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "广州", "意向职位": "幼儿园", "薪资期望": "28K+", "性别": "女", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22508"
fi
sleep 0.3

# Record 506: R22509
echo "导入 506/669: R22509"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22509", "姓名": "Diana Protizane", "中介": "Ray-indeed", "国籍": "拉脱维亚", "专业": "英语与写作", "资格证": "TEFL", "教学经验": "0", "目前所在地": "境外·英国", "上岗时间": "Sep.2023", "意向职位": "幼儿园，小学，初中", "性别": "女", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22509"
fi
sleep 0.3

# Record 507: R22510
echo "导入 507/669: R22510"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22510", "姓名": "Aysegul Butterworth", "中介": "优才社郭", "国籍": "土耳其", "专业": "艺术", "资格证": "TEFL", "目前所在地": "深圳", "性别": "女", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22510"
fi
sleep 0.3

# Record 508: R22511
echo "导入 508/669: R22511"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22511", "姓名": "Dan Carpenter", "中介": "Ray-indeed", "国籍": "英国", "专业": "数学与应用", "目前所在地": "境外·英国", "上岗时间": "Nov.2023", "意向职位": "小学，初中", "薪资期望": "15-18K", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22511"
fi
sleep 0.3

# Record 509: R22512
echo "导入 509/669: R22512"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22512", "姓名": "Charles Duntoye", "中介": "Ray", "国籍": "英国", "专业": "英语语言学本科", "资格证": "TEFL", "教学经验": "8年", "目前所在地": "境外·英国", "上岗时间": "Sep.2023", "意向职位": "小学，初中", "薪资期望": "18K+", "性别": "男", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22512"
fi
sleep 0.3

# Record 510: R22513
echo "导入 510/669: R22513"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22513", "姓名": "Hajra", "中介": "Ray", "国籍": "南非", "专业": "教育学", "教学经验": "10年", "目前所在地": "境外·南非", "上岗时间": "Sep.2023", "意向城市": "上海及周边", "意向职位": "幼儿园", "薪资期望": "18K+3K", "性别": "女", "肤色": "浅黑", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22513"
fi
sleep 0.3

# Record 511: R22514
echo "导入 511/669: R22514"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22514", "姓名": "Humaira", "中介": "Ray", "国籍": "南非", "专业": "教育学", "教学经验": "5年", "目前所在地": "境外·南非", "上岗时间": "Sep.2023", "意向城市": "上海及周边", "意向职位": "幼儿园", "薪资期望": "18K+3K", "性别": "女", "肤色": "浅黑", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22514"
fi
sleep 0.3

# Record 512: R22515
echo "导入 512/669: R22515"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22515", "姓名": "Quintin Matlou", "中介": "Ray", "国籍": "南非", "专业": "媒体研究", "资格证": "CELTA", "教学经验": "3年", "目前所在地": "境外·南非", "薪资期望": "14K+住宿补贴", "性别": "男", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22515"
fi
sleep 0.3

# Record 513: R22516
echo "导入 513/669: R22516"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22516", "姓名": "Donald Mokoana", "中介": "Ray", "国籍": "南非", "专业": "教育学", "教学经验": "3年", "目前所在地": "深圳", "上岗时间": "Sep.2023", "意向城市": "深圳、上海", "意向职位": "幼儿园", "薪资期望": "26k税后", "性别": "男", "肤色": "黑", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22516"
fi
sleep 0.3

# Record 514: R22517
echo "导入 514/669: R22517"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22517", "姓名": "Maksimilijan (Max)", "中介": "Ray", "国籍": "塞尔维亚", "专业": "英语", "教学经验": "4年", "目前所在地": "深圳", "上岗时间": "Sep.2023", "意向职位": "科学", "薪资期望": "30K", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22517"
fi
sleep 0.3

# Record 515: R22518
echo "导入 515/669: R22518"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22518", "姓名": "Tshira", "中介": "Ray", "国籍": "美国", "专业": "教育学", "资格证": "TEFL", "教学经验": "4年", "目前所在地": "南京", "上岗时间": "Sep.2023", "意向城市": "不限", "意向职位": "不限", "薪资期望": "26K", "性别": "男", "肤色": "黑", "学历": "硕士"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22518"
fi
sleep 0.3

# Record 516: R22519
echo "导入 516/669: R22519"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22519", "姓名": "David Pastorcich", "中介": "Ray", "国籍": "美国", "教学经验": "8年", "目前所在地": "深圳", "上岗时间": "Sep.2023", "薪资期望": "25-30K", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22519"
fi
sleep 0.3

# Record 517: R22520
echo "导入 517/669: R22520"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22520", "姓名": "Jean-Claude", "中介": "Ray", "国籍": "南非", "专业": "教育学硕士在读", "资格证": "TEFL", "教学经验": "6年", "目前所在地": "深圳", "上岗时间": "Sep.2023", "意向职位": "幼儿园，小学", "薪资期望": "25-30K", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22520"
fi
sleep 0.3

# Record 518: R22521
echo "导入 518/669: R22521"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22521", "姓名": "Etienne Marais", "中介": "Ray", "国籍": "南非", "专业": "教育学", "资格证": "TEFL", "教学经验": "16年", "目前所在地": "境外·南非", "上岗时间": "Sep.2023", "意向城市": "深圳，浙江，香港", "薪资期望": "30K", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22521"
fi
sleep 0.3

# Record 519: R22522
echo "导入 519/669: R22522"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22522", "姓名": "Mark Daniel Solomon", "中介": "Ray", "国籍": "美国", "专业": "数学专业", "教学经验": "3年", "目前所在地": "境外·美国", "上岗时间": "Sep.2023", "意向城市": "深圳，广州，", "意向职位": "高中数学", "薪资期望": "年薪30万+住宿", "性别": "男", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22522"
fi
sleep 0.3

# Record 520: R22523
echo "导入 520/669: R22523"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22523", "姓名": "WEIQIAN\nSUN\n(VICKY)", "中介": "Ray", "国籍": "中国", "专业": "经济学", "教学经验": "2年", "上岗时间": "Sep.2023", "意向城市": "深圳，广州，", "意向职位": "高中经济学", "性别": "女", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22523"
fi
sleep 0.3

# Record 521: R22524
echo "导入 521/669: R22524"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22524", "姓名": "Brogan Somer Mathieson", "中介": "李克难", "国籍": "英国", "专业": "中文，日文", "资格证": "TEFL，戏剧", "目前所在地": "境外·英国", "上岗时间": "Sep.2023", "意向城市": "深圳", "意向职位": "幼儿园，戏剧", "性别": "女", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22524"
fi
sleep 0.3

# Record 522: R22525
echo "导入 522/669: R22525"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22525", "姓名": "KESHIN NAICKER", "中介": "Dr. James", "国籍": "南非", "资格证": "PGCE", "教学经验": "9年", "目前所在地": "天津", "上岗时间": "Sep.2023", "意向职位": "艺术", "性别": "男", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22525"
fi
sleep 0.3

# Record 523: R22526
echo "导入 523/669: R22526"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22526", "姓名": "Christopher Summers", "中介": "Ray-Serious", "国籍": "美国", "资格证": "TESOL", "教学经验": "6年", "目前所在地": "境外·美国", "上岗时间": "Sep.2023", "意向城市": "深圳", "薪资期望": "27K", "性别": "男", "肤色": "白", "学历": "硕士"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22526"
fi
sleep 0.3

# Record 524: R22527
echo "导入 524/669: R22527"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22527", "姓名": "Philip Pemberton", "中介": "Byron", "国籍": "英国", "专业": "计算机科学与人工智能", "资格证": "TEFL", "教学经验": "3年", "目前所在地": "深圳", "上岗时间": "Sep.2023", "意向城市": "深圳", "意向职位": "小学", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22527"
fi
sleep 0.3

# Record 525: R22528
echo "导入 525/669: R22528"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22528", "姓名": "（Lana）Nastasja Lana Mitic", "中介": "Ray", "国籍": "塞尔维亚", "专业": "本科生物，硕士环境科学", "资格证": "TEFL", "教学经验": "2.5年", "目前所在地": "深圳", "上岗时间": "Sep.2023", "意向城市": "福田、南山", "意向职位": "小学或高中", "性别": "女", "肤色": "白", "学历": "硕士"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22528"
fi
sleep 0.3

# Record 526: R22529
echo "导入 526/669: R22529"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22529", "姓名": "Mendy", "中介": "Ray", "国籍": "南非", "资格证": "TEFL", "教学经验": "3年", "目前所在地": "广州", "上岗时间": "ASAP", "意向城市": "深圳", "意向职位": "幼儿园", "性别": "女", "肤色": "黑", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22529"
fi
sleep 0.3

# Record 527: R22530
echo "导入 527/669: R22530"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22530", "姓名": "Ama", "中介": "Ray", "国籍": "加纳", "资格证": "TESOL", "教学经验": "4年", "目前所在地": "深圳", "上岗时间": "Sep.2023", "意向城市": "深圳", "意向职位": "幼儿园", "性别": "女", "肤色": "黑", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22530"
fi
sleep 0.3

# Record 528: R22531
echo "导入 528/669: R22531"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22531", "姓名": "Dane Michael Borraz Andres", "中介": "Ray", "国籍": "爱尔兰", "专业": "教育学", "教学经验": "8年", "目前所在地": "深圳", "上岗时间": "Sep.2023", "意向城市": "深圳", "意向职位": "幼儿园", "薪资期望": "30K税后", "性别": "男", "肤色": "白", "学历": "硕士"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22531"
fi
sleep 0.3

# Record 529: R22532
echo "导入 529/669: R22532"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22532", "姓名": "kiara Garcia", "中介": "Ray", "国籍": "美国", "资格证": "TEFL", "教学经验": "4年", "目前所在地": "深圳", "上岗时间": "Sep.2023", "意向城市": "深圳", "意向职位": "幼儿园", "薪资期望": "28K", "性别": "女", "肤色": "浅黑", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22532"
fi
sleep 0.3

# Record 530: R22533
echo "导入 530/669: R22533"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22533", "姓名": "Danish Shah", "中介": "Ray", "国籍": "英国", "教学经验": "6年", "目前所在地": "东莞", "上岗时间": "Sep.2023", "意向城市": "深圳", "意向职位": "幼儿园", "薪资期望": "28K税后", "性别": "男", "肤色": "浅黑", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22533"
fi
sleep 0.3

# Record 531: R22534
echo "导入 531/669: R22534"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22534", "姓名": "Shaun Li Stoffer", "中介": "日和夏Monica", "国籍": "美国", "专业": "教育学", "教学经验": "5年", "目前所在地": "深圳", "上岗时间": "Sep.2023", "意向城市": "深圳", "意向职位": "幼儿园", "薪资期望": "20-25税后", "性别": "男", "肤色": "白", "学历": "硕士"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22534"
fi
sleep 0.3

# Record 532: R22535
echo "导入 532/669: R22535"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22535", "姓名": "BrandonB", "中介": "中介Nana Taotao", "国籍": "加拿大", "专业": "社会学", "教学经验": "4年", "目前所在地": "北京", "上岗时间": "ASAP", "意向城市": "深圳", "意向职位": "幼儿园", "薪资期望": "28K税后", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22535"
fi
sleep 0.3

# Record 533: R22536
echo "导入 533/669: R22536"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22536", "姓名": "Theodore", "中介": "广州中介Candy", "国籍": "南非", "专业": "体育管理", "教学经验": "5年", "目前所在地": "宁波", "上岗时间": "Sep.2023", "意向城市": "不限", "意向职位": "幼儿园，小学，初中", "薪资期望": "23K", "性别": "男", "肤色": "黑", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22536"
fi
sleep 0.3

# Record 534: R22537
echo "导入 534/669: R22537"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22537", "姓名": "Cherry", "中介": "广州中介Candy", "国籍": "南非", "专业": "教育学", "教学经验": "4年", "上岗时间": "Sep.2023", "意向城市": "深圳", "意向职位": "幼儿园，小学，初中", "薪资期望": "25K", "性别": "男", "肤色": "黑", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22537"
fi
sleep 0.3

# Record 535: R22538
echo "导入 535/669: R22538"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22538", "姓名": "Refilwe Mpho Mathule", "中介": "广州中介Candy", "国籍": "南非", "专业": "语言学", "资格证": "TEFL", "教学经验": "6年", "目前所在地": "广州", "上岗时间": "Sep.2023", "意向城市": "广州", "意向职位": "幼儿园", "薪资期望": "18-20k after tax+ housing", "性别": "女", "肤色": "黑", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22538"
fi
sleep 0.3

# Record 536: R22539
echo "导入 536/669: R22539"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22539", "姓名": "David Jerome", "中介": "Ray", "国籍": "美国", "资格证": "TESOL", "教学经验": "7年", "目前所在地": "深圳", "上岗时间": "Sep.2023", "意向城市": "深圳", "意向职位": "初高中、大学", "薪资期望": "19k-20k", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22539"
fi
sleep 0.3

# Record 537: R22540
echo "导入 537/669: R22540"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22540", "姓名": "Ryan Purves", "中介": "优才社郭", "国籍": "加拿大", "专业": "TESOL", "教学经验": "10年", "目前所在地": "长沙", "意向城市": "广东", "意向职位": "幼儿园", "性别": "男", "肤色": "白", "学历": "硕士"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22540"
fi
sleep 0.3

# Record 538: R22541
echo "导入 538/669: R22541"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22541", "姓名": "Smantha Gregory", "中介": "Ray", "国籍": "牙买加", "教学经验": "1年", "目前所在地": "深圳", "上岗时间": "Sep.2023", "意向城市": "深圳", "意向职位": "小学", "薪资期望": "20-24k", "性别": "女", "肤色": "黑", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22541"
fi
sleep 0.3

# Record 539: R22542
echo "导入 539/669: R22542"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22542", "姓名": "Feroza Mia", "中介": "Ray", "国籍": "南非", "专业": "教育领导学", "教学经验": "29年", "目前所在地": "南非", "上岗时间": "Sep.2023", "意向城市": "深圳", "意向职位": "幼儿园", "性别": "女", "肤色": "白", "学历": "硕士"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22542"
fi
sleep 0.3

# Record 540: R22543
echo "导入 540/669: R22543"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22543", "姓名": "Naeem Naidoo", "中介": "Ray", "国籍": "南非", "教学经验": "3年", "上岗时间": "Sep.2023", "意向城市": "深圳", "意向职位": "幼儿园", "性别": "男", "肤色": "黑", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22543"
fi
sleep 0.3

# Record 541: R22544
echo "导入 541/669: R22544"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22544", "姓名": "Nokwazi Bukhosini", "中介": "Ray", "国籍": "南非", "资格证": "PGCE", "教学经验": "2年", "目前所在地": "南非", "上岗时间": "Sep.2023", "意向城市": "深圳", "意向职位": "幼儿园", "性别": "女", "肤色": "黑", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22544"
fi
sleep 0.3

# Record 542: R22545
echo "导入 542/669: R22545"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22545", "姓名": "Lanesha McPherson Dennie", "中介": "Ray", "国籍": "牙买加", "专业": "心理/教育", "教学经验": "5年", "目前所在地": "佛山", "上岗时间": "Sep.2023", "意向城市": "广东", "意向职位": "小学", "薪资期望": "20-24k", "性别": "女", "肤色": "黑", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22545"
fi
sleep 0.3

# Record 543: R22546
echo "导入 543/669: R22546"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22546", "姓名": "JASON HOOMAN", "中介": "优才社郭", "国籍": "伊朗", "专业": "音乐", "教学经验": "6年", "目前所在地": "广州", "上岗时间": "Sep.2023", "意向城市": "广东", "意向职位": "音乐、幼儿园、小学", "薪资期望": "18-30K", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22546"
fi
sleep 0.3

# Record 544: R22547
echo "导入 544/669: R22547"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22547", "姓名": "Ndileka Ngidi", "中介": "优才社郭", "国籍": "南非", "教学经验": "4年", "目前所在地": "佛山", "上岗时间": "Sep.2023", "意向城市": "广东", "意向职位": "幼儿园", "薪资期望": "22k", "性别": "女", "肤色": "黑", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22547"
fi
sleep 0.3

# Record 545: R22548
echo "导入 545/669: R22548"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22548", "姓名": "Brian Finkelston", "中介": "Ray", "国籍": "美国", "专业": "管理", "目前所在地": "南昌", "上岗时间": "Sep.2023", "意向城市": "深圳", "意向职位": "幼儿园", "薪资期望": "22-25税后", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22548"
fi
sleep 0.3

# Record 546: R22549
echo "导入 546/669: R22549"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22549", "姓名": "Jack Ryan", "中介": "Ray", "国籍": "英国", "目前所在地": "深圳", "上岗时间": "Sep.2023", "意向城市": "上海、深圳", "薪资期望": "30+福利", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1649116800000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22549"
fi
sleep 0.3

# Record 547: R22550
echo "导入 547/669: R22550"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22550", "姓名": "Franziska", "中介": "海丽达Lilying", "国籍": "美国", "目前所在地": "深圳", "上岗时间": "Sep.2023", "意向城市": "深圳", "意向职位": "幼儿园", "性别": "女", "肤色": "白"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22550"
fi
sleep 0.3

# Record 548: R22551
echo "导入 548/669: R22551"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22551", "姓名": "Chris Sherman", "中介": "Ray", "国籍": "美国", "资格证": "教师资格证", "目前所在地": "深圳", "上岗时间": "Sep.2023", "意向城市": "深圳", "性别": "男", "肤色": "白"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22551"
fi
sleep 0.3

# Record 549: R22552
echo "导入 549/669: R22552"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22552", "姓名": "ALEKSANDAR \nKITANOVIC", "中介": "Ray", "国籍": "塞尔维亚", "目前所在地": "深圳", "上岗时间": "Sep.2023", "意向城市": "深圳", "意向职位": "经济学", "性别": "男", "肤色": "白"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22552"
fi
sleep 0.3

# Record 550: R22553
echo "导入 550/669: R22553"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22553", "姓名": "HAMZA IBRAHAM", "中介": "Ray", "国籍": "英国", "专业": "数学、物理", "教学经验": "8年", "目前所在地": "深圳", "上岗时间": "Sep.2023", "意向城市": "深圳", "意向职位": "数学、物理、化学", "性别": "男", "肤色": "棕", "学历": "硕士"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22553"
fi
sleep 0.3

# Record 551: R22554
echo "导入 551/669: R22554"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22554", "姓名": "Arman Gison", "中介": "优才社郭", "国籍": "俄罗斯", "专业": "艺术和建筑设计", "教学经验": "5年", "目前所在地": "北京", "上岗时间": "Sep.2023", "意向城市": "深圳", "意向职位": "艺术", "性别": "男", "肤色": "白", "学历": "硕士"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22554"
fi
sleep 0.3

# Record 552: R22555
echo "导入 552/669: R22555"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22555", "姓名": "RITA SAAD", "中介": "Ray", "国籍": "加拿大", "教学经验": "5年", "目前所在地": "深圳", "上岗时间": "Sep.2023", "意向城市": "深圳", "性别": "女", "肤色": "白", "年龄": 50.0}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22555"
fi
sleep 0.3

# Record 553: R22556
echo "导入 553/669: R22556"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22556", "姓名": "Kelly Harper", "中介": "Ray", "国籍": "英国", "专业": "英语与历史", "教学经验": "16年", "目前所在地": "深圳", "上岗时间": "Sep.2023", "意向职位": "英语、文学", "薪资期望": "30-35K", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22556"
fi
sleep 0.3

# Record 554: R22557
echo "导入 554/669: R22557"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22557", "姓名": "Gerald Adams", "中介": "Ray", "国籍": "美国", "专业": "英语文学", "教学经验": "10年以上", "目前所在地": "上海", "上岗时间": "Sep.2023", "意向城市": "上海、深圳", "薪资期望": "30-35K", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22557"
fi
sleep 0.3

# Record 555: R22558
echo "导入 555/669: R22558"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22558", "姓名": "Sherene mcnaught", "中介": "Ray", "国籍": "牙买加", "教学经验": "1年", "目前所在地": "深圳", "上岗时间": "Sep.2023", "意向城市": "深圳", "意向职位": "幼儿园，小学", "薪资期望": "15+", "性别": "女", "肤色": "黑", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22558"
fi
sleep 0.3

# Record 556: R22559
echo "导入 556/669: R22559"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22559", "姓名": "Monica Nguetta", "中介": "Ray", "国籍": "美国", "教学经验": "5年", "目前所在地": "深圳", "上岗时间": "Sep.2023", "意向城市": "深圳，广州", "意向职位": "幼儿园，小学", "薪资期望": "协商", "性别": "女", "肤色": "黑", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22559"
fi
sleep 0.3

# Record 557: R22560
echo "导入 557/669: R22560"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22560", "姓名": "Shubila", "中介": "明星", "国籍": "坦桑尼亚", "目前所在地": "深圳", "上岗时间": "Sep.2023", "性别": "女", "肤色": "黑", "学历": "硕士"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22560"
fi
sleep 0.3

# Record 558: R22561
echo "导入 558/669: R22561"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22561", "姓名": "Seline", "中介": "Greg", "国籍": "特尼达特", "目前所在地": "深圳", "上岗时间": "Sep.2023", "意向城市": "深圳", "性别": "女", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22561"
fi
sleep 0.3

# Record 559: R22562
echo "导入 559/669: R22562"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22562", "姓名": "Hassan", "中介": "Ray", "国籍": "巴基斯坦", "目前所在地": "深圳", "性别": "男", "学历": "博士"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22562"
fi
sleep 0.3

# Record 560: R22563
echo "导入 560/669: R22563"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22563", "姓名": "Bronnie", "中介": "Himo", "国籍": "南非", "性别": "女"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22563"
fi
sleep 0.3

# Record 561: R22564
echo "导入 561/669: R22564"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22564", "姓名": "Robina", "中介": "Ray", "国籍": "英国", "目前所在地": "深圳", "性别": "女"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22564"
fi
sleep 0.3

# Record 562: R22565
echo "导入 562/669: R22565"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22565", "姓名": "Nenad", "中介": "Ray", "国籍": "塞尔维亚", "目前所在地": "深圳", "意向职位": "地理", "性别": "男"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22565"
fi
sleep 0.3

# Record 563: R22566
echo "导入 563/669: R22566"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22566", "姓名": "Joshua Rawlinson", "中介": "Ray", "国籍": "英国", "资格证": "TEFL", "教学经验": "5年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "薪资期望": "22-25k", "性别": "男", "肤色": "白", "学历": "本科", "年龄": 30.0}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22566"
fi
sleep 0.3

# Record 564: R22567
echo "导入 564/669: R22567"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22567", "姓名": "Jan Jarosinski", "中介": "Ray", "国籍": "澳大利亚", "性别": "男"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22567"
fi
sleep 0.3

# Record 565: R22568
echo "导入 565/669: R22568"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22568", "姓名": "Joel Samuel Nicholson", "中介": "Ray", "国籍": "英国", "教学经验": "10.年", "目前所在地": "厦门", "上岗时间": "Aug. 2025", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22568"
fi
sleep 0.3

# Record 566: R22569
echo "导入 566/669: R22569"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22569", "姓名": "Amandeep Heer", "中介": "Guo老师", "国籍": "加拿大", "专业": "数学", "资格证": "数学教师资格证", "教学经验": "3年", "上岗时间": "Aug. 2025", "性别": "男", "肤色": "亚裔", "学历": "硕士"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22569"
fi
sleep 0.3

# Record 567: R22570
echo "导入 567/669: R22570"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22570", "姓名": "Michael P", "中介": "Cindy Feng", "国籍": "美国", "专业": "本科计算机&经济学", "资格证": "TEFL", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22570"
fi
sleep 0.3

# Record 568: R22571
echo "导入 568/669: R22571"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22571", "姓名": "Izabela Szepietowska", "中介": "Ray", "国籍": "波兰", "性别": "女", "肤色": "白", "学历": "硕士"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22571"
fi
sleep 0.3

# Record 569: R22572
echo "导入 569/669: R22572"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22572", "姓名": "Alex Lloyd", "中介": "EF-Paul", "国籍": "美国", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22572"
fi
sleep 0.3

# Record 570: R22573
echo "导入 570/669: R22573"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22573", "姓名": "Joseph Rutherford", "中介": "中介Jack吴", "国籍": "英国", "专业": "历史", "资格证": "TEFL", "教学经验": "3", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22573"
fi
sleep 0.3

# Record 571: R22574
echo "导入 571/669: R22574"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22574", "姓名": "Ryan Hill", "中介": "Ray", "国籍": "美国", "专业": "英文文学", "资格证": "TEFL", "教学经验": "4年", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22574"
fi
sleep 0.3

# Record 572: R22575
echo "导入 572/669: R22575"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22575", "姓名": "Joshua Walker", "中介": "Nemo", "国籍": "美国", "教学经验": "9年", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22575"
fi
sleep 0.3

# Record 573: R22576
echo "导入 573/669: R22576"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22576", "姓名": "BENJAMIN TAYLOR", "中介": "Nemo", "国籍": "英国", "资格证": "PGCE", "教学经验": "7年", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22576"
fi
sleep 0.3

# Record 574: R22577
echo "导入 574/669: R22577"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22577", "姓名": "Jay Ross", "中介": "Ray"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22577"
fi
sleep 0.3

# Record 575: R22578
echo "导入 575/669: R22578"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22578", "姓名": "Alastair Higgs", "中介": "Rella", "国籍": "英国", "性别": "男", "肤色": "白"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22578"
fi
sleep 0.3

# Record 576: R22579
echo "导入 576/669: R22579"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22579", "姓名": "Adam Shaheen", "中介": "Rella", "国籍": "英国", "教学经验": "7年", "性别": "男", "肤色": "白"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22579"
fi
sleep 0.3

# Record 577: R22580
echo "导入 577/669: R22580"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22580", "姓名": "GordanStojanović", "中介": "Ray", "国籍": "塞尔维亚", "性别": "男", "肤色": "白", "学历": "硕士"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22580"
fi
sleep 0.3

# Record 578: R22581
echo "导入 578/669: R22581"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22581", "姓名": "Chris", "中介": "中介June盈", "国籍": "澳大利亚", "意向职位": "数学", "性别": "男", "肤色": "白"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22581"
fi
sleep 0.3

# Record 579: R22582
echo "导入 579/669: R22582"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22582", "姓名": "Matthew Andrew", "中介": "Ray", "国籍": "英国", "性别": "男", "肤色": "白"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22582"
fi
sleep 0.3

# Record 580: R22583
echo "导入 580/669: R22583"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22583", "姓名": "David Perkins", "中介": "Ray", "国籍": "美国", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22583"
fi
sleep 0.3

# Record 581: R22584
echo "导入 581/669: R22584"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22584", "姓名": "Joseph Floyd", "中介": "中介Jack吴", "国籍": "中介Jack吴", "教学经验": "10年+", "性别": "男", "肤色": "白", "学历": "博士"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22584"
fi
sleep 0.3

# Record 582: R22585
echo "导入 582/669: R22585"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22585", "姓名": "Reinhardt Johannes Loots", "中介": "Rella", "国籍": "南非", "资格证": "TEFL", "教学经验": "7年", "性别": "男", "肤色": "白", "学历": "硕士"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22585"
fi
sleep 0.3

# Record 583: R22586
echo "导入 583/669: R22586"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22586", "姓名": "Hayden Nelson", "中介": "Ray", "国籍": "美国", "性别": "男", "肤色": "白"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22586"
fi
sleep 0.3

# Record 584: R22587
echo "导入 584/669: R22587"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22587", "姓名": "Berny", "中介": "Lynette中介", "国籍": "南非", "教学经验": "5年", "性别": "女", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22587"
fi
sleep 0.3

# Record 585: R22588
echo "导入 585/669: R22588"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22588", "姓名": "Joao", "中介": "Ray", "国籍": "巴西", "性别": "男", "肤色": "白"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22588"
fi
sleep 0.3

# Record 586: R22589
echo "导入 586/669: R22589"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22589", "姓名": "Josh K994-J", "中介": "中介June盈", "国籍": "英国", "资格证": "PGCE", "教学经验": "7年", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22589"
fi
sleep 0.3

# Record 587: R22590
echo "导入 587/669: R22590"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22590", "姓名": "Sam X243-S", "中介": "中介June盈", "国籍": "美国", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22590"
fi
sleep 0.3

# Record 588: R22591
echo "导入 588/669: R22591"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22591", "姓名": "Nathan Tonkin", "中介": "Guo老师"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22591"
fi
sleep 0.3

# Record 589: R22592
echo "导入 589/669: R22592"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22592", "姓名": "John X231-J", "中介": "中介June盈", "国籍": "美国", "资格证": "TEFL", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22592"
fi
sleep 0.3

# Record 590: R22593
echo "导入 590/669: R22593"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22593", "姓名": "Max  X222-M", "中介": "中介June盈", "国籍": "美国", "专业": "教育学", "教学经验": "6年", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22593"
fi
sleep 0.3

# Record 591: R22594
echo "导入 591/669: R22594"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22594", "姓名": "Rebecca X182-R", "中介": "中介June盈", "国籍": "美国", "教学经验": "5年", "性别": "女", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22594"
fi
sleep 0.3

# Record 592: R22595
echo "导入 592/669: R22595"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22595", "姓名": "LA386", "中介": "Lynette中介", "国籍": "新西兰", "专业": "历史", "性别": "男", "肤色": "白", "学历": "硕士"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22595"
fi
sleep 0.3

# Record 593: R22596
echo "导入 593/669: R22596"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22596", "姓名": "Tamara Dinic", "中介": "Ray", "国籍": "塞尔维亚", "专业": "艺术", "性别": "女", "肤色": "白", "学历": "硕士"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22596"
fi
sleep 0.3

# Record 594: R22597
echo "导入 594/669: R22597"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22597", "姓名": "Liam", "中介": "Ray", "国籍": "新西兰", "专业": "化学", "性别": "男", "肤色": "白"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22597"
fi
sleep 0.3

# Record 595: R22598
echo "导入 595/669: R22598"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22598", "姓名": "Chris Hutchinson", "中介": "Ray", "国籍": "英国", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22598"
fi
sleep 0.3

# Record 596: R22599
echo "导入 596/669: R22599"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22599", "姓名": "Mark Nichols", "中介": "Ray", "国籍": "美国", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22599"
fi
sleep 0.3

# Record 597: R22600
echo "导入 597/669: R22600"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22600", "姓名": "Braulio Garcia", "中介": "中介Jack吴", "国籍": "美国", "专业": "数学", "教学经验": "7年", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22600"
fi
sleep 0.3

# Record 598: R22601
echo "导入 598/669: R22601"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22601", "姓名": "Chris Buhse", "中介": "中介Jack吴", "国籍": "美国", "专业": "数学", "教学经验": "10.年", "性别": "男", "肤色": "白", "学历": "硕士"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22601"
fi
sleep 0.3

# Record 599: R22602
echo "导入 599/669: R22602"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22602", "姓名": "Joshua Sabet", "中介": "中介Jack吴", "国籍": "加拿大", "专业": "计算机科学与数学专业", "资格证": "TESOL", "教学经验": "4年", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22602"
fi
sleep 0.3

# Record 600: R22603
echo "导入 600/669: R22603"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22603", "姓名": "Kyle Dafel", "中介": "EF-Paul", "国籍": "南非", "资格证": "TKT", "教学经验": "7年", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22603"
fi
sleep 0.3

# Record 601: R22604
echo "导入 601/669: R22604"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22604", "姓名": "Nika Khurtsia", "中介": "Agent Jane", "国籍": "格鲁吉亚", "意向职位": "数学", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22604"
fi
sleep 0.3

# Record 602: R22605
echo "导入 602/669: R22605"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22605", "姓名": "宝拉", "中介": "Lisa 中介", "国籍": "俄罗斯", "性别": "女", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22605"
fi
sleep 0.3

# Record 603: R22606
echo "导入 603/669: R22606"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22606", "姓名": "Jay Nichvolodov", "中介": "Lisa 中介", "国籍": "加拿大", "性别": "男", "肤色": "白", "学历": "本科", "年龄": 37.0}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22606"
fi
sleep 0.3

# Record 604: R22607
echo "导入 604/669: R22607"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22607", "姓名": "Arron", "中介": "Rella", "国籍": "美国", "意向职位": "雅思，文学", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22607"
fi
sleep 0.3

# Record 605: R22608
echo "导入 605/669: R22608"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22608", "姓名": "Max Blair", "中介": "Ray", "国籍": "英国", "教学经验": "1年", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22608"
fi
sleep 0.3

# Record 606: R22609
echo "导入 606/669: R22609"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22609", "姓名": "James George", "中介": "Greg", "国籍": "英国", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22609"
fi
sleep 0.3

# Record 607: R22610
echo "导入 607/669: R22610"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22610", "姓名": "JOSE A. RODRIGUEZ 赵子龙", "中介": "Ray", "国籍": "美国", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22610"
fi
sleep 0.3

# Record 608: R22611
echo "导入 608/669: R22611"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22611", "姓名": "Gram", "中介": "Rella", "国籍": "加拿大", "教学经验": "7年", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22611"
fi
sleep 0.3

# Record 609: R22612
echo "导入 609/669: R22612"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22612", "姓名": "Martin Healy", "中介": "Ray", "国籍": "爱尔兰", "资格证": "TEFL", "教学经验": "5年", "意向职位": "Science", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22612"
fi
sleep 0.3

# Record 610: R22613
echo "导入 610/669: R22613"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22613", "姓名": "MENDÉ\nCARLTON", "中介": "Ray", "国籍": "美国", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22613"
fi
sleep 0.3

# Record 611: R22614
echo "导入 611/669: R22614"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22614", "姓名": "Connor Gulliford LA272", "中介": "Lynette中介", "国籍": "英国", "意向职位": "幼儿园，IB", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22614"
fi
sleep 0.3

# Record 612: R22615
echo "导入 612/669: R22615"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22615", "姓名": "Jacob Compton", "中介": "Eunice Asia", "国籍": "美国", "性别": "男", "肤色": "白", "学历": "硕士"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22615"
fi
sleep 0.3

# Record 613: R22616
echo "导入 613/669: R22616"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22616", "姓名": "Allison", "中介": "瑞沃德Benjamin", "国籍": "南非", "意向职位": "幼儿园，小学", "性别": "女", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22616"
fi
sleep 0.3

# Record 614: R22617
echo "导入 614/669: R22617"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22617", "姓名": "Adrian", "中介": "EF-Paul", "国籍": "美国", "性别": "男", "肤色": "白", "学历": "硕士"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22617"
fi
sleep 0.3

# Record 615: R22618
echo "导入 615/669: R22618"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22618", "姓名": "Christiaan du Toit", "中介": "Ray", "国籍": "南非", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22618"
fi
sleep 0.3

# Record 616: R22619
echo "导入 616/669: R22619"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22619", "姓名": "William", "中介": "Sherry", "国籍": "英国", "资格证": "TEFL", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22619"
fi
sleep 0.3

# Record 617: R22620
echo "导入 617/669: R22620"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22620", "姓名": "Safa\nBen Hammadi", "中介": "Ray", "国籍": "突尼斯", "性别": "女", "肤色": "白", "学历": "硕士"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22620"
fi
sleep 0.3

# Record 618: R22621
echo "导入 618/669: R22621"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22621", "姓名": "Tyler Ross", "中介": "中介Jack吴", "国籍": "美国", "意向职位": "数学", "性别": "男", "肤色": "白", "学历": "硕士"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22621"
fi
sleep 0.3

# Record 619: R22622
echo "导入 619/669: R22622"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22622", "姓名": "Ayoub", "中介": "Ray", "国籍": "摩洛哥", "意向职位": "AP历史", "性别": "男", "肤色": "白", "学历": "硕士"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22622"
fi
sleep 0.3

# Record 620: R22623
echo "导入 620/669: R22623"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22623", "姓名": "Callum", "中介": "Ray", "国籍": "英国", "性别": "男", "肤色": "白", "学历": "硕士"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22623"
fi
sleep 0.3

# Record 621: R22624
echo "导入 621/669: R22624"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22624", "姓名": "Dan", "中介": "Ray", "国籍": "菲律宾", "资格证": "教育学、心理学", "性别": "男", "肤色": "亚裔", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22624"
fi
sleep 0.3

# Record 622: R22625
echo "导入 622/669: R22625"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22625", "姓名": "Rhys", "中介": "Ray", "国籍": "英国", "意向职位": "幼儿园", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22625"
fi
sleep 0.3

# Record 623: R22626
echo "导入 623/669: R22626"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22626", "姓名": "Derrick", "中介": "中介Jack", "国籍": "美国", "性别": "男", "肤色": "白", "学历": "硕士"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22626"
fi
sleep 0.3

# Record 624: R22627
echo "导入 624/669: R22627"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22627", "姓名": "George", "中介": "Ray", "国籍": "英国", "意向职位": "幼儿园", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22627"
fi
sleep 0.3

# Record 625: R22628
echo "导入 625/669: R22628"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22628", "姓名": "Daniel Shields", "中介": "Ray", "国籍": "英国", "意向职位": "高中", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22628"
fi
sleep 0.3

# Record 626: R22629
echo "导入 626/669: R22629"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22629", "姓名": "Johnson", "中介": "June", "国籍": "英国", "意向职位": "中小学", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22629"
fi
sleep 0.3

# Record 627: R22630
echo "导入 627/669: R22630"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22630", "姓名": "Simon", "中介": "Lisa 中介", "国籍": "英国", "意向职位": "幼儿园", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22630"
fi
sleep 0.3

# Record 628: R22631
echo "导入 628/669: R22631"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22631", "姓名": "Tim", "中介": "瑞沃德Benjamin", "国籍": "美国", "意向职位": "幼儿园", "性别": "男", "肤色": "白", "学历": "硕士"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22631"
fi
sleep 0.3

# Record 629: R22632
echo "导入 629/669: R22632"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22632", "姓名": "Ulrich", "中介": "Ray", "国籍": "南非", "意向职位": "幼儿园", "性别": "男", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22632"
fi
sleep 0.3

# Record 630: R22633
echo "导入 630/669: R22633"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22633", "姓名": "James Bolton", "中介": "Ray", "国籍": "英国", "意向职位": "文学、雅思", "性别": "男", "肤色": "白", "学历": "硕士"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22633"
fi
sleep 0.3

# Record 631: R22634
echo "导入 631/669: R22634"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22634", "姓名": "Shandni Bolton", "中介": "Ray", "国籍": "英国", "意向职位": "文学、雅思、科学", "性别": "女", "肤色": "白", "学历": "硕士"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22634"
fi
sleep 0.3

# Record 632: R22635
echo "导入 632/669: R22635"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22635", "姓名": "John", "中介": "中介Jack", "国籍": "美国", "性别": "男", "肤色": "白", "学历": "硕士"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22635"
fi
sleep 0.3

# Record 633: R22636
echo "导入 633/669: R22636"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22636", "姓名": "Daneillia", "中介": "Ray", "国籍": "牙买加", "性别": "女", "肤色": "黑"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22636"
fi
sleep 0.3

# Record 634: R22637
echo "导入 634/669: R22637"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22637", "姓名": "Sara", "中介": "瑞沃德Benjamin", "国籍": "美国", "性别": "女", "肤色": "白", "学历": "本科"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22637"
fi
sleep 0.3

# Record 635: R22638
echo "导入 635/669: R22638"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22638", "姓名": "Eduardo Pedroso", "中介": "LINKEDIN", "国籍": "巴西", "专业": "硕士在读：历史教育；本科：教育研究", "教学经验": "13年", "目前所在地": "巴西", "上岗时间": "2026年2-3月", "意向职位": "小学以上", "可任教内容": "历史、社会科学、地理、人文、英语", "性别": "男", "肤色": "白", "学历": "硕士", "年龄": 35.0, "更新日期": 1768262400000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22638"
fi
sleep 0.3

# Record 636: R22639
echo "导入 636/669: R22639"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22639", "姓名": "Artsem Ivanou", "国籍": "白俄罗斯", "专业": "博士：历史研究；硕士：历史；本科：历史与社会科学教育", "资格证": "TESOL", "教学经验": "15年", "目前所在地": "上海", "上岗时间": "2026年2-3月", "意向城市": "上海", "意向职位": "小学以上", "可任教内容": "历史、地理、社会科学", "性别": "男", "肤色": "白", "学历": "博士", "年龄": 39.0, "更新日期": 1768521600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22639"
fi
sleep 0.3

# Record 637: R22640
echo "导入 637/669: R22640"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22640", "姓名": "Filip Novakovic", "国籍": "加拿大", "专业": "酒店管理", "资格证": "TEFL", "教学经验": "12年", "目前所在地": "北京", "上岗时间": "2026年2-3月", "意向城市": "深圳", "意向职位": "幼儿园", "性别": "男", "肤色": "白", "学历": "本科", "年龄": 40.0, "更新日期": 1768521600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22640"
fi
sleep 0.3

# Record 638: R22641
echo "导入 638/669: R22641"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22641", "姓名": "Sunica Nel", "国籍": "南非", "专业": "教育", "资格证": "TEFL", "教学经验": "4年", "目前所在地": "深圳", "上岗时间": "2026年2-3月", "意向职位": "托育、幼儿园", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1768521600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22641"
fi
sleep 0.3

# Record 639: R22642
echo "导入 639/669: R22642"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22642", "姓名": "IVANA GAJIC - EVA", "国籍": "塞尔维亚", "专业": "硕士：教育；本科：教育", "资格证": "PGCE", "教学经验": "11年", "目前所在地": "佛山", "上岗时间": "2026年2-3月", "意向城市": "广州、佛山", "意向职位": "中小学", "可任教内容": "视觉艺术、美术、绘画", "性别": "女", "肤色": "白", "学历": "硕士", "更新日期": 1768521600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22642"
fi
sleep 0.3

# Record 640: R22643
echo "导入 640/669: R22643"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22643", "姓名": "NEMANJA RADMILOVIC - NEMO", "国籍": "塞尔维亚", "专业": "硕士：体育教育；本科：体育教育", "资格证": "PGCE", "教学经验": "11年", "目前所在地": "佛山", "上岗时间": "2026年2-3月", "意向城市": "广州、佛山", "意向职位": "中小学", "可任教内容": "体育", "性别": "男", "肤色": "白", "学历": "硕士", "更新日期": 1768521600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22643"
fi
sleep 0.3

# Record 641: R22644
echo "导入 641/669: R22644"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22644", "姓名": "Zainab Mubashir", "国籍": "巴基斯坦", "专业": "硕士：电机工程；本科：电机工程", "教学经验": "4年", "目前所在地": "巴基斯坦", "上岗时间": "2026年2-3月", "意向城市": "全国", "意向职位": "中学及以上", "可任教内容": "数学、物理", "性别": "女", "肤色": "白", "学历": "硕士", "更新日期": 1768521600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22644"
fi
sleep 0.3

# Record 642: R22645
echo "导入 642/669: R22645"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22645", "姓名": "JARED WILSON", "国籍": "英国", "专业": "硕士：教育", "资格证": "PGCE", "教学经验": "3年+13年通讯技术课程指导", "目前所在地": "马来西亚", "上岗时间": "2026年8-9月", "意向城市": "全国", "意向职位": "小学及以上", "可任教内容": "计算机科学", "性别": "男", "肤色": "白", "学历": "硕士", "更新日期": 1768521600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22645"
fi
sleep 0.3

# Record 643: R22646
echo "导入 643/669: R22646"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22646", "姓名": "KATE CHODZKO", "国籍": "波兰", "专业": "硕士：英语作为第二外语教育", "资格证": "PGCE", "教学经验": "15年", "目前所在地": "马来西亚", "上岗时间": "2026年8-9月", "意向城市": "全国", "意向职位": "小学及以上", "可任教内容": "英语、雅思", "性别": "女", "肤色": "白", "学历": "硕士", "更新日期": 1768521600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22646"
fi
sleep 0.3

# Record 644: R22647
echo "导入 644/669: R22647"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22647", "姓名": "Cody Marcotte", "国籍": "加拿大", "专业": "国际商务", "资格证": "PGCE、TESOL", "教学经验": "9年", "目前所在地": "深圳", "上岗时间": "2026年2-3月", "意向城市": "深圳、成都", "意向职位": "幼儿园及以上", "可任教内容": "英语", "薪资期望": "31K", "性别": "男", "肤色": "白", "学历": "本科", "年龄": 33.0, "更新日期": 1768953600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22647"
fi
sleep 0.3

# Record 645: R22648
echo "导入 645/669: R22648"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22648", "姓名": "James Corbett", "国籍": "英国", "专业": "商务与管理", "资格证": "TEFL", "教学经验": "2年", "目前所在地": "深圳", "上岗时间": "2026年8-9月", "意向城市": "上海", "意向职位": "优先小学、幼儿园、高中", "可任教内容": "英国", "薪资期望": "28K", "性别": "男", "肤色": "白", "学历": "本科", "年龄": 24.0, "更新日期": 1768953600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22648"
fi
sleep 0.3

# Record 646: R22649
echo "导入 646/669: R22649"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22649", "姓名": "Mariam Batool", "国籍": "巴基斯坦", "专业": "生物技术、生物化学和分子生物学", "教学经验": "11年", "目前所在地": "英国", "上岗时间": "2026年2-3月", "意向城市": "全国", "意向职位": "高中、大学", "可任教内容": "生物、化学、科学", "性别": "女", "更新日期": 1768953600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22649"
fi
sleep 0.3

# Record 647: R22650
echo "导入 647/669: R22650"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22650", "姓名": "Daniel Ghaly", "国籍": "英国", "专业": "财会", "资格证": "TEFL", "教学经验": "2年", "目前所在地": "英国", "上岗时间": "2026年2-3月", "意向城市": "深圳或其他城市", "意向职位": "幼儿园及以上", "可任教内容": "英语", "薪资期望": "26k", "性别": "男", "肤色": "白", "学历": "本科", "年龄": 25.0, "更新日期": 1768953600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22650"
fi
sleep 0.3

# Record 648: R22651
echo "导入 648/669: R22651"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22651", "姓名": "Peter Moczulski", "国籍": "美国", "专业": "地理与地球科学", "资格证": "TESOL", "教学经验": "8年", "目前所在地": "深圳", "上岗时间": "2026年8-9月", "意向城市": "深圳", "意向职位": "小学及以上", "可任教内容": "英语", "性别": "男", "肤色": "白", "学历": "本科", "年龄": 46.0, "更新日期": 1768953600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22651"
fi
sleep 0.3

# Record 649: R22652
echo "导入 649/669: R22652"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22652", "姓名": "Robert W. Enga", "国籍": "美国", "专业": "通讯", "资格证": "教师资格证、TEFL", "教学经验": "3年+3年助教", "目前所在地": "深圳", "上岗时间": "2026年2-3月", "意向城市": "深圳", "意向职位": "小学及以上", "可任教内容": "英语", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1768953600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22652"
fi
sleep 0.3

# Record 650: R22653
echo "导入 650/669: R22653"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22653", "姓名": "Taryn Perkins", "国籍": "南非", "专业": "教育学", "资格证": "TEFL", "教学经验": "5年", "目前所在地": "杭州", "上岗时间": "2026-03-01 00:00:00", "意向城市": "深圳", "意向职位": "幼儿园、小学", "可任教内容": "英语", "薪资期望": "26K税后含房补", "性别": "女", "肤色": "白", "学历": "本科", "年龄": 42.0, "更新日期": 1768953600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22653"
fi
sleep 0.3

# Record 651: R22654
echo "导入 651/669: R22654"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22654", "姓名": "Michael Perkins", "国籍": "南非", "专业": "教育学", "资格证": "TEFL", "教学经验": "4年", "目前所在地": "杭州", "上岗时间": "2026-03-01 00:00:00", "意向城市": "深圳", "意向职位": "幼儿园、小学", "可任教内容": "英语", "薪资期望": "26K税后含房补", "性别": "男", "肤色": "白", "学历": "本科", "年龄": 43.0, "更新日期": 1768953600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22654"
fi
sleep 0.3

# Record 652: R22655
echo "导入 652/669: R22655"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22655", "姓名": "Arghya Samantaray", "国籍": "美国", "专业": "经济学", "资格证": "教师资格证、TEFL", "教学经验": "5年", "目前所在地": "深圳", "上岗时间": "2026-03-01 00:00:00", "意向城市": "广东内城市", "意向职位": "幼儿园，早教，IB", "可任教内容": "英语、IB、AP、STEAM", "肤色": "棕", "学历": "本科", "年龄": 30.0, "更新日期": 1768953600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22655"
fi
sleep 0.3

# Record 653: R22656
echo "导入 653/669: R22656"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22656", "姓名": "SANDRO KUNZ（Alex）", "国籍": "瑞士", "专业": "硕士：国际关系；本科：国际商务交流", "资格证": "TEFL", "教学经验": "16年", "目前所在地": "济南", "上岗时间": "2026-03-01 00:00:00", "意向城市": "南京/北京以南城市", "意向职位": "大学", "可任教内容": "德语、英语", "性别": "男", "肤色": "白", "学历": "硕士", "年龄": 61.0, "更新日期": 1768953600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22656"
fi
sleep 0.3

# Record 654: R22657
echo "导入 654/669: R22657"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22657", "姓名": "Todd Michael Bentley II", "国籍": "美国", "专业": "英语", "教学经验": "6年", "目前所在地": "深圳", "上岗时间": "2026-03-01 00:00:00", "意向城市": "深圳", "意向职位": "初高中", "可任教内容": "英语", "薪资期望": "25-30K", "性别": "男", "肤色": "白", "学历": "本科", "年龄": 38.0, "更新日期": 1768953600000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22657"
fi
sleep 0.3

# Record 655: R22658
echo "导入 655/669: R22658"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22658", "姓名": "James Ziegler", "专业": "人类学", "资格证": "TEFL", "目前所在地": "深圳", "上岗时间": "2026-03-01 00:00:00", "意向城市": "深圳", "意向职位": "初高中及以上", "可任教内容": "英语", "性别": "男", "肤色": "白", "学历": "硕士", "年龄": 40.0, "更新日期": 1769472000000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22658"
fi
sleep 0.3

# Record 656: R22659
echo "导入 656/669: R22659"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22659", "姓名": "GIOVANNI ALEXANDER ROJAS DIPENG", "国籍": "加拿大", "专业": "理科", "教学经验": "8年", "目前所在地": "深圳", "上岗时间": "2026年2-3月", "意向城市": "深圳", "意向职位": "初高中及以上", "可任教内容": "物理、生物、科学", "薪资期望": "30K", "性别": "男", "肤色": "白", "学历": "硕士", "年龄": 35.0, "更新日期": 1769731200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22659"
fi
sleep 0.3

# Record 657: R22660
echo "导入 657/669: R22660"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22660", "姓名": "Brandon Schiermeyer", "国籍": "美国", "专业": "经济学", "资格证": "TEFL/CELTA", "教学经验": "3年", "目前所在地": "深圳", "上岗时间": "2026年2-3月", "意向城市": "深圳", "意向职位": "高中", "可任教内容": "AP、经济学、雅思", "性别": "男", "肤色": "白", "学历": "本科", "年龄": 28.0, "更新日期": 1769731200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22660"
fi
sleep 0.3

# Record 658: R22661
echo "导入 658/669: R22661"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22661", "姓名": "Steve Coates", "国籍": "英国", "专业": "体育教育", "资格证": "数学教师资格证", "教学经验": "6年，16年体育教学部长", "目前所在地": "英国", "上岗时间": "2026年2-3月", "意向城市": "江苏", "意向职位": "初高中及以上", "可任教内容": "数学", "性别": "男", "肤色": "白", "学历": "本科", "年龄": 40.0, "更新日期": 1769731200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22661"
fi
sleep 0.3

# Record 659: R22662
echo "导入 659/669: R22662"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22662", "姓名": "Anna", "国籍": "亚美尼亚", "专业": "时尚设计", "资格证": "TEFL", "教学经验": "8年", "目前所在地": "佛山", "上岗时间": "2026年2-3月", "意向城市": "广东、青岛", "意向职位": "幼儿园及以上", "可任教内容": "美术、绘画", "薪资期望": "20-24+房补", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1769731200000}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22662"
fi
sleep 0.3

# Record 660: R22663
echo "导入 660/669: R22663"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22663"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22663"
fi
sleep 0.3

# Record 661: R22664
echo "导入 661/669: R22664"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22664"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22664"
fi
sleep 0.3

# Record 662: R22665
echo "导入 662/669: R22665"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22665"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22665"
fi
sleep 0.3

# Record 663: R22666
echo "导入 663/669: R22666"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22666"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22666"
fi
sleep 0.3

# Record 664: R22667
echo "导入 664/669: R22667"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22667"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22667"
fi
sleep 0.3

# Record 665: R22668
echo "导入 665/669: R22668"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22668"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22668"
fi
sleep 0.3

# Record 666: R22669
echo "导入 666/669: R22669"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22669"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22669"
fi
sleep 0.3

# Record 667: R22670
echo "导入 667/669: R22670"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22670"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22670"
fi
sleep 0.3

# Record 668: R22671
echo "导入 668/669: R22671"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22671"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22671"
fi
sleep 0.3

# Record 669: R22672
echo "导入 669/669: R22672"
if openclaw feishu_bitable_create_record --app_token $APP_TOKEN --table_id $TABLE_ID --fields '{"候选人ID": "R22672"}' > /dev/null 2>&1; then
    SUCCESS=$((SUCCESS+1))
else
    FAILED=$((FAILED+1))
    echo "失败: R22672"
fi
sleep 0.3

echo "导入完成! 成功: $SUCCESS, 失败: $FAILED"