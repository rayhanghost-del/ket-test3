#!/bin/bash
# 自动生成的导入脚本

success=0
fail=0
total=670

echo "[1/670] 导入: R22001 - Matthew Harrison McGhee Eddy"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22001", "姓名": "Matthew Harrison McGhee Eddy", "中介": "Alessandra", "国籍": "美国", "专业": "Criminal Justice/Sociology", "资格证": "TEFL", "教学经验": "10年", "目前所在地": "江苏", "上岗时间": "Feb. 2022", "签证类型": "工作签证", "工签职位": "英语教师", "意向城市": "海滨城市", "意向职位": "高中、大学", "薪资期望": "Negotiable", "跟进记录": "已面试Sherry江西职位，等二面", "性别": "男", "肤色": "白", "学历": "本科", "年龄": 33.0, "更新日期": 1642723200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[2/670] 导入: R22002 - Ron Price"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22002", "姓名": "Ron Price", "中介": "Ray", "国籍": "美国", "专业": "教育学", "目前所在地": "深圳", "上岗时间": "Feb. 2022", "签证类型": "工作签证", "工签职位": "英语教师", "意向城市": "深圳", "跟进记录": "已拒SAIS合同", "性别": "男", "肤色": "黑", "学历": "博士", "更新日期": 1642723200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[3/670] 导入: R22003 - Shawn Friesen"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22003", "姓名": "Shawn Friesen", "中介": "俄Dan", "国籍": "美国", "资格证": "教师资格证", "教学经验": "21年，5年教练", "目前所在地": "浙江金华", "上岗时间": "Sep.2022", "签证类型": "工作签证", "工签职位": "英语教师", "意向城市": "重庆", "意向职位": "体育", "薪资期望": "22K税前+住宿", "跟进记录": "找重庆体育岗位", "性别": "男", "肤色": "白", "学历": "本科", "年龄": 52.0, "更新日期": 1642723200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[4/670] 导入: R22004 - Kent Jeremy Boggenpoel"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22004", "姓名": "Kent Jeremy Boggenpoel", "中介": "Patrick-Lynne", "国籍": "南非", "专业": "信息科技", "教学经验": "11年", "目前所在地": "深圳", "上岗时间": "Sep.2022", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "数学、英语", "跟进记录": "1/22发深美，1/24深美拒", "性别": "男", "肤色": "黑", "学历": "本科", "更新日期": 1642982400000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[5/670] 导入: R22006 - Stanislav Balashov (Stas)"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22006", "姓名": "Stanislav Balashov (Stas)", "中介": "Ray", "国籍": "乌克兰", "专业": "体育教师", "资格证": "其他", "教学经验": "5年", "目前所在地": "深圳", "上岗时间": "Feb. 2022", "签证类型": "工作签证", "工签职位": "教练", "意向城市": "深圳南山", "意向职位": "体育、篮球教练", "跟进记录": "1/10已发深外师院", "性别": "男", "肤色": "白", "学历": "硕士", "更新日期": 1642550400000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[6/670] 导入: R22007 - Irina Balashova"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22007", "姓名": "Irina Balashova", "中介": "Ray", "国籍": "乌克兰", "教学经验": "4年", "目前所在地": "深圳", "签证类型": "家属签证", "意向城市": "深圳福田、南山", "意向职位": "社科", "性别": "女", "肤色": "白", "更新日期": 1642896000000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[7/670] 导入: R22008 - Joshua Thompson"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22008", "姓名": "Joshua Thompson", "中介": "优才社郭", "国籍": "英国", "专业": "化学工程", "资格证": "TEFL", "教学经验": "3年", "目前所在地": "杭州", "上岗时间": "Feb. 2022", "签证类型": "工作签证", "工签职位": "英语教师", "意向职位": "数学，物理，化学，英语", "薪资期望": "30K左右", "跟进记录": "1/22发富源", "性别": "男", "肤色": "白", "学历": "本科", "年龄": 24.0, "更新日期": 1642723200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[8/670] 导入: R22009 - Ross Delaney"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22009", "姓名": "Ross Delaney", "中介": "Ray", "国籍": "爱尔兰", "专业": "化学", "教学经验": "3年", "目前所在地": "深圳南山", "上岗时间": "Feb. 2022", "意向城市": "深圳福田、南山", "意向职位": "高中，AP,IGCSE,科学，化学，生物", "薪资期望": "30K税后+住宿", "性别": "男", "肤色": "白", "学历": "硕士", "年龄": 30.0, "更新日期": 1642723200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[9/670] 导入: R22010 - Kleber Delgado"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22010", "姓名": "Kleber Delgado", "中介": "Ray", "国籍": "美国", "目前所在地": "深圳坪山", "上岗时间": "Sep.2022", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "英语", "薪资期望": "30K左右", "性别": "男", "肤色": "白", "更新日期": 1642636800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[10/670] 导入: R22011 - Fay Sayed"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22011", "姓名": "Fay Sayed", "中介": "Ray", "国籍": "南非", "专业": "艺术历史", "资格证": "TEFL", "教学经验": "7年", "目前所在地": "深圳观澜", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "艺术", "性别": "女", "肤色": "浅黑", "学历": "本科", "更新日期": 1642636800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[11/670] 导入: R22012 - Spencer"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22012", "姓名": "Spencer", "中介": "Sherry", "国籍": "美国", "意向城市": "深圳", "意向职位": "英语", "跟进记录": "1/18 深美一面，待定", "性别": "男", "肤色": "白", "更新日期": 1642464000000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[12/670] 导入: R22013 - Brent Burkhart"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22013", "姓名": "Brent Burkhart", "中介": "Ray", "国籍": "美国", "专业": "应用心理学", "教学经验": "9年", "目前所在地": "深圳", "上岗时间": "Aug.2022", "意向城市": "深圳", "意向职位": "初中英语，托福，雅思，SAT，英文文学，AP历史，心理", "薪资期望": "30K税后+住宿", "跟进记录": "1/18发了深美初中英语JD\n1/24发简历给深美", "性别": "男", "肤色": "白", "学历": "硕士", "更新日期": 1642896000000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[13/670] 导入: R22014 - Luigi DI Gennaro"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22014", "姓名": "Luigi DI Gennaro", "中介": "Ray", "国籍": "美国", "专业": "文化分析与社会理论\n本科英语修辞学", "资格证": "TESOL", "教学经验": "12年", "目前所在地": "江苏张家港", "上岗时间": "Feb or Sep", "签证类型": "工作签证", "意向职位": "Homeroom,IB,IGCSE,IELTS,IBPYP", "薪资期望": "35-40K", "跟进记录": "1/24深美拒", "性别": "男", "肤色": "白", "学历": "硕士", "是否可转聘": "可", "更新日期": 1642982400000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[14/670] 导入: R22015 - Josh"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22015", "姓名": "Josh", "中介": "Ray", "目前所在地": "北京", "上岗时间": "Aug.2022", "签证类型": "工作签证", "更新日期": 1642464000000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[15/670] 导入: R22016 - Decia Gillospie"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22016", "姓名": "Decia Gillospie", "中介": "Ray", "国籍": "牙买加", "专业": "商业管理", "资格证": "TEFL", "教学经验": "3年", "目前所在地": "深圳", "上岗时间": "Feb. 2022", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "高中英语，雅思", "性别": "女", "肤色": "黑", "学历": "本科", "更新日期": 1642464000000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[16/670] 导入: R22017 - Byron John Eveson"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22017", "姓名": "Byron John Eveson", "中介": "Ray", "国籍": "加拿大", "专业": "英文", "资格证": "CELTA", "教学经验": "20年", "目前所在地": "深圳罗湖", "上岗时间": "Feb. 2022", "意向城市": "深圳", "意向职位": "高中英语，雅思，历史，社会研究", "性别": "男", "肤色": "白", "学历": "本科", "年龄": 52.0, "更新日期": 1642464000000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[17/670] 导入: R22018 - Carson"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22018", "姓名": "Carson", "中介": "Ray", "教学经验": "7年", "目前所在地": "深圳", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "数学", "薪资期望": "27-30K 税后", "跟进记录": "1/16发的深美数学JD\n需要问深美有没有工资空间", "性别": "男", "肤色": "白", "更新日期": 1642464000000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[18/670] 导入: R22019 - Fely"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22019", "姓名": "Fely", "中介": "Ray", "目前所在地": "上海", "意向城市": "上海", "意向职位": "一、二年级homeroom，ELA", "性别": "女", "肤色": "白", "更新日期": 1642204800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[19/670] 导入: R22020 - Michele Gatti"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22020", "姓名": "Michele Gatti", "中介": "Sherry", "国籍": "意大利", "专业": "硕士-钢琴表演\n本科钢琴与音乐教育学", "教学经验": "6年", "目前所在地": "广州", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向职位": "音乐", "性别": "男", "肤色": "白", "学历": "硕士", "更新日期": 1642204800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[20/670] 导入: R22021 - Liudmila M"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22021", "姓名": "Liudmila M", "中介": "Ray", "国籍": "俄罗斯", "目前所在地": "深圳", "上岗时间": "Feb. 2022", "签证类型": "工作签证", "工签职位": "俄罗斯语教师", "意向城市": "深圳", "性别": "女", "肤色": "白", "更新日期": 1642204800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[21/670] 导入: R22022 - Arieta"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22022", "姓名": "Arieta", "中介": "Ray", "国籍": "哥伦比亚", "专业": "TESOL", "资格证": "CELTA", "教学经验": "6年", "目前所在地": "天津", "上岗时间": "Feb. 2022", "签证类型": "工作签证", "意向职位": "初中以上英语，文学，西语", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1642204800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[22/670] 导入: R22023 - Milenko Dikovic"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22023", "姓名": "Milenko Dikovic", "中介": "Ray", "国籍": "塞尔维亚", "专业": "体育教练与领导\n教育学", "资格证": "Acquired Sports-Professional", "教学经验": "4年", "目前所在地": "深圳", "上岗时间": "Feb. 2022", "签证类型": "工作签证", "意向城市": "深圳南山", "意向职位": "体育，篮球教练", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1642204800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[23/670] 导入: R22024 - Daniel Martin (DanDan 张艺文)"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22024", "姓名": "Daniel Martin (DanDan 张艺文)", "中介": "Ray", "国籍": "英国", "教学经验": "7年", "目前所在地": "深圳", "上岗时间": "Aug.2022", "签证类型": "工作签证", "工签职位": "体育老师", "意向城市": "深圳南山、福田", "意向职位": "体育", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1642204800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[24/670] 导入: R22025 - Dan Ayre"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22025", "姓名": "Dan Ayre", "中介": "Ray", "国籍": "英国", "上岗时间": "Sep.2022", "意向职位": "英语", "性别": "男", "更新日期": 1642204800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[25/670] 导入: R22026 - Charl Bakan"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22026", "姓名": "Charl Bakan", "中介": "Ray", "国籍": "澳大利亚", "专业": "金融", "资格证": "TESOL", "教学经验": "5年", "目前所在地": "深圳", "上岗时间": "Sep.2022", "意向职位": "英语", "薪资期望": "30K税后", "跟进记录": "三、四月回澳洲，然后再申请签证回来", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1642204800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[26/670] 导入: R22027 - Tiana Bailey"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22027", "姓名": "Tiana Bailey", "中介": "Dima", "国籍": "美国", "专业": "国际关系", "资格证": "IB/TKT/TEFL", "教学经验": "4年", "目前所在地": "杭州", "上岗时间": "NOV.2022", "签证类型": "工作签证", "工签职位": "英语教师", "意向城市": "浙江省内", "意向职位": "幼儿园，IB", "薪资期望": "25-30K", "跟进记录": "Dima女朋友，考虑9月金生岗位", "性别": "女", "肤色": "棕", "学历": "本科", "更新日期": 1664064000000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[27/670] 导入: R22028 - Mark Youngblood"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22028", "姓名": "Mark Youngblood", "中介": "Ray", "国籍": "美国", "专业": "经济", "资格证": "TESOL", "教学经验": "10年", "目前所在地": "深圳南山", "上岗时间": "Feb. 2022", "意向城市": "深圳", "意向职位": "PBL, STEAM", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1642204800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[28/670] 导入: R22029 - Felipe"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22029", "姓名": "Felipe", "中介": "Ray", "国籍": "哥伦比亚", "专业": "体育运动与康复", "资格证": "足球教练证", "教学经验": "7年", "目前所在地": "深圳", "上岗时间": "Feb. 2022", "意向城市": "深圳", "意向职位": "足球教练，体育，西语", "薪资期望": "22-25k", "性别": "男", "肤色": "棕", "学历": "本科", "更新日期": 1641772800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[29/670] 导入: R22030 - Ben Morris"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22030", "姓名": "Ben Morris", "中介": "Ray", "国籍": "英国", "专业": "环境科学", "资格证": "TEFL", "教学经验": "4年", "目前所在地": "深圳", "上岗时间": "Feb. 2022", "签证类型": "工作签证", "工签职位": "英语教师", "意向城市": "深圳南山、福田 、罗湖", "意向职位": "幼儿园", "薪资期望": "30K税后+寒暑假", "跟进记录": "可试推Ruby贝赛斯职位", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1643155200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[30/670] 导入: R22031 - Trishana Grey"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22031", "姓名": "Trishana Grey", "中介": "Ray", "国籍": "牙买加", "专业": "物流与供应链管理", "资格证": "TEFL", "教学经验": "3年", "目前所在地": "深圳", "上岗时间": "Feb. 2022", "意向城市": "深圳", "意向职位": "幼儿园", "薪资期望": "23k+住宿", "跟进记录": "1/23发理德\n1/23发Michael推幼儿园", "性别": "女", "肤色": "黑", "学历": "本科", "更新日期": 1640995200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[31/670] 导入: R22032 - Christy Phillips"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22032", "姓名": "Christy Phillips", "中介": "Ray", "国籍": "美国", "专业": "商业管理与经济", "资格证": "TEFL", "教学经验": "10年", "目前所在地": "深圳", "上岗时间": "Feb. 2022", "签证类型": "家属签证", "意向城市": "深圳南山、福田", "意向职位": "小学英语", "薪资期望": "25K税后", "跟进记录": "1/26问千希职位\n1/27海龙深圳北岗位，需要学历认证", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1643155200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[32/670] 导入: R22033 - Matthew Edward Perry"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22033", "姓名": "Matthew Edward Perry", "中介": "Alessandra", "国籍": "美国", "专业": "生物", "资格证": "TEFL", "教学经验": "8.5年", "目前所在地": "深圳", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向城市": "深圳，广州，江西，浙江，江苏", "意向职位": "初高中物理、社科、英语、文学、生物、化学", "薪资期望": "18-22K+住宿", "跟进记录": "1.1/18发了深美，没回\n2.1/22发了国际预科", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1642464000000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[33/670] 导入: R22034 - Mitchell Andrisevic"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22034", "姓名": "Mitchell Andrisevic", "中介": "Ray", "国籍": "美国", "专业": "国际商业", "资格证": "CELTA", "教学经验": "4年", "目前所在地": "浙江衢州", "上岗时间": "Feb. 2022", "签证类型": "工作签证", "意向城市": "深圳南山、福田 、罗湖", "意向职位": "IGCSE经济，英语", "薪资期望": "32K税后及以上", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1639526400000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[34/670] 导入: R22035 - Lola"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22035", "姓名": "Lola", "中介": "Alessandra", "国籍": "南非", "专业": "会计", "教学经验": "2年", "目前所在地": "上海", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向城市": "上海", "意向职位": "幼儿园，小学，初中", "薪资期望": "26-30K", "性别": "女", "肤色": "黑", "学历": "本科", "更新日期": 1644019200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[35/670] 导入: R22036 - Gevory Avetisyan (George)"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22036", "姓名": "Gevory Avetisyan (George)", "中介": "Alessandra", "国籍": "亚美尼亚", "专业": "物理", "资格证": "TEFL", "教学经验": "3年", "目前所在地": "深圳", "上岗时间": "Feb. 2022", "签证类型": "商业类工签", "工签职位": "销售经理", "意向城市": "深圳", "意向职位": "数学,ESL", "薪资期望": "Negotiable", "跟进记录": "1/26发SIE", "性别": "男", "肤色": "白", "学历": "博士", "更新日期": 1643155200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[36/670] 导入: R22037 - Eddy Salguero"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22037", "姓名": "Eddy Salguero", "中介": "Ray", "国籍": "美国", "专业": "应用数学与统计学", "教学经验": "6年", "目前所在地": "深圳", "上岗时间": "Feb. 2022", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "数学,ESL", "跟进记录": "1/26发SIE\n通达可能直接转给华美", "性别": "男", "肤色": "棕", "学历": "本科", "是否可转聘": "可", "更新日期": 1643155200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[37/670] 导入: R22038 - Jose Merrero"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22038", "姓名": "Jose Merrero", "中介": "Paul", "国籍": "美国", "专业": "教育领导学", "教学经验": "14年", "目前所在地": "境外·美国", "上岗时间": "Aug.2022", "性别": "男", "学历": "硕士"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[38/670] 导入: R22039 - Phillip Mlambo"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22039", "姓名": "Phillip Mlambo", "中介": "Paul", "国籍": "津巴布韦", "专业": "国际贸易与经济", "资格证": "TEFL", "教学经验": "3年", "目前所在地": "深圳", "上岗时间": "ASAP", "签证类型": "工作签证", "意向城市": "深圳、北京", "意向职位": "幼儿园、培训中心", "薪资期望": "20-30K+住宿补贴", "性别": "男", "肤色": "浅黑", "学历": "本科", "更新日期": 1642896000000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[39/670] 导入: R22040 - Finn Wright"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22040", "姓名": "Finn Wright", "中介": "Ray", "国籍": "英国", "专业": "工程", "资格证": "TEFL", "教学经验": "3年", "目前所在地": "境外·英国", "上岗时间": "Aug.2022", "意向城市": "深圳", "意向职位": "幼儿园", "跟进记录": "1/23发美凯誉\n1/24 嫌工资低取消面试", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1642896000000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[40/670] 导入: R22041 - Angelique Argyropoulos"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22041", "姓名": "Angelique Argyropoulos", "中介": "Alessandra", "国籍": "南非", "专业": "教育学", "资格证": "TEFL", "教学经验": "10年", "目前所在地": "境外·南非", "上岗时间": "Feb. 2022", "意向城市": "深圳", "意向职位": "幼儿园、培训中心", "薪资期望": "22K税后+住宿", "跟进记录": "人在国外，暂停", "性别": "女", "肤色": "浅黑", "学历": "本科", "更新日期": 1642896000000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[41/670] 导入: R22042 - Andrew Potter"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22042", "姓名": "Andrew Potter", "中介": "Alessandra", "国籍": "美国", "专业": "记者", "资格证": "TEFL", "教学经验": "1年", "目前所在地": "境外·美国", "上岗时间": "Aug.2022", "意向城市": "广东省", "意向职位": "幼儿园或其他", "跟进记录": "1/24发SIE，SDE，EDUHOPE\n1/25 SDE面试通过", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1643155200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[42/670] 导入: R22043 - Elijah Kov"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22043", "姓名": "Elijah Kov", "中介": "Alessandra", "国籍": "俄罗斯", "专业": "贸易", "资格证": "TEFL", "教学经验": "5年", "目前所在地": "成都", "上岗时间": "Feb. 2022", "签证类型": "工作签证", "工签职位": "俄语老师", "意向城市": "深圳", "意向职位": "幼儿园、小学", "薪资期望": "16k+住宿", "跟进记录": "1/25发SDE", "性别": "男", "肤色": "白", "学历": "本科", "是否可转聘": "可", "更新日期": 1643068800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[43/670] 导入: R22044 - Alex Pike"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22044", "姓名": "Alex Pike", "中介": "优才社郭", "国籍": "英国", "资格证": "TKT", "教学经验": "1年", "目前所在地": "深圳", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "幼儿园、小学", "薪资期望": "税后20K+住宿", "跟进记录": "1/26发金生", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1643155200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[44/670] 导入: R22045 - Violet Lawrence"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22045", "姓名": "Violet Lawrence", "中介": "优才社郭", "国籍": "英国", "资格证": "TKT", "教学经验": "1年", "目前所在地": "深圳", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "幼儿园、小学", "薪资期望": "税后20K+住宿", "跟进记录": "1/26发金生", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1643155200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[45/670] 导入: R22046 - Ryan Mason"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22046", "姓名": "Ryan Mason", "中介": "Ray", "国籍": "加拿大", "专业": "商业管理", "资格证": "TESOL", "目前所在地": "广州", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "幼儿园、小学", "薪资期望": "税后28K+住宿", "跟进记录": "年后推深美", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1643155200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[46/670] 导入: R22047 - Latoya"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22047", "姓名": "Latoya", "中介": "Dandan", "目前所在地": "北京", "上岗时间": "Aug.2022", "意向职位": "小学，三年级", "薪资期望": "20-26K税后", "性别": "女", "更新日期": 1643155200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[47/670] 导入: R22048 - Elvis B. Orellana"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22048", "姓名": "Elvis B. Orellana", "中介": "Josie", "国籍": "美国", "专业": "信息科技", "资格证": "TEFL", "教学经验": "4年", "目前所在地": "上海", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "ESL，数学、科学", "跟进记录": "1/26发深美", "性别": "男", "肤色": "棕", "学历": "本科", "更新日期": 1643155200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[48/670] 导入: R22049 - Curtis Rogers"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22049", "姓名": "Curtis Rogers", "中介": "Josie", "国籍": "美国", "专业": "英语文学", "资格证": "TEFL", "目前所在地": "深圳", "上岗时间": "Feb. 2022", "性别": "男", "学历": "本科", "更新日期": 1643155200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[49/670] 导入: R22050 - Ewilina Budner(Evie)"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22050", "姓名": "Ewilina Budner(Evie)", "中介": "Ray", "国籍": "波兰", "专业": "TESOL \n本科英语研究", "资格证": "QTS", "教学经验": "8年", "目前所在地": "佛山", "上岗时间": "Aug.2022", "签证类型": "工作签证", "工签职位": "Homeroom Teaching", "意向职位": "Homeroom,ESL", "跟进记录": "年后重点推深美", "性别": "女", "肤色": "白", "学历": "硕士", "更新日期": 1643155200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[50/670] 导入: R22051 - Hayden"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22051", "姓名": "Hayden", "中介": "Woody", "国籍": "新西兰", "目前所在地": "境外·越南", "性别": "男", "肤色": "白", "更新日期": 1643155200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[51/670] 导入: R22052 - Marcel Reyes Lozano"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22052", "姓名": "Marcel Reyes Lozano", "中介": "Ray", "国籍": "哥伦比亚", "专业": "哲学与语言", "资格证": "TEFL", "教学经验": "15年", "目前所在地": "蛇口，深圳", "上岗时间": "Feb. 2022", "签证类型": "家属签证", "意向城市": "深圳", "意向职位": "国际学校", "薪资期望": "25K+住宿补贴", "跟进记录": "8年都没工签，难", "性别": "男", "肤色": "棕", "学历": "本科", "更新日期": 1643155200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[52/670] 导入: R22053 - John Calvin Jones"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22053", "姓名": "John Calvin Jones", "中介": "Ray", "国籍": "英国", "专业": "教育学", "资格证": "数学教学资格证", "教学经验": "20年", "目前所在地": "江苏常州", "签证类型": "工作签证", "意向职位": "数学、管理岗", "跟进记录": "1/27发富源", "性别": "男", "肤色": "棕", "学历": "博士", "更新日期": 1643241600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[53/670] 导入: R22054 - Kelvin W."
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22054", "姓名": "Kelvin W.", "中介": "Ray", "国籍": "英国", "专业": "计算机与信息系统", "教学经验": "8年", "目前所在地": "深圳", "上岗时间": "Feb. 2022", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "幼儿园、小学", "性别": "男", "肤色": "黄", "学历": "本科", "是否可转聘": "可", "年龄": 36.0, "更新日期": 1643241600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[54/670] 导入: R22055 - Leon Boer"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22055", "姓名": "Leon Boer", "上岗时间": "Feb. 2022", "意向职位": "国际学校小学", "跟进记录": "在旅游中", "性别": "男", "肤色": "白", "更新日期": 1643241600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[55/670] 导入: R22056 - John"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22056", "姓名": "John", "中介": "Ray", "国籍": "爱尔兰", "目前所在地": "境外·爱尔兰", "上岗时间": "Sep.2022", "跟进记录": "有个女朋友一起来，4月毕业，微信联系", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1643241600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[56/670] 导入: R22057 - Jeremy Smith"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22057", "姓名": "Jeremy Smith", "中介": "Barry", "国籍": "加拿大", "专业": "商务中文", "资格证": "TESOL", "教学经验": "4年", "目前所在地": "深圳", "上岗时间": "Feb. 2022", "签证类型": "商业类工签", "意向城市": "深圳", "意向职位": "幼儿园、小学", "薪资期望": "30K", "跟进记录": "可发Ruby", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1643328000000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[57/670] 导入: R22058 - Trayvion Wallace
（Wally)"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22058", "姓名": "Trayvion Wallace\n（Wally)", "中介": "Ray", "国籍": "美国", "专业": "英文与教育学", "资格证": "教师资格证", "教学经验": "4年", "目前所在地": "深圳", "上岗时间": "Feb. 2022", "意向城市": "深圳", "意向职位": "国际学校", "性别": "男", "肤色": "黑", "学历": "博士", "更新日期": 1643328000000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[58/670] 导入: R22059 - Winnifred Reid"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22059", "姓名": "Winnifred Reid", "中介": "Ray", "国籍": "牙买加", "性别": "女", "更新日期": 1643328000000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[59/670] 导入: R22060 - Scott Victor"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22060", "姓名": "Scott Victor", "中介": "Ray", "国籍": "美国", "专业": "英语语言与文学", "资格证": "教师资格证", "目前所在地": "浙江金华", "上岗时间": "Feb. 2022", "签证类型": "工作签证", "意向城市": "大城市", "意向职位": "AP,英语文学，学术写作", "薪资期望": "教学 40-50k \n管理50-60K", "性别": "男", "肤色": "白", "学历": "硕士", "更新日期": 1643328000000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[60/670] 导入: R22061 - Yolanda (Cherry)"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22061", "姓名": "Yolanda (Cherry)", "中介": "Bronson", "性别": "女", "更新日期": 1643328000000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[61/670] 导入: R22062 - Karole Watson"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22062", "姓名": "Karole Watson", "中介": "Ray", "国籍": "牙买加", "专业": "小学教育", "教学经验": "3年", "上岗时间": "Aug.2022", "性别": "女", "肤色": "黑", "学历": "硕士", "更新日期": 1643328000000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[62/670] 导入: R22063 - Elijah Thomas"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22063", "姓名": "Elijah Thomas", "中介": "Himo", "国籍": "美国", "资格证": "TEFL", "教学经验": "3年", "目前所在地": "杭州", "上岗时间": "Feb. 2022", "签证类型": "工作签证", "意向城市": "不限", "意向职位": "幼儿园，小学，初中", "薪资期望": "26K", "性别": "男", "肤色": "黑", "学历": "本科", "更新日期": 1643328000000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[63/670] 导入: R22064 - George"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22064", "姓名": "George", "中介": "Ray", "教学经验": "7.5年", "跟进记录": "求职金生管理岗", "性别": "男", "肤色": "白", "更新日期": 1643328000000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[64/670] 导入: R22065 - Aaron Wilde"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22065", "姓名": "Aaron Wilde", "中介": "Ray", "国籍": "美国", "目前所在地": "境外·香港", "意向城市": "广州、珠海", "性别": "男", "肤色": "白"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[65/670] 导入: R22066 - Winnifred Reid"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22066", "姓名": "Winnifred Reid", "中介": "Ray", "国籍": "牙买加", "资格证": "QTS", "上岗时间": "Feb. 2022", "意向城市": "深圳", "性别": "女", "肤色": "黑"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[66/670] 导入: R22067 - Mike Chernavin"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22067", "姓名": "Mike Chernavin", "中介": "Ray", "国籍": "俄罗斯", "专业": "教育学", "目前所在地": "深圳", "签证类型": "工作签证", "工签职位": "俄罗斯语教师", "意向城市": "深圳", "跟进记录": "国培10月刚下证", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1643328000000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[67/670] 导入: R22068 - Eugene Horak"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22068", "姓名": "Eugene Horak", "中介": "Alessandra", "国籍": "南非", "专业": "工程学", "资格证": "TEFL", "教学经验": "12年", "目前所在地": "深圳", "上岗时间": "Feb. 2022", "意向城市": "深圳", "薪资期望": "20K", "跟进记录": "发爱义JD", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1643414400000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[68/670] 导入: R22069 - Donald Anthony Hines"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22069", "姓名": "Donald Anthony Hines", "中介": "Alessandra", "国籍": "美国", "专业": "教育学", "教学经验": "4年", "意向职位": "教学主管", "跟进记录": "等简历视频，拟发金生", "性别": "男", "肤色": "白", "学历": "博士", "更新日期": 1643328000000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[69/670] 导入: R22071 - Wanda Normn"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22071", "姓名": "Wanda Normn", "中介": "Alessandra", "国籍": "美国", "专业": "中药学", "资格证": "教师资格证", "教学经验": "7年", "上岗时间": "Feb. 2022", "签证类型": "工作签证", "意向城市": "江苏", "薪资期望": "23000 after tax\n paid holidays", "跟进记录": "Sherry问江苏", "性别": "女", "肤色": "白", "学历": "硕士", "更新日期": 1644019200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[70/670] 导入: R22072 - Sonia Ike"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22072", "姓名": "Sonia Ike", "中介": "Ray", "国籍": "美国", "专业": "国际经济发展", "资格证": "TEFL", "教学经验": "1年", "目前所在地": "深圳", "上岗时间": "Feb. 2022", "签证类型": "停留签证", "意向城市": "深圳福田", "意向职位": "四年级及以上", "薪资期望": "27K+3K", "性别": "女", "肤色": "黑", "学历": "硕士", "更新日期": 1644019200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[71/670] 导入: R22073 - Jackson Pollock"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22073", "姓名": "Jackson Pollock", "中介": "Alessandra", "国籍": "美国", "专业": "IT", "资格证": "TEFL", "教学经验": "12年", "目前所在地": "安徽合肥", "上岗时间": "Feb. 2022", "签证类型": "家属签证", "意向城市": "南方城市", "意向职位": "幼儿园，小学，初中", "薪资期望": "22-30k", "跟进记录": "可发SIE", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1644019200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[72/670] 导入: R22074 - Jack Pinion"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22074", "姓名": "Jack Pinion", "中介": "Alessandra", "国籍": "英国", "专业": "商业管理", "资格证": "TEFL", "教学经验": "4年", "目前所在地": "上海", "上岗时间": "Feb. 2022", "签证类型": "工作签证", "意向城市": "上海", "意向职位": "幼儿园，小学，初中", "薪资期望": "28K", "跟进记录": "Barry@Panda", "性别": "男", "肤色": "白", "学历": "本科", "是否可转聘": "可", "更新日期": 1644019200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[73/670] 导入: R22075 - Corey Lindner"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22075", "姓名": "Corey Lindner", "中介": "Ray", "国籍": "牙买加", "专业": "管理", "资格证": "TEFL", "教学经验": "7年", "目前所在地": "武汉", "上岗时间": "Jul.2022", "签证类型": "工作签证", "意向城市": "南方海滨城市", "意向职位": "幼儿园，小学，初中", "薪资期望": "20K税后", "性别": "男", "肤色": "黑", "学历": "本科", "更新日期": 1644019200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[74/670] 导入: R22076 - Eric-Theophilus Nwodom"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22076", "姓名": "Eric-Theophilus Nwodom", "中介": "Ray", "国籍": "尼日利亚", "专业": "本科工业物理", "资格证": "教师资格证", "教学经验": "5年", "目前所在地": "苏州", "上岗时间": "Feb. 2022", "签证类型": "工作签证", "意向职位": "IGCSE/A level Physics", "跟进记录": "已发君华国际学校，2.9拒绝", "性别": "男", "肤色": "黑", "学历": "硕士", "是否可转聘": "可", "更新日期": 1644192000000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[75/670] 导入: R22077 - Val Sheptiukov"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22077", "姓名": "Val Sheptiukov", "中介": "Ray", "国籍": "俄罗斯", "专业": "体育教育学", "教学经验": "8年", "目前所在地": "深圳", "上岗时间": "Aug.2022", "签证类型": "工作签证", "工签职位": "篮球教练", "意向城市": "深圳", "意向职位": "篮球教练、体育老师", "薪资期望": "20K税后+5K住宿", "性别": "男", "肤色": "白", "学历": "硕士", "更新日期": 1644364800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[76/670] 导入: R22078 - Romani"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22078", "姓名": "Romani", "中介": "Ray", "国籍": "俄罗斯", "专业": "教育学", "资格证": "教师资格证", "教学经验": "7年", "目前所在地": "深圳", "上岗时间": "Feb. 2022", "签证类型": "家属签证", "意向城市": "深圳", "跟进记录": "4月可有中国身份证", "性别": "男", "肤色": "白", "学历": "硕士", "是否可转聘": "可", "更新日期": 1644364800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[77/670] 导入: R22079 - Darl"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22079", "姓名": "Darl", "中介": "Sherry", "国籍": "爱尔兰", "资格证": "TEFL", "教学经验": "4年", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向城市": "广州、佛山", "意向职位": "ESL", "薪资期望": "26税后以上", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1644451200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[78/670] 导入: R22080 - Eugene Horak"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22080", "姓名": "Eugene Horak", "中介": "Alessandra", "国籍": "南非", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1644451200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[79/670] 导入: R22081 - Jameyia Shamia"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22081", "姓名": "Jameyia Shamia", "中介": "优才社郭", "国籍": "美国", "专业": "计算机工程", "教学经验": "3年", "目前所在地": "深圳", "上岗时间": "Mar.2022", "签证类型": "工作签证", "意向城市": "宝安、福田或南山区", "意向职位": "初高中", "薪资期望": "20K税后+住宿", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1644451200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[80/670] 导入: R22082 - Matthew McGovern"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22082", "姓名": "Matthew McGovern", "中介": "Himo", "国籍": "美国", "教学经验": "15年", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向城市": "上\\广\\深", "意向职位": "初高中ESL", "薪资期望": "30K税后", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1644451200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[81/670] 导入: R22084 - Ana Gomaez"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22084", "姓名": "Ana Gomaez", "中介": "优才社郭", "国籍": "西班牙", "专业": "历史", "上岗时间": "Aug.2022", "签证类型": "工作签证", "工签职位": "西语老师", "意向城市": "广州佛山深圳", "意向职位": "西班牙语", "薪资期望": "薪资可谈", "性别": "女", "肤色": "白", "学历": "硕士", "更新日期": 1644883200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[82/670] 导入: R22085 - Jeffrey Young"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22085", "姓名": "Jeffrey Young", "中介": "优才社郭", "国籍": "美国", "专业": "体育管理", "教学经验": "3年", "目前所在地": "广州", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向城市": "上海广州深圳", "意向职位": "体育", "薪资期望": "27K+", "性别": "男", "肤色": "白", "学历": "硕士", "更新日期": 1644883200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[83/670] 导入: R22087 - Fergus Butler"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22087", "姓名": "Fergus Butler", "中介": "Ray", "国籍": "爱尔兰", "专业": "供应链管理", "资格证": "TEFL", "教学经验": "6年", "目前所在地": "深圳", "上岗时间": "Feb. 2022", "签证类型": "Feb. 2022", "意向城市": "深圳", "意向职位": "幼儿园，小学，初中", "薪资期望": "薪资可谈", "性别": "男", "肤色": "白", "学历": "硕士", "更新日期": 1645056000000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[84/670] 导入: R22088 - Erik Molina"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22088", "姓名": "Erik Molina", "中介": "优才社郭", "国籍": "美国", "教学经验": "3年", "目前所在地": "北京", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "小学Homeroom", "薪资期望": "25-31K", "性别": "男", "肤色": "白", "学历": "硕士", "更新日期": 1646006400000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[85/670] 导入: R22089 - OSCAR GUTIERREZ"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22089", "姓名": "OSCAR GUTIERREZ", "中介": "优才社郭", "国籍": "西班牙", "专业": "教育学与英语", "目前所在地": "北京", "上岗时间": "Feb. 2022", "签证类型": "工作签证", "工签职位": "经理", "意向城市": "深圳", "意向职位": "西语", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1646006400000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[86/670] 导入: R22090 - Bulent Yuksel"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22090", "姓名": "Bulent Yuksel", "中介": "优才社郭", "国籍": "美国", "专业": "经济", "资格证": "教师资格证", "教学经验": "9年", "目前所在地": "慈溪", "上岗时间": "Apr or Sep", "意向城市": "深圳", "意向职位": "数学", "薪资期望": "25K税后+住宿", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1646006400000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[87/670] 导入: R22091 - Rajesh Koonan"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22091", "姓名": "Rajesh Koonan", "中介": "优才社郭", "国籍": "印度", "专业": "数学-教育学", "教学经验": "8年", "目前所在地": "贵州", "上岗时间": "Mar.2022", "意向城市": "深圳", "意向职位": "数学", "性别": "男", "肤色": "棕", "学历": "硕士", "更新日期": 1646006400000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[88/670] 导入: R22092 - Declan Roche"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22092", "姓名": "Declan Roche", "中介": "优才社郭", "国籍": "爱尔兰", "资格证": "足球教练证", "教学经验": "10年", "目前所在地": "济南", "上岗时间": "Aug.2022", "签证类型": "工作签证", "工签职位": "足球教练", "意向职位": "足球教练", "薪资期望": "28税后", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1646006400000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[89/670] 导入: R22093 - Danielle Tedesha Whyte"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22093", "姓名": "Danielle Tedesha Whyte", "中介": "Ray", "国籍": "牙买加", "专业": "旅游管理", "资格证": "TEFL", "教学经验": "3年", "上岗时间": "Mar.2022", "签证类型": "工作签证", "意向城市": "不限", "意向职位": "ESL", "薪资期望": "23k左右", "性别": "女", "肤色": "黑", "学历": "本科", "是否可转聘": "可", "更新日期": 1646092800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[90/670] 导入: R22094 - Jay"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22094", "姓名": "Jay", "中介": "Alessandra", "国籍": "南非", "资格证": "TESOL", "教学经验": "4年", "目前所在地": "郑州", "上岗时间": "Mar.2022", "签证类型": "工作签证", "薪资期望": "20-27K", "性别": "男", "肤色": "黑", "更新日期": 1646438400000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[91/670] 导入: R22095 - Filip Mitrović"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22095", "姓名": "Filip Mitrović", "中介": "Ray", "国籍": "塞尔维亚", "专业": "商业与市场管理", "资格证": "IB PYP", "教学经验": "8年", "目前所在地": "北京", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向城市": "深圳，上海，北京", "意向职位": "ESL,体育，经济", "薪资期望": "28-30k", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1646438400000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[92/670] 导入: R22096 - Shawn Fobes"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22096", "姓名": "Shawn Fobes", "国籍": "牙买加", "性别": "男", "肤色": "黑", "更新日期": 1646438400000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[93/670] 导入: R22097 - Cristina Isabel Villalobos Ruiz."
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22097", "姓名": "Cristina Isabel Villalobos Ruiz.", "中介": "Ray", "国籍": "墨西哥", "专业": "兽医", "资格证": "TEFL / PYP", "教学经验": "3年", "目前所在地": "广州", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1646438400000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[94/670] 导入: R22098 - Gordan"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22098", "姓名": "Gordan", "中介": "Dandan", "国籍": "塞尔维亚", "专业": "体育教育学", "教学经验": "10年", "目前所在地": "深圳", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "体育", "薪资期望": "30K", "性别": "男", "肤色": "白", "学历": "硕士", "更新日期": 1646438400000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[95/670] 导入: R22099 - Claus"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22099", "姓名": "Claus", "中介": "Byron", "国籍": "英国", "意向城市": "深圳", "薪资期望": "20K", "性别": "男", "肤色": "黄", "学历": "本科", "更新日期": 1646611200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[96/670] 导入: R22100 - Jacob Parming"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22100", "姓名": "Jacob Parming", "中介": "Byron", "国籍": "瑞典", "专业": "机械工程", "意向城市": "上海", "薪资期望": "27K+", "性别": "男", "肤色": "白", "学历": "硕士", "更新日期": 1646611200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[97/670] 导入: R22101 - Kirsten Marshall"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22101", "姓名": "Kirsten Marshall", "中介": "Himo", "国籍": "南非", "资格证": "PGCE", "目前所在地": "上海", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向城市": "苏州", "意向职位": "幼儿园", "薪资期望": "28-30K", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1647216000000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[98/670] 导入: R22102 - Chayce Dylan Andrew Zangel."
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22102", "姓名": "Chayce Dylan Andrew Zangel.", "中介": "Himo", "国籍": "南非", "教学经验": "5年", "目前所在地": "天津", "上岗时间": "Jul.2022", "签证类型": "工作签证", "意向城市": "天津", "意向职位": "幼儿园，小学", "薪资期望": "20K税后+住宿", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1647216000000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[99/670] 导入: R22103 - Rochelle Nadine Simon"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22103", "姓名": "Rochelle Nadine Simon", "中介": "Himo", "国籍": "南非", "专业": "基础教育", "资格证": "TEFL", "教学经验": "4年", "目前所在地": "天津", "上岗时间": "Jul.2022", "签证类型": "工作签证", "意向城市": "天津", "意向职位": "幼儿园，小学", "薪资期望": "20K", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1647216000000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[100/670] 导入: R22104 - MARIKA SCOTT"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22104", "姓名": "MARIKA SCOTT", "中介": "Sherry", "国籍": "南非", "专业": "法律", "教学经验": "20年", "目前所在地": "宜昌", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向城市": "深圳、沿海", "意向职位": "高中", "薪资期望": "25k左右", "性别": "女", "肤色": "白", "学历": "硕士", "更新日期": 1647388800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[101/670] 导入: R22105 - Grant Scott"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22105", "姓名": "Grant Scott", "中介": "Sherry", "国籍": "南非", "专业": "工程", "教学经验": "11年", "目前所在地": "宜昌", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向城市": "深圳、沿海", "意向职位": "高中", "薪资期望": "25k左右", "性别": "男", "肤色": "白", "学历": "硕士", "更新日期": 1647388800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[102/670] 导入: R22106 - GORANA DURDIC"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22106", "姓名": "GORANA DURDIC", "中介": "Ray", "国籍": "塞尔维亚", "专业": "生物医学工程", "教学经验": "4年", "目前所在地": "深圳", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "生物、化学", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1647475200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[103/670] 导入: R22107 - Tyron"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22107", "姓名": "Tyron", "中介": "Alessandra", "国籍": "南非", "资格证": "PGCE", "教学经验": "5年", "目前所在地": "西安", "上岗时间": "Aug.2022", "性别": "男", "肤色": "白", "学历": "硕士", "更新日期": 1649116800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[104/670] 导入: R22108 - Sebastien Le"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22108", "姓名": "Sebastien Le", "中介": "优才社郭", "国籍": "法国", "意向职位": "高中艺术", "性别": "男", "肤色": "白", "更新日期": 1649116800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[105/670] 导入: R22109 - Jack"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22109", "姓名": "Jack", "中介": "优才社郭", "国籍": "英国", "专业": "历史", "资格证": "TEFL", "教学经验": "8年", "目前所在地": "徐州", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向职位": "高中", "薪资期望": "30K+住宿", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1649116800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[106/670] 导入: R22111 - Dana"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22111", "姓名": "Dana", "中介": "Sherry", "国籍": "塞尔维亚", "专业": "音乐", "教学经验": "5年", "目前所在地": "上海", "上岗时间": "Aug.2022", "意向职位": "音乐", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1649116800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[107/670] 导入: R22112 - Jessy"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22112", "姓名": "Jessy", "中介": "Alessandra", "国籍": "伊朗", "性别": "女", "肤色": "白", "更新日期": 1649116800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[108/670] 导入: R22113 - Giorgi"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22113", "姓名": "Giorgi", "中介": "Alessandra", "国籍": "乌克兰", "性别": "男", "肤色": "白", "更新日期": 1649116800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[109/670] 导入: R22114 - Gyulie"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22114", "姓名": "Gyulie", "中介": "Alessandra", "国籍": "亚美尼亚", "性别": "女", "肤色": "白", "更新日期": 1649116800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[110/670] 导入: R22115 - Elizaveta （Lily)"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22115", "姓名": "Elizaveta （Lily)", "中介": "Alessandra", "国籍": "俄罗斯", "性别": "女", "肤色": "白", "更新日期": 1649116800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[111/670] 导入: R22116 - Caroline"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22116", "姓名": "Caroline", "中介": "Sherry", "国籍": "英国", "薪资期望": "34K", "性别": "女", "肤色": "白", "更新日期": 1649116800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[112/670] 导入: R22117 - Peter"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22117", "姓名": "Peter", "中介": "Sherry", "国籍": "英国", "薪资期望": "28k", "性别": "男", "肤色": "白", "更新日期": 1649116800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[113/670] 导入: R22118 - Jonathan Paets"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22118", "姓名": "Jonathan Paets", "中介": "优才社郭", "国籍": "美国", "专业": "音乐", "意向职位": "音乐", "性别": "男", "肤色": "黑", "更新日期": 1649116800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[114/670] 导入: R22119 - Callum Jones"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22119", "姓名": "Callum Jones", "中介": "Ray", "国籍": "英国", "意向职位": "视觉设计", "性别": "男", "肤色": "白", "更新日期": 1649116800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[115/670] 导入: R22120 - Miguel"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22120", "姓名": "Miguel", "中介": "Ray", "国籍": "美国", "教学经验": "12年", "意向职位": "幼儿园", "薪资期望": "30k", "性别": "男", "肤色": "白", "更新日期": 1649116800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[116/670] 导入: R22121 - Santie Otto"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22121", "姓名": "Santie Otto", "中介": "优才社郭", "国籍": "南非", "意向职位": "幼儿园", "薪资期望": "28K", "性别": "女", "肤色": "白", "更新日期": 1649116800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[117/670] 导入: R22122 - Vardan Sahakian"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22122", "姓名": "Vardan Sahakian", "中介": "优才社郭", "国籍": "澳大利亚", "意向职位": "校长", "性别": "男", "肤色": "白", "更新日期": 1649116800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[118/670] 导入: R22123 - Rodney Allan Callinan"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22123", "姓名": "Rodney Allan Callinan", "中介": "Ray", "国籍": "澳大利亚", "意向职位": "幼儿园校长", "性别": "男", "肤色": "白", "更新日期": 1649116800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[119/670] 导入: R22124 - Manuel Basso"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22124", "姓名": "Manuel Basso", "中介": "优才社郭", "国籍": "英国", "专业": "法律", "资格证": "TEFL", "教学经验": "2年", "目前所在地": "深圳", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向职位": "幼儿园或小学低年级", "薪资期望": "税后28K+住宿", "性别": "男", "肤色": "白", "学历": "硕士", "更新日期": 1649116800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[120/670] 导入: R22125 - Paul J. Blois"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22125", "姓名": "Paul J. Blois", "中介": "优才社郭", "国籍": "加拿大", "专业": "数学教育", "资格证": "IB证书", "目前所在地": "佛山", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向职位": "数学科学生物化学职位", "薪资期望": "30K+住宿", "性别": "男", "肤色": "白", "学历": "硕士", "更新日期": 1649116800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[121/670] 导入: R22126 - Gabi"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22126", "姓名": "Gabi", "中介": "Ray", "国籍": "匈牙利", "目前所在地": "深圳", "上岗时间": "ASAP", "签证类型": "工作签证", "意向职位": "视觉设计", "性别": "男", "肤色": "白", "更新日期": 1649116800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[122/670] 导入: R22127 - Chris Carter"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22127", "姓名": "Chris Carter", "中介": "优才社郭", "国籍": "美国", "专业": "教育领导学", "资格证": "MBA+PGCE+AP，IBDP和加拿大课程经验", "教学经验": "10年管理经验", "目前所在地": "广州", "上岗时间": "Aug.2022", "签证类型": "中国绿卡", "意向职位": "校长、管理岗", "薪资期望": "50-90万", "性别": "男", "肤色": "白", "学历": "硕士", "更新日期": 1649116800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[123/670] 导入: R22128 - Henry Skupek"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22128", "姓名": "Henry Skupek", "中介": "优才社郭", "国籍": "澳大利亚", "目前所在地": "深圳", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向职位": "校长、管理岗", "性别": "男", "肤色": "白", "学历": "博士", "更新日期": 1649116800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[124/670] 导入: R22129 - Adnan"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22129", "姓名": "Adnan", "中介": "Ray", "国籍": "英国", "资格证": "TEFL", "目前所在地": "深圳", "签证类型": "工作签证", "意向职位": "小学、初中、高中", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1649116800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[125/670] 导入: R22130 - Colin Jones"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22130", "姓名": "Colin Jones", "中介": "Ray", "国籍": "英国", "资格证": "TEFL", "教学经验": "6年", "目前所在地": "深圳", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向职位": "小学、初中、高中", "薪资期望": "20K", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1649116800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[126/670] 导入: R22131 - Max Klein"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22131", "姓名": "Max Klein", "中介": "优才社郭", "国籍": "美国", "专业": "政治", "资格证": "TEFL", "教学经验": "2年", "目前所在地": "深圳", "上岗时间": "ASAP", "签证类型": "工作签证", "意向城市": "深圳、广州", "意向职位": "幼儿园", "薪资期望": "30k", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1649116800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[127/670] 导入: R22132 - Wilma Joubert"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22132", "姓名": "Wilma Joubert", "中介": "优才社郭", "国籍": "南非", "专业": "教育学", "教学经验": "4年幼儿园", "目前所在地": "佛山", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向城市": "深圳海口三亚", "意向职位": "幼儿园", "薪资期望": "28K", "性别": "女", "肤色": "白", "学历": "硕士", "更新日期": 1649116800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[128/670] 导入: R22133 - SCOTT WELK"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22133", "姓名": "SCOTT WELK", "中介": "优才社郭", "国籍": "美国", "专业": "早教专业", "资格证": "TEFL", "目前所在地": "北京", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向职位": "幼儿园校长、管理岗", "薪资期望": "50-70K", "性别": "男", "学历": "硕士", "更新日期": 1649116800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[129/670] 导入: R22134 - Andrew Astbury"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22134", "姓名": "Andrew Astbury", "中介": "优才社郭", "国籍": "英国", "目前所在地": "天津", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向职位": "校长，副校长和主管", "薪资期望": "60K+", "性别": "男", "肤色": "白", "更新日期": 1649116800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[130/670] 导入: R22135 - Klinton Cahoy"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22135", "姓名": "Klinton Cahoy", "中介": "优才社郭", "国籍": "美国", "专业": "国际关系", "资格证": "TEFL", "教学经验": "4年", "目前所在地": "武汉", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向职位": "社会科学", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1649116800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[131/670] 导入: R22136 - Stacy Johnson"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22136", "姓名": "Stacy Johnson", "中介": "Ray", "国籍": "美国", "资格证": "TEFL", "教学经验": "4年", "目前所在地": "深圳", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向城市": "深圳上海", "意向职位": "小学、初中、高中", "薪资期望": "25k", "性别": "男", "肤色": "黑", "学历": "硕士", "更新日期": 1649116800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[132/670] 导入: R22137 - Eamonn OHagan"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22137", "姓名": "Eamonn OHagan", "中介": "优才社郭", "国籍": "英国", "专业": "法律", "资格证": "TEFL", "教学经验": "4年", "目前所在地": "深圳", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向城市": "深圳、成都", "意向职位": "音乐\\英语", "薪资期望": "26-31K", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1649116800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[133/670] 导入: R22138 - Kyle Grimes"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22138", "姓名": "Kyle Grimes", "中介": "Ray", "国籍": "美国", "专业": "课程设计", "资格证": "TESOL", "目前所在地": "深圳", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "校长、管理岗", "薪资期望": "税后35K", "性别": "男", "肤色": "白", "学历": "硕士", "更新日期": 1649116800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[134/670] 导入: R22139 - RIZKY TIELMAN"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22139", "姓名": "RIZKY TIELMAN", "中介": "优才社郭", "国籍": "澳大利亚", "专业": "教育学", "资格证": "PGCE", "教学经验": "25年", "目前所在地": "苏州", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向职位": "管理或商务教学", "薪资期望": "31.5K", "性别": "男", "肤色": "黄", "学历": "硕士", "更新日期": 1649116800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[135/670] 导入: R22140 - Lauren Byrne"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22140", "姓名": "Lauren Byrne", "中介": "Ray", "国籍": "爱尔兰", "目前所在地": "深圳", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向职位": "幼儿园", "薪资期望": "27K税后", "性别": "女", "肤色": "白", "更新日期": 1649116800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[136/670] 导入: R22141 - Daire Delaney"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22141", "姓名": "Daire Delaney", "中介": "Ray", "国籍": "爱尔兰", "目前所在地": "深圳", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向职位": "幼儿园、生物", "薪资期望": "27K税后", "性别": "男", "肤色": "白", "更新日期": 1649116800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[137/670] 导入: R22142 - Platon Kerau"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22142", "姓名": "Platon Kerau", "中介": "Ray", "国籍": "波兰", "专业": "艺术", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向职位": "艺术", "性别": "男", "肤色": "白", "更新日期": 1649116800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[138/670] 导入: R22143 - Derek Blair Buick"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22143", "姓名": "Derek Blair Buick", "中介": "Sherry", "国籍": "英国", "资格证": "TEFL", "教学经验": "12年", "目前所在地": "广州", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向职位": "高中", "薪资期望": "20K税后", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1649116800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[139/670] 导入: R22144 - Govender"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22144", "姓名": "Govender", "中介": "Sherry", "国籍": "南非", "教学经验": "23年", "目前所在地": "苏州", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向职位": "校长、管理岗", "性别": "男", "更新日期": 1649203200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[140/670] 导入: R22145 - David Janz"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22145", "姓名": "David Janz", "中介": "Ray", "国籍": "加拿大", "专业": "应用经济学", "资格证": "TESOL", "教学经验": "9年", "目前所在地": "深圳", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "高中", "薪资期望": "25K+住宿补贴", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1649203200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[141/670] 导入: R22146 - DavidAMedina"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22146", "姓名": "DavidAMedina", "中介": "优才社郭", "国籍": "美国", "意向职位": "校长、管理岗", "薪资期望": "50-60K", "性别": "男", "肤色": "白", "学历": "博士", "更新日期": 1649203200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[142/670] 导入: R22147 - JOSH R VANCE"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22147", "姓名": "JOSH R VANCE", "中介": "Ray", "国籍": "美国", "专业": "英语", "资格证": "TEFL", "教学经验": "4年", "目前所在地": "深圳", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "幼儿园", "薪资期望": "27K税后", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1649203200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[143/670] 导入: R22149 - Dejan Paunovic"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22149", "姓名": "Dejan Paunovic", "中介": "Ray", "国籍": "塞尔维亚", "专业": "英语教育学", "教学经验": "8年", "目前所在地": "深圳", "上岗时间": "ASAP", "签证类型": "家属签证", "意向城市": "深圳", "意向职位": "小学、初中、高中", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1649203200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[144/670] 导入: R22150 - Famia"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22150", "姓名": "Famia", "中介": "Ray", "国籍": "南非", "资格证": "TEFL", "教学经验": "3年", "目前所在地": "深圳", "上岗时间": "ASAP", "签证类型": "学生签证", "意向城市": "深圳", "意向职位": "幼儿园", "性别": "女", "肤色": "棕", "学历": "硕士", "更新日期": 1649203200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[145/670] 导入: R22151 - Steve"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22151", "姓名": "Steve", "中介": "Ray", "国籍": "英国", "目前所在地": "深圳", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "幼儿园", "性别": "男", "肤色": "白", "更新日期": 1649203200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[146/670] 导入: R22152 - Shanice"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22152", "姓名": "Shanice", "中介": "Ray", "国籍": "南非", "目前所在地": "深圳", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "幼儿园", "性别": "女", "肤色": "浅黑", "更新日期": 1649203200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[147/670] 导入: R22153 - SIPHESIHLE"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22153", "姓名": "SIPHESIHLE", "中介": "Himo", "国籍": "南非", "资格证": "TEFL", "教学经验": "5年", "目前所在地": "天津", "上岗时间": "Sep.2022", "签证类型": "工作签证", "意向城市": "天津", "意向职位": "小学", "薪资期望": "26税后以上", "性别": "女", "肤色": "黑", "学历": "本科", "更新日期": 1649203200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[148/670] 导入: R22154 - Jae Giford"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22154", "姓名": "Jae Giford", "中介": "Himo", "国籍": "英国", "专业": "化学", "资格证": "TEFL", "教学经验": "2年", "目前所在地": "福州", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向城市": "上海", "意向职位": "小学、初中、高中", "薪资期望": "28K", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1649203200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[149/670] 导入: R22155 - Wilma Joubert"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22155", "姓名": "Wilma Joubert", "中介": "优才社郭", "国籍": "南非", "专业": "教育学", "教学经验": "9年", "目前所在地": "佛山", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向城市": "深圳、三亚", "意向职位": "幼儿园", "薪资期望": "28K", "性别": "女", "肤色": "白", "学历": "本科", "年龄": 47.0, "更新日期": 1649203200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[150/670] 导入: R22156 - Santie Otto"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22156", "姓名": "Santie Otto", "中介": "Himo", "国籍": "南非", "专业": "商业管理", "教学经验": "5年", "目前所在地": "合肥", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向城市": "深圳、三亚", "意向职位": "幼儿园", "薪资期望": "27K", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1649203200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[151/670] 导入: R22157 - Gregory Farah"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22157", "姓名": "Gregory Farah", "中介": "Himo", "国籍": "南非", "专业": "心理学", "资格证": "TEFL", "教学经验": "4年", "目前所在地": "合肥", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向城市": "厦门、云南", "意向职位": "小学、初中、高中", "薪资期望": "25k", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1649203200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[152/670] 导入: R22158 - Claudine Bester"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22158", "姓名": "Claudine Bester", "中介": "Himo", "国籍": "南非", "专业": "教育学", "资格证": "PGCE", "教学经验": "12年", "目前所在地": "合肥", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向城市": "厦门、云南", "意向职位": "小学、初中、高中", "薪资期望": "25k", "性别": "女", "肤色": "白", "学历": "硕士", "更新日期": 1649203200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[153/670] 导入: R22159 - Carlin Reeves"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22159", "姓名": "Carlin Reeves", "中介": "Himo", "国籍": "南非", "资格证": "CELTA", "教学经验": "13年", "目前所在地": "杭州", "上岗时间": "ASAP", "签证类型": "工作签证", "意向城市": "杭州", "意向职位": "小学、初中、高中", "薪资期望": "20K", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1649203200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[154/670] 导入: R22160 - Reddy"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22160", "姓名": "Reddy", "中介": "Alessandra", "国籍": "南非", "专业": "早教专业", "教学经验": "15年", "目前所在地": "上海", "上岗时间": "May. 2022", "签证类型": "工作签证", "意向职位": "幼儿园", "薪资期望": "23-26税后", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1649203200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[155/670] 导入: R22161 - Saber"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22161", "姓名": "Saber", "中介": "Alessandra", "国籍": "伊朗", "专业": "生物", "教学经验": "10年", "目前所在地": "杭州", "上岗时间": "Aug.2022", "签证类型": "工作签证", "性别": "男", "肤色": "白", "学历": "博士", "更新日期": 1649203200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[156/670] 导入: R22162 - Franco Smith"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22162", "姓名": "Franco Smith", "中介": "Alessandra", "国籍": "南非", "专业": "小学教育学", "教学经验": "6年", "目前所在地": "苏州", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向城市": "苏州", "意向职位": "幼儿园、小学、初中", "薪资期望": "25K税后", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1649203200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[157/670] 导入: R22163 - Keaton"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22163", "姓名": "Keaton", "中介": "Ray", "国籍": "美国", "资格证": "教师资格证", "性别": "男", "肤色": "白", "更新日期": 1649203200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[158/670] 导入: R22164 - JASON HARADYN"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22164", "姓名": "JASON HARADYN", "中介": "Patrick-Lynne", "国籍": "英国", "专业": "数学", "资格证": "PGCE", "教学经验": "8年", "目前所在地": "章丘", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向职位": "数学", "性别": "男", "学历": "硕士", "更新日期": 1649289600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[159/670] 导入: R22165 - Candace Williams"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22165", "姓名": "Candace Williams", "中介": "Ray", "国籍": "美国", "专业": "教育领导学", "资格证": "教师资格证", "教学经验": "16年", "目前所在地": "广州", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向职位": "管理岗", "性别": "女", "学历": "硕士", "更新日期": 1649289600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[160/670] 导入: R22166 - Daniel Moss"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22166", "姓名": "Daniel Moss", "中介": "Nemo", "国籍": "英国", "专业": "古代历史", "资格证": "PGCE+QTS", "教学经验": "8年", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向职位": "高中、管理岗", "薪资期望": "30K税后", "性别": "男", "肤色": "白", "学历": "硕士", "更新日期": 1649289600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[161/670] 导入: R22167 - Ivan Vukasovic"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22167", "姓名": "Ivan Vukasovic", "中介": "Ray", "国籍": "塞尔维亚", "专业": "法律", "教学经验": "4年", "目前所在地": "深圳", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向职位": "幼儿园校长", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1649289600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[162/670] 导入: R22168 - MARKO 
JOVANIĆ"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22168", "姓名": "MARKO \nJOVANIĆ", "中介": "Ray", "国籍": "塞尔维亚", "专业": "体育教育学", "资格证": "TESOL", "教学经验": "7年", "目前所在地": "深圳", "上岗时间": "Aug.2022", "签证类型": "家属签证", "意向城市": "深圳", "意向职位": "体育", "薪资期望": "25-30K全包", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1649289600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[163/670] 导入: R22169 - STEVE SEWARD"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22169", "姓名": "STEVE SEWARD", "中介": "Ray", "国籍": "英国", "专业": "教育领导学", "资格证": "TKT", "教学经验": "9年", "目前所在地": "深圳", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向职位": "幼儿园校长", "性别": "男", "肤色": "白", "学历": "硕士", "更新日期": 1649376000000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[164/670] 导入: R22170 - Stefano J. Chin"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22170", "姓名": "Stefano J. Chin", "中介": "Ray", "国籍": "牙买加", "专业": "环境科学", "资格证": "TEFL", "教学经验": "7年", "目前所在地": "苏州", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向职位": "幼儿园、小学、初中", "薪资期望": "15-20税后", "性别": "男", "肤色": "黑", "学历": "本科", "更新日期": 1649376000000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[165/670] 导入: R22171 - David Reimer"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22171", "姓名": "David Reimer", "中介": "Ray", "专业": "心理学、教育学", "资格证": "教师资格证", "教学经验": "8年", "目前所在地": "深圳", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向职位": "心理、数学、文学、历史、Homeroom", "性别": "男", "肤色": "白", "学历": "硕士", "更新日期": 1649462400000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[166/670] 导入: R22173 - SHANICE SADHI"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22173", "姓名": "SHANICE SADHI", "中介": "Ray", "国籍": "牙买加", "资格证": "TEFL", "教学经验": "4年", "目前所在地": "深圳", "上岗时间": "ASAP", "签证类型": "工作签证", "意向职位": "幼儿园", "性别": "女", "肤色": "浅黑", "学历": "本科", "更新日期": 1649462400000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[167/670] 导入: R22174 - (Kate) EKATERINA AKMANOVA"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22174", "姓名": "(Kate) EKATERINA AKMANOVA", "中介": "Ray", "国籍": "俄罗斯", "专业": "英语教育学", "教学经验": "9年", "目前所在地": "汉中", "上岗时间": "ASAP", "签证类型": "工作签证", "意向职位": "幼儿园", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1649548800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[168/670] 导入: R22175 - SEBASTIAN 
ALEXANDER"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22175", "姓名": "SEBASTIAN \nALEXANDER", "中介": "Ray", "专业": "音乐", "教学经验": "5年数学", "目前所在地": "深圳", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向职位": "数学", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1649548800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[169/670] 导入: R22176 - Bart Mazur"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22176", "姓名": "Bart Mazur", "更新日期": 1649548800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[170/670] 导入: R22177 - Ray Flores"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22177", "姓名": "Ray Flores", "中介": "Sherry", "国籍": "美国", "专业": "亚洲研究", "资格证": "TEFL", "教学经验": "9年", "目前所在地": "深圳", "上岗时间": "ASAP", "签证类型": "工作签证", "意向职位": "幼儿园", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1649548800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[171/670] 导入: R22178 - Julia"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22178", "姓名": "Julia", "中介": "Ray", "国籍": "澳大利亚", "跟进记录": "推车公庙培训中心", "性别": "女", "肤色": "黄", "更新日期": 1649548800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[172/670] 导入: R22179 - Ian Wu"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22179", "姓名": "Ian Wu", "中介": "Ray", "国籍": "加拿大", "跟进记录": "推车公庙培训中心", "性别": "男", "肤色": "黄", "更新日期": 1649548800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[173/670] 导入: R22180 - CHRISTOPHER JACKSON"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22180", "姓名": "CHRISTOPHER JACKSON", "中介": "Patrick-Lynne", "国籍": "美国", "性别": "男", "肤色": "白", "更新日期": 1649980800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[174/670] 导入: R22181 - Kabel Moody(Rico)"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22181", "姓名": "Kabel Moody(Rico)", "中介": "俄Dan", "国籍": "美国", "专业": "体育教育学", "教学经验": "5年", "目前所在地": "浙江金华", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "体育", "薪资期望": "25-30K全包", "性别": "男", "肤色": "黑", "学历": "本科", "更新日期": 1649980800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[175/670] 导入: R22182 - Chabland Gabikini（Chaz)"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22182", "姓名": "Chabland Gabikini（Chaz)", "中介": "Ray", "国籍": "加拿大", "意向城市": "深圳", "意向职位": "体育", "性别": "男"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[176/670] 导入: R22183 - Tina"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22183", "姓名": "Tina", "中介": "Byron", "国籍": "德国", "意向城市": "深圳", "意向职位": "舞蹈", "性别": "女", "肤色": "白", "更新日期": 1650412800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[177/670] 导入: R22185 - Tracy N. Waugh"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22185", "姓名": "Tracy N. Waugh", "中介": "Ray", "国籍": "牙买加", "专业": "社会学", "资格证": "CELTA", "教学经验": "2年", "意向职位": "英语、英语文学", "性别": "女", "肤色": "黑", "学历": "本科", "更新日期": 1650412800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[178/670] 导入: R22186 - Amy"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22186", "姓名": "Amy", "中介": "Ray", "国籍": "埃塞俄比亚", "教学经验": "7年", "性别": "女", "肤色": "黑", "学历": "本科", "更新日期": 1650412800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[179/670] 导入: R22187 - Craig Maguire"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22187", "姓名": "Craig Maguire", "中介": "Alessandra", "国籍": "英国", "专业": "旅游管理", "教学经验": "6年", "目前所在地": "上海", "意向职位": "英语、管理homeroom", "性别": "男", "学历": "本科", "更新日期": 1650412800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[180/670] 导入: R22188 - Saber"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22188", "姓名": "Saber", "中介": "Alessandra", "国籍": "伊朗", "专业": "生物学", "资格证": "TEFL", "教学经验": "10年", "目前所在地": "杭州", "上岗时间": "Aug.2022", "性别": "男", "肤色": "白", "学历": "博士", "更新日期": 1650412800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[181/670] 导入: R22189 - Leburu Boniswa  Baby"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22189", "姓名": "Leburu Boniswa  Baby", "中介": "Alessandra", "国籍": "南非", "性别": "女", "肤色": "黑", "更新日期": 1650412800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[182/670] 导入: R22190 - Nicholas_Sukiennik"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22190", "姓名": "Nicholas_Sukiennik", "中介": "Himo", "国籍": "美国", "专业": "计算机科学\n本科化学工程", "资格证": "TEFL", "目前所在地": "境外·美国", "上岗时间": "Aug.2022", "意向职位": "ESL", "性别": "男", "肤色": "白", "学历": "硕士", "更新日期": 1650412800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[183/670] 导入: R22191 - Jacob Ketcher"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22191", "姓名": "Jacob Ketcher", "中介": "Himo", "国籍": "英国", "专业": "本科历史专业", "资格证": "TEFL", "教学经验": "5年", "目前所在地": "南昌", "上岗时间": "ASAP", "签证类型": "工作签证", "意向城市": "深圳，上海，北京，南昌，苏州", "意向职位": "高中国际学校ESL", "薪资期望": "30K", "性别": "男", "肤色": "白", "学历": "硕士", "更新日期": 1650412800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[184/670] 导入: R22192 - Parahat Tajov"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22192", "姓名": "Parahat Tajov", "中介": "Josie", "国籍": "土库曼斯坦", "专业": "物理教育学", "意向职位": "物理", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1650412800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[185/670] 导入: R22193 - Jono"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22193", "姓名": "Jono", "中介": "Michael", "国籍": "澳大利亚", "性别": "男", "肤色": "白", "更新日期": 1650412800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[186/670] 导入: R22194 - Isaac Smith"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22194", "姓名": "Isaac Smith", "中介": "Ray", "国籍": "澳大利亚", "专业": "国际商务", "资格证": "TEFL", "教学经验": "7年", "意向城市": "深圳罗湖", "意向职位": "ESL，homeroom", "薪资期望": "25-30K", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1651017600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[187/670] 导入: R22195 - Kelin Song"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22195", "姓名": "Kelin Song", "中介": "优才社郭", "国籍": "英国", "专业": "心理学", "资格证": "TEFL", "意向城市": "深圳", "意向职位": "ESL，homeroom", "薪资期望": "25K", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1651017600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[188/670] 导入: R22196 - Klaus"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22196", "姓名": "Klaus", "中介": "Ray", "国籍": "英国", "性别": "男", "肤色": "黑", "更新日期": 1651017600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[189/670] 导入: R22197 - Mason"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22197", "姓名": "Mason", "中介": "Alessandra", "国籍": "摩洛哥", "专业": "摩洛哥", "性别": "男", "肤色": "白", "更新日期": 1652054400000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[190/670] 导入: R22198 - Tony Melnick"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22198", "姓名": "Tony Melnick", "中介": "Ray", "国籍": "美国", "专业": "早教专业", "资格证": "TEFL", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1652054400000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[191/670] 导入: R22199 - Anton"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22199", "姓名": "Anton", "中介": "Ray", "国籍": "英国", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1652140800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[192/670] 导入: R22200 - Gaya"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22200", "姓名": "Gaya", "中介": "Ray", "国籍": "亚美尼亚", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1652400000000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[193/670] 导入: R22201 - Margarita Mchedlishvili"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22201", "姓名": "Margarita Mchedlishvili", "中介": "Ray", "国籍": "俄罗斯", "专业": "教育学", "资格证": "iPGCE", "教学经验": "5年", "目前所在地": "深圳", "签证类型": "工作签证", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1653004800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[194/670] 导入: R22202 - Lily"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22202", "姓名": "Lily", "中介": "Ray", "国籍": "墨西哥", "专业": "教育学", "教学经验": "15年", "性别": "女", "肤色": "棕", "学历": "本科", "更新日期": 1653004800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[195/670] 导入: R22203 - Goran"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22203", "姓名": "Goran", "中介": "Richel", "国籍": "塞尔维亚", "性别": "男", "肤色": "白", "更新日期": 1653004800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[196/670] 导入: R22204 - Tricia"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22204", "姓名": "Tricia", "中介": "Zaidi", "国籍": "南非", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1653264000000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[197/670] 导入: R22205 - Dylan Burgess"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22205", "姓名": "Dylan Burgess", "中介": "优才社郭", "国籍": "英国", "专业": "心理学", "资格证": "TEFL", "教学经验": "7年", "目前所在地": "杭州", "签证类型": "工作签证", "意向城市": "杭州", "意向职位": "小学", "薪资期望": "26K", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1653264000000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[198/670] 导入: R22206 - Matthew Mitchell"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22206", "姓名": "Matthew Mitchell", "中介": "Ray", "国籍": "美国", "资格证": "TEFL", "目前所在地": "境外·美国", "意向城市": "深圳", "薪资期望": "16-18", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1658880000000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[199/670] 导入: R22207 - Nate C"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22207", "姓名": "Nate C", "中介": "Himo", "国籍": "美国", "专业": "市场、经济", "教学经验": "10年+", "目前所在地": "境外·韩国", "上岗时间": "Nov.2022", "意向城市": "深圳", "意向职位": "幼儿园，小学，初中", "薪资期望": "25-30K", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1658966400000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[200/670] 导入: R22208 - Richard Joseph Ko"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22208", "姓名": "Richard Joseph Ko", "中介": "Ray", "国籍": "美国", "资格证": "TEFL", "目前所在地": "深圳", "意向城市": "深圳", "性别": "男", "肤色": "黄", "学历": "本科", "更新日期": 1658966400000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[201/670] 导入: R22209 - Johnny Zaher"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22209", "姓名": "Johnny Zaher", "中介": "Sherry", "国籍": "巴基斯坦", "性别": "男", "学历": "博士", "更新日期": 1660089600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[202/670] 导入: R22210 - Neil Mcmillan"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22210", "姓名": "Neil Mcmillan", "中介": "优才社郭", "国籍": "英国", "资格证": "TEFL", "目前所在地": "深圳", "意向城市": "深圳", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1660089600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[203/670] 导入: R22211 - ABD"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22211", "姓名": "ABD", "中介": "Ray", "国籍": "摩洛哥", "专业": "地理", "意向城市": "深圳", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1660089600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[204/670] 导入: R22212 - Iso"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22212", "姓名": "Iso", "中介": "Ray", "国籍": "土耳其", "意向城市": "深圳", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1660089600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[205/670] 导入: R22213 - Tatevik"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22213", "姓名": "Tatevik", "中介": "Ray", "国籍": "亚美尼亚", "意向城市": "深圳", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1660089600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[206/670] 导入: R22214 - Emma"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22214", "姓名": "Emma", "中介": "Ray", "国籍": "南非", "性别": "女", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[207/670] 导入: R22215 - Maria Hendriena Bresler"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22215", "姓名": "Maria Hendriena Bresler", "中介": "Patrick-Lynne", "国籍": "南非", "目前所在地": "广州", "意向城市": "广州", "薪资期望": "税后25", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1660262400000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[208/670] 导入: R22216 - Yanga Sontshi"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22216", "姓名": "Yanga Sontshi", "中介": "Himo", "国籍": "南非", "专业": "教育学", "教学经验": "8年", "目前所在地": "昆山", "薪资期望": "税后25", "性别": "女", "肤色": "浅黑", "学历": "本科", "更新日期": 1660262400000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[209/670] 导入: R22217 - Petunia Khotle"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22217", "姓名": "Petunia Khotle", "中介": "Himo", "国籍": "南非", "专业": "戏剧", "目前所在地": "境外·韩国", "薪资期望": "23-25K", "性别": "女", "肤色": "浅黑", "学历": "本科", "更新日期": 1660348800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[210/670] 导入: R22218 - JOVAN
DORDEVIC"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22218", "姓名": "JOVAN\nDORDEVIC", "中介": "Helen", "国籍": "塞尔维亚", "专业": "地理", "目前所在地": "上海", "性别": "男", "肤色": "白", "学历": "硕士", "更新日期": 1660521600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[211/670] 导入: R22219 - Donald Tabor"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22219", "姓名": "Donald Tabor", "中介": "Kseniya", "国籍": "英国", "教学经验": "4年", "目前所在地": "深圳", "意向城市": "龙华", "意向职位": "幼儿园", "薪资期望": "28+税后", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1660608000000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[212/670] 导入: R22220 - Dr. Sarah"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22220", "姓名": "Dr. Sarah", "中介": "Ray", "国籍": "坦桑尼亚", "目前所在地": "武汉", "性别": "女", "肤色": "浅黑", "学历": "博士"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[213/670] 导入: R22221 - Michael MLADEN CAREVIĆ"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22221", "姓名": "Michael MLADEN CAREVIĆ", "中介": "Ray", "国籍": "塞尔维亚", "专业": "教育学", "目前所在地": "深圳", "跟进记录": "2年副校长", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1660780800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[214/670] 导入: R22222 - Jelena_Milosevic"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22222", "姓名": "Jelena_Milosevic", "中介": "Ray", "国籍": "塞尔维亚", "专业": "体育", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1660780800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[215/670] 导入: R22223 - Darko Cancar"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22223", "姓名": "Darko Cancar", "中介": "Ray", "国籍": "塞尔维亚", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1660780800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[216/670] 导入: R22224 - Cara Wilson"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22224", "姓名": "Cara Wilson", "中介": "Himo", "国籍": "英国", "目前所在地": "境外·英国", "薪资期望": "20-25K", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1660780800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[217/670] 导入: R22225 - David Bohlin"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22225", "姓名": "David Bohlin", "中介": "Ray", "国籍": "瑞典", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1660780800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[218/670] 导入: R22226 - Sandy Orozco"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22226", "姓名": "Sandy Orozco", "中介": "Ray", "国籍": "美国", "目前所在地": "深圳", "薪资期望": "28-32税后", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1660867200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[219/670] 导入: R22227 - Barnett Thomas"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22227", "姓名": "Barnett Thomas", "中介": "优才社郭", "国籍": "英国", "目前所在地": "境外·英国", "薪资期望": "22-25k", "跟进记录": "已签别的", "性别": "男", "肤色": "白", "学历": "本科", "是否可转聘": "新办", "更新日期": 1660867200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[220/670] 导入: R22228 - Enoch Nimeson"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22228", "姓名": "Enoch Nimeson", "中介": "优才社郭", "国籍": "加纳", "专业": "BA经济", "目前所在地": "南京", "薪资期望": "25K+", "性别": "男", "肤色": "黑", "学历": "博士", "更新日期": 1660867200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[221/670] 导入: R22229 - Julio Langford De Paula E Silva"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22229", "姓名": "Julio Langford De Paula E Silva", "中介": "Himo", "国籍": "南非", "专业": "英语文学", "资格证": "TEFL", "目前所在地": "西安", "意向城市": "西安", "薪资期望": "24K+", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1660867200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[222/670] 导入: R22230 - HINA ASIF"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22230", "姓名": "HINA ASIF", "中介": "优才社郭", "国籍": "巴基斯坦", "专业": "化学", "目前所在地": "北京", "薪资期望": "25-30K", "性别": "女", "肤色": "白", "学历": "博士", "更新日期": 1660867200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[223/670] 导入: R22231 - Ntenga Sihle"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22231", "姓名": "Ntenga Sihle", "中介": "Alessandra", "国籍": "南非", "专业": "本科教育学", "教学经验": "7年", "性别": "女", "肤色": "浅黑", "学历": "硕士", "更新日期": 1661731200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[224/670] 导入: R22232 - PERRY BRADSHAW"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22232", "姓名": "PERRY BRADSHAW", "中介": "Ray", "国籍": "英国", "专业": "商业研究", "资格证": "TEFL", "教学经验": "7年", "目前所在地": "境外·英国", "上岗时间": "Nov.2022", "意向城市": "深圳", "跟进记录": "在英国，9月中拿到美国学历，已面试SIE，无犯罪已有", "性别": "男", "肤色": "白", "学历": "本科", "是否可转聘": "新办", "更新日期": 1661817600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[225/670] 导入: R22233 - Julia Tsisin"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22233", "姓名": "Julia Tsisin", "中介": "希为Richard", "国籍": "美国", "专业": "双语教育", "资格证": "TEFL", "目前所在地": "境外·美国", "性别": "女", "肤色": "白", "学历": "硕士", "是否可转聘": "新办", "更新日期": 1661817600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[226/670] 导入: R22234 - Refilwe Digoamaje"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22234", "姓名": "Refilwe Digoamaje", "中介": "Ray", "国籍": "南非", "专业": "商业管理", "教学经验": "无", "目前所在地": "境外·南非", "上岗时间": "Feb.2023", "跟进记录": "已加Skype，约李明星面试", "性别": "女", "肤色": "浅黑", "学历": "本科", "是否可转聘": "新办", "更新日期": 1661817600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[227/670] 导入: R22235 - Jasen Hines"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22235", "姓名": "Jasen Hines", "中介": "Ray", "国籍": "美国", "专业": "社会学", "资格证": "PET & KET", "教学经验": "8年", "目前所在地": "境外·日本", "上岗时间": "Nov.2022", "意向城市": "深圳", "意向职位": "托福、阅读、写作", "跟进记录": "已加微信，在日本，9月中拿到无犯罪记录，建议日本办理，学历未认证", "性别": "男", "肤色": "黑", "学历": "本科", "是否可转聘": "新办", "更新日期": 1661817600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[228/670] 导入: R22236 - Charlie Arnold"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22236", "姓名": "Charlie Arnold", "中介": "Ray", "国籍": "美国", "专业": "刑事司法", "资格证": "TEFL", "教学经验": "无", "目前所在地": "境外·美国", "上岗时间": "Feb.2023", "意向城市": "深圳", "跟进记录": "skype联系了，在美国，估计明年才能来", "联系方式": "CharlieWarnold906@gmail.com", "性别": "男", "肤色": "白", "学历": "本科", "是否可转聘": "新办", "更新日期": 1661817600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[229/670] 导入: R22237 - Cornie van der Merwe"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22237", "姓名": "Cornie van der Merwe", "中介": "Ray", "国籍": "南非", "专业": "法律", "资格证": "TEFL", "教学经验": "1年", "目前所在地": "境外·韩国", "上岗时间": "Apr.2023", "意向城市": "深圳", "意向职位": "幼儿园小学ESL", "薪资期望": "18-24税后+住宿", "跟进记录": "一对南非白，在韩国，明天3月合同结束来中国", "联系方式": "cornievandermerwe19@gmail.com", "性别": "女", "肤色": "白", "学历": "本科", "是否可转聘": "新办", "更新日期": 1661817600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[230/670] 导入: R22238 - Williem Hendrik Van  Reenen"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22238", "姓名": "Williem Hendrik Van  Reenen", "中介": "Ray", "国籍": "南非", "专业": "体育", "资格证": "PGCE 体育", "教学经验": "2年", "目前所在地": "境外·韩国", "上岗时间": "Apr.2023", "意向城市": "深圳", "意向职位": "体育 G4-G12", "薪资期望": "23-28税后+住宿", "跟进记录": "一对南非白，在韩国，明天3月合同结束来中国", "联系方式": "dirkaplex@gmail.com", "性别": "男", "肤色": "白", "学历": "本科", "是否可转聘": "新办", "更新日期": 1661817600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[231/670] 导入: R22239 - THOMAS A MARAIS"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22239", "姓名": "THOMAS A MARAIS", "中介": "Ray", "国籍": "南非", "专业": "Humanities", "资格证": "TEFL", "目前所在地": "境外·韩国", "上岗时间": "Feb.2023", "跟进记录": "约Skpye聊", "联系方式": "mynameisteachertom@gmail.com", "性别": "男", "学历": "本科", "是否可转聘": "新办", "更新日期": 1661817600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[232/670] 导入: R22240 - Michaela Jones"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22240", "姓名": "Michaela Jones", "中介": "Ray", "国籍": "美国", "专业": "综合研究", "资格证": "ESL", "教学经验": "无", "目前所在地": "境外·美国", "上岗时间": "Feb.2023", "意向城市": "深圳，苏州、成都、北京", "意向职位": "K1-G3 英语", "跟进记录": "22年8月毕业，在美国\n约Skpye聊", "联系方式": "Jonesrmichaela@gmail.com", "性别": "女", "肤色": "浅黑", "学历": "本科", "是否可转聘": "新办", "更新日期": 1661817600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[233/670] 导入: R22241 - Ongeziwe Dodo"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22241", "姓名": "Ongeziwe Dodo", "中介": "Ray", "国籍": "南非", "专业": "心理学", "目前所在地": "境外·南非", "上岗时间": "Feb.2023", "跟进记录": "约Skype聊", "联系方式": "ongeziweaadodo@gmail.com", "性别": "女", "肤色": "黑", "学历": "本科", "是否可转聘": "新办", "更新日期": 1661817600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[234/670] 导入: R22242 - MOJABENG CLAIRE MABATHOANA"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22242", "姓名": "MOJABENG CLAIRE MABATHOANA", "中介": "Ray", "国籍": "南非", "专业": "环境科学", "资格证": "TEFL", "教学经验": "1年", "目前所在地": "境外·南非", "上岗时间": "Nov.2022", "意向城市": "深圳、杭州、武汉", "意向职位": "幼儿园小学ESL", "薪资期望": "15税前+3K住宿", "联系方式": "mc.mabathoana@gmail.com", "性别": "女", "肤色": "浅黑", "学历": "本科", "是否可转聘": "新办", "更新日期": 1661817600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[235/670] 导入: R22243 - PHADIMA OBED THOBEJANE"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22243", "姓名": "PHADIMA OBED THOBEJANE", "中介": "Ray", "国籍": "南非", "专业": "数学与统计", "教学经验": "5年", "目前所在地": "境外·南非", "上岗时间": "Feb.2023", "意向职位": "数学", "性别": "男", "肤色": "黑", "学历": "本科", "是否可转聘": "新办", "更新日期": 1661904000000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[236/670] 导入: R22244 - Clinton Mthembu"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22244", "姓名": "Clinton Mthembu", "中介": "Ray", "国籍": "南非", "专业": "会计", "资格证": "TEFL", "教学经验": "无", "目前所在地": "境外·南非", "上岗时间": "Feb.2023", "意向城市": "北京、上海", "意向职位": "幼儿园小学ESL", "薪资期望": "14K+住宿补贴", "联系方式": "lclintonmthokozisi7@gmail.com\nive:clintonmthokozisi7", "性别": "男", "肤色": "黑", "学历": "本科", "是否可转聘": "新办", "更新日期": 1661904000000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[237/670] 导入: R22245 - Thomas Jong"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22245", "姓名": "Thomas Jong", "中介": "优才社郭", "国籍": "英国", "专业": "生物学", "资格证": "TEFL", "教学经验": "3年", "目前所在地": "境外·德国", "上岗时间": "Nov.2022", "意向城市": "不限", "意向职位": "幼儿园小学初中英语生物", "薪资期望": "20-27K", "跟进记录": "已签其他", "性别": "男", "肤色": "白", "学历": "硕士", "是否可转聘": "新办", "更新日期": 1661904000000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[238/670] 导入: R22246 - Mark McGil"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22246", "姓名": "Mark McGil", "中介": "优才社郭", "国籍": "美国", "专业": "教育学，本科化学", "资格证": "化学教学资格证", "教学经验": "10年以上", "目前所在地": "境外·美国", "上岗时间": "Nov.2022", "意向城市": "不限", "意向职位": "初高中数学科学化学", "薪资期望": "26K", "跟进记录": "SIE已发合同", "性别": "男", "肤色": "白", "学历": "硕士", "是否可转聘": "新办", "更新日期": 1661904000000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[239/670] 导入: R22247 - Nangamso Bandezi"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22247", "姓名": "Nangamso Bandezi", "中介": "Ray", "国籍": "南非", "专业": "教育学-经济与数学", "资格证": "教学资格证", "教学经验": "5年", "目前所在地": "台湾", "上岗时间": "Oct.2022", "意向城市": "不限", "意向职位": "小学、初中", "薪资期望": "22税后+住宿", "性别": "女", "肤色": "黑", "学历": "本科", "是否可转聘": "新办", "更新日期": 1661904000000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[240/670] 导入: R22248 - Kenny Ko"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22248", "姓名": "Kenny Ko", "中介": "Ray", "国籍": "美国", "资格证": "TEFL", "目前所在地": "深圳", "上岗时间": "Sep.2022", "性别": "男", "肤色": "黄", "学历": "本科", "是否可转聘": "新办", "更新日期": 1661904000000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[241/670] 导入: R22249 - Grantham Watts"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22249", "姓名": "Grantham Watts", "中介": "Ray", "国籍": "美国", "意向城市": "不限", "意向职位": "高中", "薪资期望": "40K左右或小城市不坐班20K", "性别": "男", "肤色": "白", "更新日期": 1662076800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[242/670] 导入: R22250 - Robyn Michaela George"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22250", "姓名": "Robyn Michaela George", "中介": "Alessandra", "国籍": "南非", "专业": "管理学", "资格证": "TEFL", "教学经验": "4年", "目前所在地": "广州", "上岗时间": "Sep.2022", "意向职位": "幼儿园", "薪资期望": "26000", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1662076800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[243/670] 导入: R22251 - Ola Fraser"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22251", "姓名": "Ola Fraser", "中介": "Ray", "国籍": "英国", "专业": "金融与会计", "资格证": "TEFL", "教学经验": "4年", "目前所在地": "境外·英国", "上岗时间": "Feb.2023", "意向城市": "深圳", "意向职位": "初中", "薪资期望": "12K以上+住宿", "性别": "女", "肤色": "黑", "学历": "本科", "是否可转聘": "新办", "更新日期": 1662336000000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[244/670] 导入: R22252 - Shane Fraser"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22252", "姓名": "Shane Fraser", "中介": "Ray", "国籍": "英国", "专业": "国际关系与语言", "资格证": "TEFL", "教学经验": "2年", "目前所在地": "境外·英国", "上岗时间": "Feb.2023", "意向城市": "深圳", "意向职位": "初中、高中", "薪资期望": "12K以上+住宿", "性别": "男", "肤色": "黑", "学历": "本科", "是否可转聘": "新办", "更新日期": 1662336000000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[245/670] 导入: R22253 - Edrick"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22253", "姓名": "Edrick", "中介": "EF-Paul", "国籍": "美国", "专业": "商业管理", "资格证": "无", "教学经验": "2年", "目前所在地": "香港", "上岗时间": "Oct.2022", "意向城市": "深圳", "意向职位": "幼儿园小学ESL", "薪资期望": "18左右", "性别": "男", "肤色": "黄", "学历": "本科", "是否可转聘": "新办", "更新日期": 1662595200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[246/670] 导入: R22254 - Thando Patrick Mdingi"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22254", "姓名": "Thando Patrick Mdingi", "中介": "Ray", "国籍": "南非", "专业": "商务英语", "资格证": "CELTA", "教学经验": "8年", "目前所在地": "境外·沙特", "上岗时间": "Feb.2023", "意向城市": "深圳、广州、上海", "意向职位": "初中、高中、大学", "薪资期望": "20K税后+住宿", "跟进记录": "他老婆Jabu一起来", "性别": "男", "肤色": "黑", "学历": "硕士", "是否可转聘": "新办", "更新日期": 1663027200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[247/670] 导入: R22255 - Ervinas Sventickis"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22255", "姓名": "Ervinas Sventickis", "中介": "Alessandra", "国籍": "立陶宛", "专业": "英语、西语", "资格证": "TEFL", "教学经验": "4年", "目前所在地": "深圳", "上岗时间": "Sep.2022", "签证类型": "工作签证", "意向城市": "不限", "意向职位": "幼儿园小学ESL", "薪资期望": "15税前+3K住宿", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1663027200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[248/670] 导入: R22256 - Shivani  Chetty"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22256", "姓名": "Shivani  Chetty", "中介": "Ray", "国籍": "南非", "专业": "心理学", "资格证": "TEFL", "教学经验": "6年", "目前所在地": "境外·韩国", "上岗时间": "Feb.2023", "意向城市": "深圳、广州、上海", "意向职位": "幼儿园", "薪资期望": "28+税后", "跟进记录": "269号姐姐", "性别": "女", "肤色": "浅黑", "学历": "本科", "是否可转聘": "新办", "更新日期": 1663113600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[249/670] 导入: R22257 - Johannes Venter"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22257", "姓名": "Johannes Venter", "中介": "Ray", "国籍": "南非", "专业": "TESOL", "资格证": "TEFL", "教学经验": "10年", "目前所在地": "境外·泰国", "上岗时间": "ASAP", "意向城市": "不限", "意向职位": "小学、初中、高中", "薪资期望": "20K+住宿", "性别": "男", "肤色": "白", "学历": "本科", "是否可转聘": "新办", "更新日期": 1663113600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[250/670] 导入: R22258 - Chuck Wu"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22258", "姓名": "Chuck Wu", "中介": "Ray", "国籍": "加拿大", "专业": "教育学", "资格证": "数学教学资格证", "教学经验": "14年", "目前所在地": "深圳", "上岗时间": "ASAP", "签证类型": "家属签证", "意向城市": "深圳、广州、东莞", "意向职位": "小学、初中、高中", "薪资期望": "28+住宿 可谈", "性别": "男", "肤色": "黄", "学历": "硕士", "是否可转聘": "新办", "更新日期": 1663113600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[251/670] 导入: R22259 - Edric T. Ha"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22259", "姓名": "Edric T. Ha", "中介": "中介Alex", "国籍": "美国", "专业": "数学教育", "资格证": "教师资格证", "教学经验": "10年+", "目前所在地": "南京", "上岗时间": "ASAP", "签证类型": "工作签证", "意向城市": "深圳、广州、上海", "意向职位": "代数、几何、微积分", "薪资期望": "30+住宿 可谈", "性别": "男", "肤色": "黄", "学历": "博士", "是否可转聘": "可转", "更新日期": 1663286400000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[252/670] 导入: R22260 - Stephen Wharton"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22260", "姓名": "Stephen Wharton", "中介": "Ray", "国籍": "英国", "专业": "表演艺术", "资格证": "TEFL/EYTS", "教学经验": "3年", "目前所在地": "境外·英国", "上岗时间": "Nov.2022", "意向城市": "深圳", "意向职位": "幼儿园", "薪资期望": "25-30K", "性别": "男", "肤色": "白", "学历": "本科", "是否可转聘": "新办", "更新日期": 1663286400000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[253/670] 导入: R22261 - Clarie Nellis"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22261", "姓名": "Clarie Nellis", "中介": "Ray", "国籍": "英国", "专业": "国际关系/本科地理", "资格证": "PGCE+QTS", "教学经验": "4年", "目前所在地": "境外·英国", "上岗时间": "Feb.2023", "意向城市": "深圳", "意向职位": "地理、人文、英语", "薪资期望": "25-30K，小孩上一年级", "性别": "女", "肤色": "白", "学历": "硕士", "是否可转聘": "新办", "更新日期": 1663286400000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[254/670] 导入: R22262 - Cameron Cross"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22262", "姓名": "Cameron Cross", "中介": "Ray", "国籍": "澳大利亚", "专业": "设计", "资格证": "TEFL", "教学经验": "7年", "目前所在地": "境外·澳大利亚", "上岗时间": "Feb.2023", "意向城市": "南方城市", "意向职位": "ESL、艺术", "薪资期望": "27税后+住宿+假期全薪", "性别": "男", "肤色": "白", "学历": "本科", "是否可转聘": "新办", "更新日期": 1663718400000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[255/670] 导入: R22263 - Bashir Moulvi"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22263", "姓名": "Bashir Moulvi", "中介": "Ray", "国籍": "南非", "专业": "商业", "资格证": "TEFL", "教学经验": "无", "目前所在地": "境外·南非", "上岗时间": "Nov.2022", "意向城市": "深圳", "意向职位": "幼、小、初、高", "性别": "男", "肤色": "白", "学历": "本科", "是否可转聘": "新办", "更新日期": 1663718400000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[256/670] 导入: R22264 - Victor Maneilly"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22264", "姓名": "Victor Maneilly", "中介": "Ray", "国籍": "美国", "专业": "教育学", "资格证": "教师资格证", "教学经验": "20年", "目前所在地": "境外·美国", "上岗时间": "Feb.2023", "意向城市": "不限", "意向职位": "小、初、高", "联系方式": "微信", "性别": "男", "肤色": "白", "学历": "硕士", "是否可转聘": "新办", "更新日期": 1663718400000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[257/670] 导入: R22265 - Daniel Joseph Stone"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22265", "姓名": "Daniel Joseph Stone", "中介": "Zaidi", "国籍": "美国", "专业": "教育学", "资格证": "TEFL", "教学经验": "5年", "目前所在地": "境外·菲律宾", "上岗时间": "Nov.2022", "意向城市": "不限", "意向职位": "幼儿园、培训中心", "薪资期望": "23K", "性别": "男", "肤色": "白", "学历": "本科", "是否可转聘": "新办", "更新日期": 1663804800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[258/670] 导入: R22266 - Jabulile Mpambane"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22266", "姓名": "Jabulile Mpambane", "中介": "Ray", "国籍": "南非", "专业": "公共管理", "资格证": "TEFL", "教学经验": "5年", "目前所在地": "境外·沙特", "上岗时间": "Feb.2023", "意向城市": "深圳、广州、上海", "意向职位": "初中、高中、大学", "薪资期望": "20K税后+住宿", "跟进记录": "他老公Tando一起来,", "联系方式": "微信", "性别": "南非", "肤色": "黑", "学历": "硕士", "是否可转聘": "新办", "更新日期": 1663804800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[259/670] 导入: R22267 - Sarah Franey"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22267", "姓名": "Sarah Franey", "中介": "Ray", "国籍": "英国", "专业": "电脑游戏设计", "资格证": "PGCE+QTS 艺术、设计", "教学经验": "6年", "目前所在地": "境外·英国", "上岗时间": "Oct.2022", "签证类型": "工作签证", "意向城市": "不限", "意向职位": "初中、高中、大学-艺术、设计、ESL", "薪资期望": "30-35K", "性别": "女", "肤色": "白", "学历": "本科", "是否可转聘": "新办", "更新日期": 1663804800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[260/670] 导入: R22268 - Nathan Myers"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22268", "姓名": "Nathan Myers", "中介": "Ray", "国籍": "英国", "专业": "表演", "资格证": "IB证书, 教育学证书", "教学经验": "7年", "目前所在地": "境外·英国", "上岗时间": "Oct.2022", "签证类型": "工作签证", "意向城市": "不限", "意向职位": "小初高-戏剧、英语", "薪资期望": "30-35K", "性别": "男", "肤色": "白", "学历": "本科", "是否可转聘": "新办", "更新日期": 1663891200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[261/670] 导入: R22269 - Ashlin Chetty"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22269", "姓名": "Ashlin Chetty", "中介": "Ray", "国籍": "南非", "专业": "会计", "资格证": "TEFL", "教学经验": "4年", "目前所在地": "境外·韩国", "上岗时间": "Feb.2023", "意向城市": "深圳、广州、上海", "意向职位": "幼儿园", "薪资期望": "28+税后", "跟进记录": "256号妹妹", "性别": "女", "肤色": "浅黑", "学历": "本科", "是否可转聘": "新办", "更新日期": 1663891200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[262/670] 导入: R22270 - ZARIN CHOWDHURY"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22270", "姓名": "ZARIN CHOWDHURY", "中介": "Ray", "国籍": "加拿大", "专业": "教育学，本科英语", "教学经验": "5年", "目前所在地": "境外·泰国", "跟进记录": "约skype还没约上", "性别": "女", "学历": "硕士", "是否可转聘": "新办", "更新日期": 1663891200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[263/670] 导入: R22271 - Dmytro Mylokostov(Dima)"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22271", "姓名": "Dmytro Mylokostov(Dima)", "中介": "Ray", "国籍": "乌克兰", "专业": "翻译与英语教育", "资格证": "TESOL", "教学经验": "11年", "目前所在地": "杭州", "上岗时间": "Nov.2022", "签证类型": "工作签证", "意向城市": "浙江", "意向职位": "幼、小、初", "薪资期望": "25-30K", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1664064000000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[264/670] 导入: R22272 - Dan Baird"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22272", "姓名": "Dan Baird", "中介": "Ray", "国籍": "加拿大", "跟进记录": "金生幼儿园的", "性别": "男", "肤色": "白", "更新日期": 1664064000000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[265/670] 导入: R22273 - Bongiwe Pakkies"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22273", "姓名": "Bongiwe Pakkies", "中介": "Ray", "国籍": "南非", "专业": "社会科学", "资格证": "PGCE", "性别": "女", "肤色": "黑", "学历": "硕士", "更新日期": 1664064000000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[266/670] 导入: R22274 - Ruan Van Staalduinen"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22274", "姓名": "Ruan Van Staalduinen", "中介": "Ray", "国籍": "南非", "专业": "心理学，经济与商业教育学在读", "资格证": "TESOL", "教学经验": "4年", "目前所在地": "境外·南非", "上岗时间": "Feb.2023", "意向城市": "不限", "意向职位": "初高中--文学、辩论、地理、历史、英语", "性别": "男", "肤色": "白", "学历": "本科", "是否可转聘": "新办", "更新日期": 1664064000000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[267/670] 导入: R22275 - Magda Bell"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22275", "姓名": "Magda Bell", "中介": "Ray", "国籍": "南非", "专业": "高等教育", "目前所在地": "境外·南非", "上岗时间": "Feb.2023", "意向城市": "不限", "意向职位": "幼儿园、小学", "性别": "女", "肤色": "白", "学历": "本科", "是否可转聘": "新办", "更新日期": 1664064000000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[268/670] 导入: R22276 - Nomvuzo Khanyile"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22276", "姓名": "Nomvuzo Khanyile", "中介": "Ray", "国籍": "南非", "专业": "心理学", "资格证": "PGCE", "教学经验": "1年", "目前所在地": "境外·南非", "上岗时间": "Feb.2023", "意向城市": "不限", "意向职位": "幼儿园、小学", "性别": "女", "肤色": "黑", "学历": "本科", "是否可转聘": "新办", "更新日期": 1664064000000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[269/670] 导入: R22277 - Christina Van Der Watt"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22277", "姓名": "Christina Van Der Watt", "中介": "Ray", "国籍": "南非", "专业": "发展研究", "资格证": "PGCE", "教学经验": "3年", "目前所在地": "境外·南非", "上岗时间": "Feb.2023", "意向城市": "不限", "性别": "女", "肤色": "白", "学历": "本科", "是否可转聘": "新办", "更新日期": 1664064000000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[270/670] 导入: R22278 - Luleka Ngoboza"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22278", "姓名": "Luleka Ngoboza", "中介": "Ray", "国籍": "南非", "专业": "人口研究", "资格证": "PGCE", "教学经验": "7年", "目前所在地": "境外·南非", "上岗时间": "Feb.2023", "意向城市": "不限", "性别": "女", "肤色": "黑", "学历": "本科", "是否可转聘": "新办", "更新日期": 1664064000000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[271/670] 导入: R22279 - Gerald Gary"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22279", "姓名": "Gerald Gary", "中介": "Ray", "国籍": "美国", "专业": "商业", "资格证": "TEFL", "教学经验": "5年", "目前所在地": "境外·沙特", "上岗时间": "Feb.2023", "意向城市": "不限", "意向职位": "高中、大学", "联系方式": "graygerald98@gmail.com", "性别": "男", "肤色": "黑", "学历": "硕士", "是否可转聘": "新办", "更新日期": 1664064000000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[272/670] 导入: R22280 - Euleen Patricia Henry"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22280", "姓名": "Euleen Patricia Henry", "中介": "Ray", "国籍": "南非", "专业": "心理学", "教学经验": "5年", "目前所在地": "境外·南非", "上岗时间": "Feb.2023", "意向城市": "不限", "性别": "女", "肤色": "黑", "学历": "本科", "是否可转聘": "新办", "更新日期": 1664064000000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[273/670] 导入: R22281 - Malcolm Wesley Wrest"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22281", "姓名": "Malcolm Wesley Wrest", "中介": "Ray", "国籍": "澳大利亚", "专业": "应用语言学", "资格证": "TESOL", "教学经验": "14年", "目前所在地": "境外·澳大利亚", "上岗时间": "Nov.2022", "意向城市": "不限", "意向职位": "小、初", "性别": "男", "肤色": "白", "学历": "硕士", "是否可转聘": "新办", "更新日期": 1664064000000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[274/670] 导入: R22282 - Garth Muller"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22282", "姓名": "Garth Muller", "中介": "Ray", "国籍": "南非", "资格证": "TEFL", "教学经验": "14年", "目前所在地": "境外·南非", "上岗时间": "Nov.2022", "意向城市": "不限", "意向职位": "初高中", "性别": "男", "肤色": "白", "学历": "本科", "是否可转聘": "新办", "更新日期": 1664064000000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[275/670] 导入: R22283 - Sinethemba Tamy Vetshilo"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22283", "姓名": "Sinethemba Tamy Vetshilo", "中介": "Ray", "国籍": "南非", "专业": "小学教育", "资格证": "无", "教学经验": "11年", "目前所在地": "境外·南非", "上岗时间": "Feb.2023", "意向城市": "不限", "意向职位": "小学", "性别": "男", "肤色": "黑", "学历": "本科", "是否可转聘": "新办", "更新日期": 1664064000000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[276/670] 导入: R22284 - Kamel Habachi"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22284", "姓名": "Kamel Habachi", "中介": "Ray", "国籍": "澳大利亚", "性别": "男", "肤色": "白", "更新日期": 1664150400000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[277/670] 导入: R22285 - Arman Tommy Gharechaie"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22285", "姓名": "Arman Tommy Gharechaie", "中介": "Ray", "国籍": "瑞典", "专业": "教育学", "资格证": "TKT", "教学经验": "4年", "目前所在地": "上海", "上岗时间": "ASAP", "意向城市": "上海", "意向职位": "小、初、高", "性别": "男", "肤色": "白", "学历": "硕士", "是否可转聘": "可转", "更新日期": 1664150400000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[278/670] 导入: R22286 - Ben Brown"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22286", "姓名": "Ben Brown", "中介": "Ray", "国籍": "英国", "性别": "男", "肤色": "白", "更新日期": 1664150400000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[279/670] 导入: R22287 - ALEKSANDAR KITANOVIC"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22287", "姓名": "ALEKSANDAR KITANOVIC", "中介": "Ray", "国籍": "塞尔维亚", "意向职位": "经济", "性别": "男", "肤色": "白", "更新日期": 1664150400000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[280/670] 导入: R22288 - Ilona Baghdasarian"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22288", "姓名": "Ilona Baghdasarian", "中介": "Ray", "国籍": "美国", "专业": "犯罪学", "资格证": "TEFL", "教学经验": "2年", "目前所在地": "境外·台湾", "上岗时间": "Feb.2023", "意向城市": "深圳", "意向职位": "小学", "性别": "女", "肤色": "白", "学历": "本科", "是否可转聘": "新办", "更新日期": 1664150400000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[281/670] 导入: R22289 - Naprasha Balram"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22289", "姓名": "Naprasha Balram", "中介": "Ray", "国籍": "南非", "专业": "生物科学", "资格证": "PGCE，教师资格证", "教学经验": "8年", "目前所在地": "境外·南非", "上岗时间": "Feb.2023", "意向城市": "深圳", "意向职位": "初高中英语文学/生物/数学/自然科学", "性别": "女", "肤色": "白", "学历": "本科", "是否可转聘": "新办", "更新日期": 1664150400000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[282/670] 导入: R22290 - Kyle C Loganathan"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22290", "姓名": "Kyle C Loganathan", "中介": "Ray", "国籍": "南非", "专业": "运动科学", "资格证": "TEFL", "教学经验": "无", "目前所在地": "境外·南非", "上岗时间": "Feb.2023", "意向城市": "深圳", "意向职位": "小学", "性别": "男", "肤色": "黑", "学历": "本科", "是否可转聘": "新办", "更新日期": 1664150400000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[283/670] 导入: R22291 - Kari SAKARI S. NICHOLS"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22291", "姓名": "Kari SAKARI S. NICHOLS", "中介": "Ruby", "国籍": "美国", "目前所在地": "深圳", "上岗时间": "ASAP", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "幼儿园、小学", "性别": "女", "肤色": "黑", "学历": "本科", "是否可转聘": "可转", "更新日期": 1664150400000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[284/670] 导入: R22292 - Osama Qureshi"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22292", "姓名": "Osama Qureshi", "中介": "Ray", "国籍": "加拿大", "专业": "经济学", "资格证": "TEFL", "教学经验": "1年", "目前所在地": "境外·加拿大", "上岗时间": "Feb.2023", "意向城市": "深圳", "意向职位": "小、初、高", "性别": "男", "肤色": "白", "学历": "本科", "是否可转聘": "新办", "更新日期": 1664150400000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[285/670] 导入: R22293 - Lizette Botha"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22293", "姓名": "Lizette Botha", "中介": "Ray", "国籍": "南非", "专业": "商业管理", "资格证": "TEFL", "教学经验": "2年", "目前所在地": "境外·南非", "上岗时间": "Feb.2023", "意向城市": "深圳", "意向职位": "小、初、高", "性别": "女", "肤色": "白", "学历": "本科", "是否可转聘": "新办", "更新日期": 1664150400000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[286/670] 导入: R22294 - Shaun Africa"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22294", "姓名": "Shaun Africa", "中介": "Ray", "国籍": "南非", "专业": "心理、英语", "资格证": "PGCE", "教学经验": "20年", "目前所在地": "境外·南非", "上岗时间": "Feb.2023", "意向城市": "深圳", "意向职位": "小、初、高", "跟进记录": "熟悉UK课程,IGCSE", "联系方式": "Skype Id: chantie001", "性别": "男", "肤色": "棕", "学历": "本科", "是否可转聘": "新办", "更新日期": 1664150400000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[287/670] 导入: R22295 - Philip Higgs"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22295", "姓名": "Philip Higgs", "中介": "Ray", "国籍": "英国", "资格证": "TEFL", "目前所在地": "深圳", "上岗时间": "ASAP", "意向城市": "深圳", "性别": "男", "肤色": "白", "是否可转聘": "可转", "更新日期": 1664409600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[288/670] 导入: R22296 - Steve Hennes"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22296", "姓名": "Steve Hennes", "中介": "Ray", "国籍": "英国", "资格证": "TEFL", "目前所在地": "深圳", "上岗时间": "ASAP", "意向城市": "深圳", "性别": "男", "肤色": "白", "是否可转聘": "可转", "更新日期": 1664409600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[289/670] 导入: R22297 - Carline Victorin"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22297", "姓名": "Carline Victorin", "中介": "Ray", "国籍": "美国", "专业": "犯罪学", "资格证": "TEFL", "教学经验": "4年", "目前所在地": "深圳", "上岗时间": "ASAP", "意向城市": "深圳", "联系方式": "weixin TokyoChina", "性别": "女", "肤色": "黑", "学历": "本科", "更新日期": 1664409600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[290/670] 导入: R22298 - Lindo Mchunu"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22298", "姓名": "Lindo Mchunu", "中介": "Ray", "国籍": "南非", "专业": "地理与环境学", "资格证": "PGCE", "教学经验": "4年", "目前所在地": "境外·南非", "上岗时间": "Feb.2023", "意向城市": "深圳", "联系方式": "weixin", "性别": "男", "肤色": "白", "学历": "本科", "是否可转聘": "新办", "更新日期": 1664496000000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[291/670] 导入: R22299 - Maria Margo"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22299", "姓名": "Maria Margo", "中介": "海丽达林老师", "国籍": "俄罗斯", "专业": "英语教育", "教学经验": "10年", "目前所在地": "深圳", "上岗时间": "ASAP", "意向城市": "深圳", "意向职位": "幼儿园", "性别": "女", "肤色": "白", "学历": "硕士", "是否可转聘": "可转", "年龄": 33.0, "更新日期": 1665532800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[292/670] 导入: R22300 - Lana"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22300", "姓名": "Lana", "中介": "海丽达林老师", "国籍": "加拿大", "专业": "国际关系", "资格证": "TEFL", "教学经验": "5年", "目前所在地": "惠州", "上岗时间": "ASAP", "意向城市": "惠州", "性别": "女", "肤色": "白", "学历": "硕士", "更新日期": 1665532800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[293/670] 导入: R22301 - ALAAELDIN 阿拉丁"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22301", "姓名": "ALAAELDIN 阿拉丁", "中介": "Ray", "国籍": "埃及", "专业": "本科物理", "目前所在地": "深圳", "上岗时间": "Feb.2023", "性别": "男", "肤色": "浅黑", "学历": "硕士", "是否可转聘": "可转", "年龄": 52.0, "更新日期": 1665532800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[294/670] 导入: R22302 - Rupert Watson"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22302", "姓名": "Rupert Watson", "中介": "Ray", "国籍": "美国", "专业": "社会学", "资格证": "TEFL", "教学经验": "6年", "目前所在地": "深圳", "上岗时间": "ASAP", "签证类型": "停留签证", "意向城市": "深圳", "性别": "男", "肤色": "黑", "学历": "本科", "更新日期": 1665532800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[295/670] 导入: R22303 - Phoenix Robinson"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22303", "姓名": "Phoenix Robinson", "中介": "Ray", "国籍": "巴哈马", "专业": "电子信息与通信工程", "目前所在地": "北京", "意向城市": "深圳", "意向职位": "STEM老师", "性别": "女", "学历": "本科", "更新日期": 1665532800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[296/670] 导入: R22305 - Donald   Pelfrey"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22305", "姓名": "Donald   Pelfrey", "中介": "Ray", "国籍": "美国", "专业": "教育学-社会科学", "资格证": "教师资格证", "教学经验": "10.年", "目前所在地": "深圳", "上岗时间": "Sep.2023", "签证类型": "家庭签证", "意向城市": "深圳", "意向职位": "社会科学、人文、地理、英语", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[297/670] 导入: R22306 - Cristina Ponce"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22306", "姓名": "Cristina Ponce", "中介": "Ray", "国籍": "厄瓜多尔", "性别": "女", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[298/670] 导入: R22307 - Jon Stacy"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22307", "姓名": "Jon Stacy", "中介": "Ray", "国籍": "英国", "性别": "男", "肤色": "白", "学历": "博士"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[299/670] 导入: R22308 - JONATHAN DALLAS"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22308", "姓名": "JONATHAN DALLAS", "中介": "Ray", "国籍": "美国", "专业": "工商管理", "资格证": "教师资格证", "教学经验": "10年以上", "目前所在地": "境外·泰国", "意向城市": "深圳", "意向职位": "高中优先", "性别": "男", "肤色": "黑", "学历": "硕士", "更新日期": 1666483200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[300/670] 导入: R22309 - Imani Brown"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22309", "姓名": "Imani Brown", "中介": "Ray（Nina)", "国籍": "美国", "专业": "教育学", "资格证": "教师资格证", "教学经验": "5年", "目前所在地": "境外·美国", "上岗时间": "Feb.2023", "意向城市": "深圳", "意向职位": "全科", "性别": "女", "学历": "硕士", "更新日期": 1666483200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[301/670] 导入: R22310 - Milos Taskovic"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22310", "姓名": "Milos Taskovic", "中介": "Ray", "国籍": "塞尔维亚", "性别": "男", "肤色": "白"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[302/670] 导入: R22311 - Yolan Naidoo"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22311", "姓名": "Yolan Naidoo", "中介": "Ray", "国籍": "南非", "专业": "教育学", "资格证": "教师资格证", "性别": "男", "肤色": "黑"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[303/670] 导入: R22312 - Christo De Koker"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22312", "姓名": "Christo De Koker", "中介": "Ray", "国籍": "南非", "专业": "本科教育学", "性别": "男", "肤色": "浅黑", "学历": "硕士"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[304/670] 导入: R22313 - Simon Kinney"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22313", "姓名": "Simon Kinney", "中介": "Ray", "国籍": "英国", "性别": "男", "肤色": "白"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[305/670] 导入: R22314 - Kamina Hall"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22314", "姓名": "Kamina Hall", "中介": "Ray", "国籍": "美国", "专业": "教育学", "资格证": "CELTA", "教学经验": "5年", "上岗时间": "NOV.2022", "意向职位": "初高中", "性别": "女", "肤色": "黑", "学历": "硕士"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[306/670] 导入: R22315 - Ayesha Patel"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22315", "姓名": "Ayesha Patel", "中介": "Ray", "国籍": "英国", "资格证": "TEFL", "性别": "女", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[307/670] 导入: R22316 - Hannah Quinn"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22316", "姓名": "Hannah Quinn", "中介": "Ray", "国籍": "爱尔兰", "专业": "数学", "资格证": "TKT", "教学经验": "5年", "性别": "女", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[308/670] 导入: R22317 - Liam Moir"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22317", "姓名": "Liam Moir", "中介": "Ray", "国籍": "英国", "专业": "应用语言学与TESOL", "资格证": "CELTA", "性别": "男", "肤色": "白", "学历": "硕士"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[309/670] 导入: R22318 - Zahir A Mcneil"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22318", "姓名": "Zahir A Mcneil", "中介": "Ray", "国籍": "美国", "专业": "教育学-数学", "教学经验": "3年", "联系方式": "zahir.mcneil@gmail.com", "性别": "男", "肤色": "黑", "学历": "硕士"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[310/670] 导入: R22319 - Dorrian Applegreen"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22319", "姓名": "Dorrian Applegreen", "中介": "Ray", "国籍": "南非", "专业": "地理、化学", "资格证": "TEFL", "教学经验": "3年", "联系方式": "微信： orian_007", "性别": "女", "肤色": "浅黑", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[311/670] 导入: R22320 - Carl Willetts"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22320", "姓名": "Carl Willetts", "中介": "Ray", "国籍": "英国", "专业": "历史", "资格证": "CELTA", "教学经验": "10年", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[312/670] 导入: R22321 - Yildiz Onay"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22321", "姓名": "Yildiz Onay", "中介": "Ray", "国籍": "英国", "资格证": "TEFL", "教学经验": "5年", "性别": "女", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[313/670] 导入: R22322 - Odwa Manciya"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22322", "姓名": "Odwa Manciya", "中介": "Ray", "国籍": "南非", "资格证": "PGCE", "性别": "女", "肤色": "黑"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[314/670] 导入: R22323 - Ann Corhn"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22323", "姓名": "Ann Corhn", "中介": "Ray", "国籍": "美国", "专业": "creative writing", "资格证": "TEFL", "教学经验": "1年", "性别": "女", "学历": "硕士"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[315/670] 导入: R22324 - Ramona Jahangirian"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22324", "姓名": "Ramona Jahangirian", "中介": "Ray", "国籍": "澳大利亚", "教学经验": "12年", "联系方式": "ramonajahan@hotmail.com", "性别": "女", "肤色": "白", "学历": "硕士"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[316/670] 导入: R22325 - Sarah Mahlangu"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22325", "姓名": "Sarah Mahlangu", "中介": "Ray", "国籍": "南非", "专业": "教育学", "教学经验": "9年", "意向职位": "数学、英语", "性别": "女", "肤色": "浅黑", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[317/670] 导入: R22326 - Sherelle Stols"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22326", "姓名": "Sherelle Stols", "中介": "Ray", "国籍": "南非", "资格证": "TEFL", "教学经验": "0", "性别": "女", "肤色": "浅黑", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[318/670] 导入: R22327 - Jozef Fourie"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22327", "姓名": "Jozef Fourie", "中介": "Ray", "国籍": "南非", "资格证": "PGCE", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[319/670] 导入: R22328 - Malik Battles"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22328", "姓名": "Malik Battles", "中介": "Ray", "国籍": "美国", "教学经验": "7年", "性别": "男", "肤色": "黑", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[320/670] 导入: R22329 - Christina Schloss"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22329", "姓名": "Christina Schloss", "中介": "Ray", "国籍": "美国", "目前所在地": "境外·韩国", "性别": "女", "肤色": "黑"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[321/670] 导入: R22330 - Michael Mansell"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22330", "姓名": "Michael Mansell", "中介": "Ray", "国籍": "美国", "专业": "物理", "意向职位": "科学、物理、数学", "联系方式": "157 3610 2274", "性别": "男", "肤色": "白", "学历": "博士"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[322/670] 导入: R22331 - Tumelo Gracious Ratlhogo"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22331", "姓名": "Tumelo Gracious Ratlhogo", "中介": "Ray", "国籍": "南非", "专业": "教育学", "教学经验": "4年", "性别": "女", "肤色": "黑", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[323/670] 导入: R22332 - Serusha Naidoo"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22332", "姓名": "Serusha Naidoo", "中介": "Ray", "国籍": "南非", "专业": "教育学", "性别": "女", "肤色": "黑", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[324/670] 导入: R22333 - Valeriu Lazar"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22333", "姓名": "Valeriu Lazar", "中介": "Ray", "国籍": "加拿大", "专业": "英语文学", "教学经验": "10年", "目前所在地": "境外·泰国", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[325/670] 导入: R22334 - Ahmed Karim"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22334", "姓名": "Ahmed Karim", "中介": "Ray", "国籍": "加拿大", "专业": "英语文学", "资格证": "CELTA", "联系方式": "ankarim94@gmail.com", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[326/670] 导入: R22335 - Christian Sonekan"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22335", "姓名": "Christian Sonekan", "中介": "Ray", "国籍": "加拿大", "专业": "本科物理", "资格证": "TESOL", "教学经验": "10年", "意向职位": "科学、物理、化学", "性别": "男", "肤色": "黑", "学历": "硕士"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[327/670] 导入: R22336 - Raphael Gaines Brown"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22336", "姓名": "Raphael Gaines Brown", "中介": "Ray", "国籍": "美国", "专业": "公共管理", "资格证": "TESOL", "性别": "男", "肤色": "白", "学历": "硕士"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[328/670] 导入: R22337 - Colin Hall"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22337", "姓名": "Colin Hall", "中介": "Ray", "国籍": "英国", "专业": "教育管理", "意向职位": "科学", "性别": "男", "肤色": "黑", "学历": "硕士"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[329/670] 导入: R22338 - Ilona Baghdasarian"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22338", "姓名": "Ilona Baghdasarian", "中介": "Ray", "国籍": "美国", "目前所在地": "境外·台湾", "性别": "女", "肤色": "白"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[330/670] 导入: R22339 - Christopher Summers"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22339", "姓名": "Christopher Summers", "中介": "Ray", "国籍": "美国", "教学经验": "5年", "性别": "男", "肤色": "白", "学历": "硕士"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[331/670] 导入: R22340 - Charles Duntoye"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22340", "姓名": "Charles Duntoye", "中介": "Ray", "国籍": "英国", "联系方式": "charlesduntoye3@gmail.com", "性别": "男", "肤色": "白"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[332/670] 导入: R22341 - Lee Hughes"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22341", "姓名": "Lee Hughes", "中介": "Ray", "国籍": "英国", "目前所在地": "境外·柬埔寨", "性别": "男", "肤色": "白"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[333/670] 导入: R22342 - Gregory M. Francis"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22342", "姓名": "Gregory M. Francis", "中介": "Ray", "国籍": "美国", "专业": "经济学", "教学经验": "7年", "目前所在地": "武汉", "意向城市": "武汉及周边", "意向职位": "经济、英语", "薪资期望": "25K 全包", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[334/670] 导入: R22344 - James Webster"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22344", "姓名": "James Webster", "中介": "Sherry", "国籍": "英国", "目前所在地": "深圳龙岗", "性别": "男", "肤色": "白"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[335/670] 导入: R22347 - Jermaine Allen"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22347", "姓名": "Jermaine Allen", "中介": "Patrick-Prinz", "国籍": "英国", "专业": "体育，商业与市场管理", "教学经验": "2年", "目前所在地": "深圳", "意向城市": "深圳", "意向职位": "体育", "性别": "男", "肤色": "黑", "学历": "硕士"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[336/670] 导入: R22348 - APS"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22348", "姓名": "APS", "中介": "Himo", "国籍": "英国", "专业": "物理", "教学经验": "7年", "目前所在地": "苏州", "意向城市": "深圳", "意向职位": "英语、物理", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[337/670] 导入: R22349 - Chelsea White"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22349", "姓名": "Chelsea White", "中介": "Ray", "国籍": "英国", "性别": "女", "肤色": "黑"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[338/670] 导入: R22350 - Marsha"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22350", "姓名": "Marsha", "中介": "Ray", "国籍": "美国", "性别": "女", "肤色": "白"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[339/670] 导入: R22351 - Joy"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22351", "姓名": "Joy", "中介": "Ray", "国籍": "美国", "专业": "早教专业", "意向城市": "深圳", "意向职位": "幼儿园", "跟进记录": "去了BeniBaby", "性别": "女", "肤色": "黑"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[340/670] 导入: R22352 - Iain McLeod"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22352", "姓名": "Iain McLeod", "中介": "Ray", "国籍": "加拿大", "性别": "男", "肤色": "白"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[341/670] 导入: R22353 - Craig Carney"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22353", "姓名": "Craig Carney", "中介": "Ray", "国籍": "爱尔兰", "意向城市": "深圳", "意向职位": "小学", "性别": "男", "肤色": "白"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[342/670] 导入: R22354 - Peter C. Perez"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22354", "姓名": "Peter C. Perez", "中介": "Ray", "国籍": "美国", "专业": "哲学与社会学", "教学经验": "8年", "目前所在地": "深圳", "意向城市": "深圳", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[343/670] 导入: R22355 - Safara"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22355", "姓名": "Safara", "中介": "Ray", "国籍": "印度", "目前所在地": "佛山", "意向城市": "深圳", "意向职位": "幼儿园", "性别": "女", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[344/670] 导入: R22356 - Lucas Magyarics"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22356", "姓名": "Lucas Magyarics", "中介": "Ray", "国籍": "美国", "专业": "通信", "资格证": "TEFL", "教学经验": "13年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "不限", "意向职位": "大学", "跟进记录": "在EF，想换工作，要2个月离职", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1677628800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[345/670] 导入: R22357 - Shehan"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22357", "姓名": "Shehan", "中介": "Lilying", "国籍": "英国", "性别": "男", "肤色": "白"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[346/670] 导入: R22358 - Sarah"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22358", "姓名": "Sarah", "中介": "Ray", "国籍": "伊朗", "目前所在地": "深圳", "签证类型": "家属签证", "意向城市": "深圳", "意向职位": "幼儿园", "性别": "女", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[347/670] 导入: R22359 - Mohammed Kamal jemmouj"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22359", "姓名": "Mohammed Kamal jemmouj", "中介": "Ray", "国籍": "法国", "目前所在地": "广州", "签证类型": "自己工签", "意向城市": "深圳", "意向职位": "幼儿园", "性别": "男", "肤色": "白"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[348/670] 导入: R22360 - Bernard Louis Van Hooidonk"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22360", "姓名": "Bernard Louis Van Hooidonk", "中介": "Ray", "教学经验": "15年", "目前所在地": "深圳", "上岗时间": "Dec.2022", "意向城市": "深圳", "意向职位": "初高中ESL", "性别": "男", "肤色": "棕"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[349/670] 导入: R22361 - Shana"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22361", "姓名": "Shana", "中介": "Ray", "国籍": "南非", "意向城市": "深圳", "意向职位": "幼儿园", "性别": "女", "肤色": "黑", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[350/670] 导入: R22362 - Yassine Nouiri"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22362", "姓名": "Yassine Nouiri", "中介": "Ray", "目前所在地": "东莞", "签证类型": "工作签证", "工签职位": "英语教师", "性别": "男", "肤色": "棕", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[351/670] 导入: R22363 - Giovanni Alexander"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22363", "姓名": "Giovanni Alexander", "中介": "优才社郭", "国籍": "美国", "教学经验": "8年", "签证类型": "工作签证", "工签职位": "英语教师", "意向城市": "深圳", "意向职位": "科学、物理、化学", "性别": "男", "肤色": "白", "学历": "硕士"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[352/670] 导入: R22364 - Basma"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22364", "姓名": "Basma", "中介": "Harper", "国籍": "摩洛哥", "目前所在地": "郑州", "意向城市": "郑州", "性别": "女", "肤色": "白"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[353/670] 导入: R22365 - Michaen Chan"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22365", "姓名": "Michaen Chan", "中介": "EF-Paul", "国籍": "美国", "目前所在地": "深圳", "签证类型": "工作签证", "工签职位": "英语教师", "意向城市": "深圳", "跟进记录": "签了加州儿童会", "性别": "男", "肤色": "黄"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[354/670] 导入: R22366 - Meghan White"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22366", "姓名": "Meghan White", "中介": "Ray", "国籍": "南非", "目前所在地": "深圳", "上岗时间": "ASAP", "签证类型": "停留签证", "工签职位": "英语教师", "意向城市": "深圳", "意向职位": "幼儿园", "薪资期望": "28K税后", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1676851200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[355/670] 导入: R22367 - David Pay"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22367", "姓名": "David Pay", "中介": "Ray", "国籍": "英国", "专业": "现代历史与政治", "资格证": "iPGCE", "教学经验": "4.5", "目前所在地": "深圳", "上岗时间": "Aug.2023", "签证类型": "工作签证", "工签职位": "英语教师", "意向城市": "深圳", "意向职位": "初高中ESL", "薪资期望": "28K以上", "跟进记录": "推给了梅沙", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1676851200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[356/670] 导入: R22368 - Elliot"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22368", "姓名": "Elliot", "中介": "Ray", "国籍": "英国", "资格证": "TEFL", "目前所在地": "深圳", "上岗时间": "Aug.2023", "签证类型": "工作签证", "工签职位": "英语教师", "意向城市": "深圳", "意向职位": "初高中ESL", "跟进记录": "找梅沙，等简历视频", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1676851200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[357/670] 导入: R22369 - Liam Corby"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22369", "姓名": "Liam Corby", "中介": "Ray", "国籍": "英国", "专业": "犯罪学", "资格证": "TEFL", "教学经验": "14年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "签证类型": "工作签证", "工签职位": "英语教师", "意向城市": "深圳", "意向职位": "初高中ESL", "跟进记录": "找梅沙，等简历视频", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1676851200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[358/670] 导入: R22370 - Edrick"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22370", "姓名": "Edrick", "中介": "EF-Paul", "国籍": "美国", "专业": "商业管理", "资格证": "无", "教学经验": "2年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "意向城市": "深圳", "意向职位": "幼儿园小学ESL", "薪资期望": "18左右", "跟进记录": "七月千希合同结束，想找幼儿园或小学", "性别": "男", "肤色": "黄", "学历": "本科", "是否可转聘": "新办", "更新日期": 1662595200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[359/670] 导入: R22371 - Mike"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22371", "姓名": "Mike", "中介": "Ray", "国籍": "瑞士", "意向城市": "福田、南山", "意向职位": "经济学", "薪资期望": "25K", "更新日期": 1676851200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[360/670] 导入: R22372 - Andrea Fourie"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22372", "姓名": "Andrea Fourie", "中介": "Ray", "国籍": "南非", "专业": "会计", "资格证": "TEFL", "教学经验": "4年", "目前所在地": "境外·南非", "上岗时间": "Aug.2023", "意向城市": "厦门、杭州、深圳", "意向职位": "幼儿园小学ESL", "联系方式": "微信", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1676851200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[361/670] 导入: R22184 - Sian Redmond"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22184", "姓名": "Sian Redmond", "中介": "Ray", "国籍": "英国", "专业": "动物园生物学", "资格证": "TEFL", "教学经验": "5年", "目前所在地": "深圳", "上岗时间": "Aug.2022", "签证类型": "工作签证", "意向城市": "罗湖", "意向职位": "英语、科学、homeroom", "薪资期望": "24-30k.", "性别": "女", "肤色": "白", "学历": "博士", "更新日期": 1650412800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[362/670] 导入: R22374 - Daniel Potter"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22374", "姓名": "Daniel Potter", "中介": "Nemo", "国籍": "英国", "专业": "英语文学", "教学经验": "7年", "上岗时间": "Aug.2023", "意向职位": "体育", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1676851200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[363/670] 导入: R22375 - Thomas Ward"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22375", "姓名": "Thomas Ward", "中介": "Sherry", "国籍": "美国", "专业": "历史", "资格证": "TEFL", "教学经验": "9年", "目前所在地": "境外·泰国", "上岗时间": "Aug.2023", "意向职位": "小学homeroom", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1676851200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[364/670] 导入: R22376 - Mia"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22376", "姓名": "Mia", "中介": "Sherry", "国籍": "南非/爱尔兰", "资格证": "TEFL", "教学经验": "4年", "目前所在地": "境外·泰国", "上岗时间": "Aug.2023", "意向职位": "幼儿园小学ESL", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1676851200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[365/670] 导入: R22377 - Mike"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22377", "姓名": "Mike", "中介": "Sherry", "国籍": "南非", "资格证": "TESOL", "教学经验": "17", "目前所在地": "境外·马来西亚", "上岗时间": "Aug.2023", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1676851200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[366/670] 导入: R22378 - Jordan Bourque"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22378", "姓名": "Jordan Bourque", "中介": "Nemo", "国籍": "加拿大", "教学经验": "2年", "目前所在地": "沈阳", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "海南", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1676851200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[367/670] 导入: R22379 - Kelly"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22379", "姓名": "Kelly", "中介": "Sherry", "国籍": "美国", "上岗时间": "Aug.2023", "签证类型": "工作签证", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1676851200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[368/670] 导入: R22380 - Daniel James Paul Taylerson"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22380", "姓名": "Daniel James Paul Taylerson", "中介": "Ray", "国籍": "加拿大", "专业": "教育学", "资格证": "TEFL", "教学经验": "17年", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "深圳", "跟进记录": "目前在培训中心，可离职", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1676851200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[369/670] 导入: R22381 - Marcin Lipski"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22381", "姓名": "Marcin Lipski", "中介": "Nemo", "国籍": "加拿大", "专业": "教育学", "教学经验": "10年以上", "目前所在地": "宁波", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "小学Homeroom、初高中ESL", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1676851200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[370/670] 导入: R22382 - Jake Compton"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22382", "姓名": "Jake Compton", "中介": "Sherry", "国籍": "美国", "专业": "教育学", "资格证": "教师资格证", "教学经验": "11年", "目前所在地": "广州", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向职位": "社会科学", "性别": "男", "肤色": "白", "学历": "硕士", "更新日期": 1676937600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[371/670] 导入: R22383 - Temacia"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22383", "姓名": "Temacia", "中介": "Sherry", "国籍": "美国", "专业": "课程与教学", "资格证": "教师资格证", "教学经验": "13年", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向职位": "物理、科学", "性别": "女", "肤色": "棕", "学历": "硕士", "更新日期": 1676851200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[372/670] 导入: R22384 - Marissa"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22384", "姓名": "Marissa", "中介": "Sherry", "国籍": "美国", "专业": "艺术教育", "资格证": "教师资格证", "教学经验": "5年", "目前所在地": "北京", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向职位": "艺术（美术）", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1676937600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[373/670] 导入: R22385 - Ishta"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22385", "姓名": "Ishta", "中介": "Sherry", "国籍": "南非", "专业": "教育学", "教学经验": "4年", "目前所在地": "武汉", "上岗时间": "Aug.2023", "意向职位": "幼儿园", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1676592000000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[374/670] 导入: R22386 - Christy Phillips"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22386", "姓名": "Christy Phillips", "中介": "Ray", "国籍": "美国", "专业": "商业管理与经济", "资格证": "TEFL", "教学经验": "10年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "签证类型": "家属签证", "意向城市": "深圳南山、福田", "意向职位": "小学英语", "薪资期望": "25K税后", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1677024000000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[375/670] 导入: R22387 - Amadeus Miranda"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22387", "姓名": "Amadeus Miranda", "中介": "Ray", "国籍": "美国", "专业": "文科与传播", "资格证": "TEFL", "教学经验": "6年", "目前所在地": "香港", "上岗时间": "Aug.2023", "意向城市": "深圳", "意向职位": "体育\\艺术", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1677024000000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[376/670] 导入: R22388 - Georg"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22388", "姓名": "Georg", "中介": "Ray", "国籍": "美国", "专业": "物理", "目前所在地": "深圳", "意向城市": "深圳", "意向职位": "物理、数学", "性别": "男", "肤色": "白", "学历": "博士", "更新日期": 1677110400000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[377/670] 导入: R22389 - Sam Le Chiq"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22389", "姓名": "Sam Le Chiq", "中介": "Ray", "国籍": "加拿大", "专业": "音乐", "教学经验": "8年", "目前所在地": "广州", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "深圳、广州", "薪资期望": "35k", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1677110400000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[378/670] 导入: R22390 - Asma"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22390", "姓名": "Asma", "中介": "Ray", "国籍": "香港", "专业": "通讯与媒体研究", "资格证": "TEFL", "教学经验": "4年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "意向城市": "深圳", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1677110400000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[379/670] 导入: R22391 - Dylan Souppes"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22391", "姓名": "Dylan Souppes", "中介": "Ray", "国籍": "英国", "专业": "法律", "资格证": "CELTA", "教学经验": "6年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "意向城市": "深圳", "跟进记录": "在大手机上", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1677110400000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[380/670] 导入: R22392 - Ron Price"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22392", "姓名": "Ron Price", "中介": "Ray", "国籍": "美国", "专业": "教育学", "教学经验": "10年以上", "目前所在地": "深圳", "上岗时间": "Aug.2023", "签证类型": "工作签证", "工签职位": "英语教师", "意向城市": "深圳", "意向职位": "文学、社会科学", "性别": "男", "肤色": "黑", "学历": "博士", "更新日期": 1677110400000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[381/670] 导入: R22119 - Callum Jones"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22119", "姓名": "Callum Jones", "中介": "Ray", "国籍": "英国", "专业": "游戏设计", "资格证": "TEFL", "教学经验": "5年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "视觉设计", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1677110400000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[382/670] 导入: R22343 - David Pay"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22343", "姓名": "David Pay", "中介": "Ray", "国籍": "英国", "专业": "现代历史与政治", "资格证": "IPGCE", "教学经验": "4年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "签证类型": "工作签证", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1677196800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[383/670] 导入: R22304 - John R. Hooven"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22304", "姓名": "John R. Hooven", "中介": "Ray", "国籍": "美国", "专业": "英语与文学", "资格证": "CELTA", "教学经验": "7年", "目前所在地": "深圳", "上岗时间": "Sep.2023", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "全科", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1677196800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[384/670] 导入: R22394 - Johnny Vermeulen"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22394", "姓名": "Johnny Vermeulen", "中介": "Himo", "国籍": "南非", "专业": "教育学-数学科学", "资格证": "教师资格证", "教学经验": "6年", "目前所在地": "台湾", "上岗时间": "Sep.2023", "意向职位": "数学，科学，体育", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1677110400000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[385/670] 导入: R22070 - Alejandra Cetrangolo"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22070", "姓名": "Alejandra Cetrangolo", "中介": "Ray", "国籍": "意大利", "专业": "教育学", "资格证": "教师资格证", "教学经验": "10年", "目前所在地": "深圳", "上岗时间": "Feb. 2022", "签证类型": "工作签证", "工签职位": "舞蹈老师", "意向城市": "深圳", "意向职位": "幼儿园、高中\n艺术老师，ESL", "薪资期望": "28/30K 税前+ 3K", "跟进记录": "节年联系福田艺术学校", "性别": "女", "肤色": "白", "学历": "硕士", "更新日期": 1677196800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[386/670] 导入: R22172 - Luke F. Brumback"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22172", "姓名": "Luke F. Brumback", "中介": "Ray", "国籍": "美国", "专业": "辅修心理", "教学经验": "5年", "目前所在地": "北京", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向职位": "社会学、英语", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1677196800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[387/670] 导入: R22395 - Gareth Scallan"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22395", "姓名": "Gareth Scallan", "中介": "Himo", "国籍": "南非", "专业": "教育学", "资格证": "PGCE", "教学经验": "10年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "ESL", "性别": "男", "肤色": "白", "学历": "硕士", "更新日期": 1677196800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[388/670] 导入: R22396 - Travis Coner"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22396", "姓名": "Travis Coner", "中介": "Himo", "国籍": "美国", "专业": "国际研究", "资格证": "教师资格证", "教学经验": "6年", "目前所在地": "成都", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "深圳，上海，北京、广州", "意向职位": "英语文学、社会科学", "薪资期望": "30K税后", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1677196800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[389/670] 导入: R22397 - Petro Herbst"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22397", "姓名": "Petro Herbst", "中介": "Himo", "国籍": "南非", "专业": "法律", "资格证": "PGCE", "教学经验": "2年", "目前所在地": "境外·阿曼", "上岗时间": "Aug.2023", "意向城市": "深圳", "意向职位": "ESL", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1677196800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[390/670] 导入: R22398 - Elmarie Henning"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22398", "姓名": "Elmarie Henning", "中介": "Himo", "国籍": "南非", "专业": "小学教育学", "教学经验": "8年", "目前所在地": "上海", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "深圳", "薪资期望": "25 -30 k 税后+住宿", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1677196800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[391/670] 导入: R22148 - Dani Shah"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22148", "姓名": "Dani Shah", "中介": "Ray", "国籍": "英国", "专业": "国际商务", "资格证": "TEFL", "教学经验": "4年", "目前所在地": "东莞", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "深圳、东莞", "意向职位": "ESL", "薪资期望": "30+福利", "性别": "男", "肤色": "棕", "学历": "本科", "更新日期": 1649203200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[392/670] 导入: R22399 - Kiran Rehan"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22399", "姓名": "Kiran Rehan", "中介": "Ray", "国籍": "巴基斯坦", "专业": "材料物理与化学\n硕士化学，本科教育学-科学教育、化学", "教学经验": "5年", "目前所在地": "深圳", "上岗时间": "ASAP", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "化学、科学", "性别": "女", "肤色": "棕", "学历": "博士", "更新日期": 1677196800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[393/670] 导入: R22400 - Sain Bus Jamali"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22400", "姓名": "Sain Bus Jamali", "中介": "Ray", "国籍": "巴基斯坦", "专业": "博士-物理，硕士-物理化学，本科-教育学", "教学经验": "9年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "物理、化学、科学、数学", "性别": "男", "肤色": "棕", "学历": "博士", "更新日期": 1677196800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[394/670] 导入: R22401 - David Sjekloca"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22401", "姓名": "David Sjekloca", "中介": "Ray", "国籍": "塞尔维亚", "专业": "运动科学", "资格证": "TEFL", "教学经验": "13年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "体育", "薪资期望": "25-30K", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1677196800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[395/670] 导入: R22402 - Maricar Sjekloca"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22402", "姓名": "Maricar Sjekloca", "中介": "Ray", "国籍": "菲律宾", "专业": "教育学-音乐、艺术、体育", "教学经验": "3年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "签证类型": "家庭签证", "意向城市": "深圳", "意向职位": "ESL,音乐，艺术，体育", "性别": "女", "肤色": "黄", "学历": "本科", "更新日期": 1677196800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[396/670] 导入: R22403 - Tiaan Herselman"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22403", "姓名": "Tiaan Herselman", "中介": "Nemo", "国籍": "南非", "专业": "建筑管理", "资格证": "TEFL", "教学经验": "6年", "目前所在地": "大连", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "小学", "薪资期望": "30k", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1677196800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[397/670] 导入: R22404 - Nicole Breedt"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22404", "姓名": "Nicole Breedt", "中介": "Nemo", "国籍": "南非", "专业": "教育学", "资格证": "TEFL", "教学经验": "10年", "目前所在地": "大连", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "幼儿园", "薪资期望": "30k", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1677196800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[398/670] 导入: R22405 - Oleg Polyanskiy"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22405", "姓名": "Oleg Polyanskiy", "中介": "优才社郭", "国籍": "乌克兰", "专业": "音乐", "教学经验": "9年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "签证类型": "工作签证", "工签职位": "音乐老师", "意向城市": "深圳", "意向职位": "音乐", "薪资期望": "30 k 税后", "性别": "男", "肤色": "白", "学历": "硕士", "更新日期": 1677196800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[399/670] 导入: R22406 - Carmie le Roux"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22406", "姓名": "Carmie le Roux", "中介": "优才社郭", "国籍": "南非", "专业": "教育学", "教学经验": "4年", "目前所在地": "杭州", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "杭州", "意向职位": "幼儿园、小学", "薪资期望": "24K+房补", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1677196800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[400/670] 导入: R22407 - Steven W. Hawbaker"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22407", "姓名": "Steven W. Hawbaker", "中介": "优才社郭", "国籍": "美国", "专业": "生物化学", "教学经验": "10年以上", "目前所在地": "境外·墨西哥", "上岗时间": "Aug.2023", "意向城市": "不限", "意向职位": "生物、化学", "薪资期望": "25K+", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1677196800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[401/670] 导入: R22408 - Jack Evans"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22408", "姓名": "Jack Evans", "中介": "Ray", "国籍": "英国", "专业": "音乐", "资格证": "TEFL", "教学经验": "4年", "目前所在地": "贵阳", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "英语、音乐", "性别": "男", "肤色": "白", "学历": "硕士", "更新日期": 1677369600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[402/670] 导入: R22409 - Ethan Poellot"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22409", "姓名": "Ethan Poellot", "中介": "Lilying", "国籍": "美国", "专业": "历史", "资格证": "TEFL", "教学经验": "1年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "幼儿园、小学", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1677456000000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[403/670] 导入: R22410 - Daniel Braham"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22410", "姓名": "Daniel Braham", "中介": "名聘Lewis", "国籍": "英国", "专业": "工业设计", "资格证": "TEFL", "教学经验": "9年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "小学、初中", "薪资期望": "30K+", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1677456000000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[404/670] 导入: R22411 - Jocelyn P"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22411", "姓名": "Jocelyn P", "中介": "Sherry", "国籍": "南非", "专业": "心理咨询", "资格证": "PGCE", "教学经验": "5年", "目前所在地": "武汉", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "深圳、武汉", "意向职位": "小学、初中", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1677456000000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[405/670] 导入: R22412 - William"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22412", "姓名": "William", "中介": "Sherry", "国籍": "英国", "专业": "生物化学", "资格证": "TEFL", "教学经验": "4年", "目前所在地": "宁波", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "小学、初中", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1677456000000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[406/670] 导入: R22413 - Jonathan Karl Jones"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22413", "姓名": "Jonathan Karl Jones", "中介": "Ray", "国籍": "美国", "专业": "哲学", "资格证": "ELA教师资格证", "教学经验": "5年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "签证类型": "停留签证", "意向城市": "深圳", "意向职位": "幼儿园、小学、初中", "薪资期望": "25-32K", "性别": "男", "肤色": "黑", "学历": "本科", "更新日期": 1677456000000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[407/670] 导入: R22083 - Craig Dudley"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22083", "姓名": "Craig Dudley", "中介": "Ray", "国籍": "英国", "教学经验": "10年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "意向城市": "深圳", "意向职位": "体育", "薪资期望": "25-30K", "性别": "男", "肤色": "白", "更新日期": 1644537600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[408/670] 导入: R22086 - Richard Press"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22086", "姓名": "Richard Press", "中介": "Ray", "国籍": "英国", "专业": "旅游管理", "教学经验": "14年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "初高中ESL", "性别": "男", "肤色": "白", "学历": "硕士", "更新日期": 1644883200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[409/670] 导入: R22414 - Irene Dolan"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22414", "姓名": "Irene Dolan", "中介": "Ray", "国籍": "爱尔兰", "专业": "社会研究", "资格证": "TEFL", "教学经验": "5年", "目前所在地": "北京", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "幼儿园、小学", "薪资期望": "30K税后", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1677542400000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[410/670] 导入: R22415 - Sonia"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22415", "姓名": "Sonia", "中介": "Sherry", "国籍": "俄罗斯", "专业": "教育学，本科教育学（化学）", "教学经验": "7年", "目前所在地": "俄罗斯", "上岗时间": "Aug.2023", "意向城市": "深圳", "意向职位": "化学、科学", "性别": "女", "肤色": "白", "学历": "硕士", "更新日期": 1677542400000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[411/670] 导入: R22416 - Terriel Thomas"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22416", "姓名": "Terriel Thomas", "中介": "Sherry", "国籍": "美国", "专业": "健康、体育与领导学", "资格证": "TEFL", "教学经验": "8年", "目前所在地": "巴西", "上岗时间": "Aug.2023", "意向城市": "不限", "意向职位": "体育", "薪资期望": "25-30K", "性别": "男", "肤色": "黑", "学历": "本科", "更新日期": 1677542400000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[412/670] 导入: R22417 - Fatima"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22417", "姓名": "Fatima", "中介": "中介Jason", "国籍": "英国", "上岗时间": "Aug.2023"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[413/670] 导入: R22418 - Ruan Beukes"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22418", "姓名": "Ruan Beukes", "中介": "Ray", "国籍": "美国", "专业": "教育学，本科英语文学", "教学经验": "6年", "目前所在地": "北京", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "幼儿园、小学", "薪资期望": "30K税后", "跟进记录": "Irene男朋友", "性别": "男", "肤色": "白", "学历": "硕士", "更新日期": 1677801600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[414/670] 导入: R22419 - Edgar Arca"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22419", "姓名": "Edgar Arca", "中介": "Dr. James", "国籍": "加拿大", "专业": "教育学", "上岗时间": "Aug.2023", "性别": "男", "肤色": "棕", "学历": "硕士", "更新日期": 1677801600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[415/670] 导入: R22420 - Keegan"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22420", "姓名": "Keegan", "中介": "Patrick-Prinz", "国籍": "南非", "专业": "英语", "教学经验": "5年", "目前所在地": "常州", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "小学", "薪资期望": "32K税后+房补", "性别": "男", "肤色": "白", "学历": "硕士", "更新日期": 1677801600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[416/670] 导入: R22421 - Nicolene"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22421", "姓名": "Nicolene", "中介": "Patrick-Prinz", "国籍": "南非", "专业": "英语", "教学经验": "4年", "目前所在地": "常州", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "小学", "薪资期望": "32K税后+房补", "性别": "女", "肤色": "白", "学历": "硕士", "更新日期": 1677801600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[417/670] 导入: R22345 - Kathy Lynne Hompstead"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22345", "姓名": "Kathy Lynne Hompstead", "中介": "Ray", "国籍": "英国", "专业": "幼儿研究", "目前所在地": "境外·英国", "上岗时间": "Aug.2023", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1677801600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[418/670] 导入: R22346 - John"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22346", "姓名": "John", "中介": "Ray", "国籍": "英国", "专业": "教育研究（小学）", "目前所在地": "境外·英国", "上岗时间": "Aug.2023", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1677801600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[419/670] 导入: R22422 - Mandeep Banga"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22422", "姓名": "Mandeep Banga", "中介": "Himo", "国籍": "英国", "资格证": "iPGCE", "教学经验": "4年", "目前所在地": "苏州", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "小学", "薪资期望": "30K+住宿", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1677801600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[420/670] 导入: R22423 - Matthew Parsons"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22423", "姓名": "Matthew Parsons", "中介": "Himo", "国籍": "英国", "资格证": "iPGCE", "教学经验": "4年", "目前所在地": "苏州", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "小学", "薪资期望": "30K+住宿", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1677801600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[421/670] 导入: R22424 - Anna"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22424", "姓名": "Anna", "中介": "Himo", "国籍": "南非", "专业": "教育（TESOL与早教）、英语与文学", "教学经验": "5年", "目前所在地": "大连", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "小学", "薪资期望": "25-30K", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1677801600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[422/670] 导入: R22005 - Gareth Evans"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22005", "姓名": "Gareth Evans", "中介": "Ray", "国籍": "英国", "专业": "英语", "资格证": "TKT", "教学经验": "20年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "南山", "意向职位": "幼儿园，小学，雅思，科学", "薪资期望": "30k", "性别": "男", "肤色": "白", "学历": "硕士", "年龄": 52.0, "更新日期": 1677801600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[423/670] 导入: R22425 - Zak Pearson"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22425", "姓名": "Zak Pearson", "中介": "Sherry", "国籍": "美国", "专业": "教育学", "教学经验": "7年", "目前所在地": "香港", "上岗时间": "Aug.2023", "意向职位": "经济", "薪资期望": "30k", "性别": "男", "肤色": "浅黑", "学历": "博士", "更新日期": 1677801600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[424/670] 导入: R22426 - Ivana Obradovic"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22426", "姓名": "Ivana Obradovic", "中介": "优才社郭", "国籍": "塞尔维亚", "专业": "艺术", "教学经验": "5年", "目前所在地": "上海", "上岗时间": "Aug.2023", "签证类型": "家庭签证", "意向城市": "深圳", "意向职位": "艺术", "薪资期望": "30k", "性别": "女", "肤色": "白", "学历": "硕士", "更新日期": 1677974400000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[425/670] 导入: R22427 - George Sadek"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22427", "姓名": "George Sadek", "中介": "Ray", "国籍": "英国", "专业": "数学", "资格证": "TEFL", "教学经验": "2年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "数学", "薪资期望": "25-30K", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1677974400000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[426/670] 导入: R22428 - Aleksandrs Jesikovs"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22428", "姓名": "Aleksandrs Jesikovs", "中介": "Ray", "国籍": "拉脱维亚", "专业": "商业", "教学经验": "5年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "意向城市": "深圳", "意向职位": "经济", "性别": "男", "肤色": "白", "学历": "MBA", "更新日期": 1677974400000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[427/670] 导入: R22429 - Andy Barraclough"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22429", "姓名": "Andy Barraclough", "中介": "Ray", "国籍": "英国", "专业": "英语文学（在读）", "资格证": "美国教师资格证、QTS", "教学经验": "4年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "英语文学", "薪资期望": "30K+住宿", "性别": "男", "肤色": "白", "学历": "硕士", "更新日期": 1677974400000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[428/670] 导入: R22430 - Stevan Nešić"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22430", "姓名": "Stevan Nešić", "国籍": "塞尔维亚", "专业": "教练、体育教育（美国）", "教学经验": "8年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "签证类型": "工作签证", "工签职位": "篮球教练", "意向城市": "深圳", "意向职位": "体育", "薪资期望": "25-30K", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1677974400000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[429/670] 导入: R22431 - Sunica Nel"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22431", "姓名": "Sunica Nel", "中介": "Ray", "国籍": "南非", "专业": "教育学", "资格证": "TEFL", "教学经验": "3年", "目前所在地": "境外·南非", "上岗时间": "Aug.2023", "意向城市": "深圳南山", "意向职位": "幼儿园", "薪资期望": "25k左右", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1678233600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[430/670] 导入: R22432 - Jason Donovan"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22432", "姓名": "Jason Donovan", "中介": "Ray", "国籍": "南非", "专业": "教育学", "资格证": "TEFL", "教学经验": "3年", "目前所在地": "境外·南非", "上岗时间": "Aug.2023", "意向城市": "深圳南山", "意向职位": "幼儿园", "薪资期望": "25k左右", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1678233600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[431/670] 导入: R22433 - Dena Skalin"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22433", "姓名": "Dena Skalin", "中介": "Ray", "国籍": "加拿大", "专业": "艺术", "教学经验": "10年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "意向城市": "深圳", "意向职位": "艺术", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1678233600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[432/670] 导入: R22434 - Ben Leach"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22434", "姓名": "Ben Leach", "中介": "优才社郭", "国籍": "英国", "专业": "音乐", "教学经验": "5年", "目前所在地": "佛山", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "广东省", "意向职位": "音乐", "薪资期望": "30K", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1679443200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[433/670] 导入: R22435 - Carl McDine"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22435", "姓名": "Carl McDine", "中介": "Helen", "国籍": "澳大利亚", "专业": "音乐", "教学经验": "6年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "ESL", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1680048000000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[434/670] 导入: R22436 - Robert McLntyre"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22436", "姓名": "Robert McLntyre", "中介": "优才社郭", "国籍": "加拿大", "专业": "教育学", "资格证": "TESOL", "教学经验": "20年以上", "目前所在地": "北京", "上岗时间": "Aug.2023", "意向职位": "管理、人文社会研究、历史、地理、音乐、艺术", "薪资期望": "400K年薪", "性别": "男", "肤色": "白", "学历": "PhD", "更新日期": 1680048000000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[435/670] 导入: R22437 - Dominique Pierre Trag"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22437", "姓名": "Dominique Pierre Trag", "中介": "Ray", "国籍": "法国", "专业": "物理", "资格证": "数学教学资格证", "教学经验": "20年以上", "目前所在地": "深圳", "上岗时间": "Aug.2023", "意向职位": "物理、数学", "薪资期望": "33-35税后", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1680048000000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[436/670] 导入: R22438 - Ian"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22438", "姓名": "Ian", "中介": "Sherry", "国籍": "罗马尼亚", "专业": "数学", "资格证": "QTS", "教学经验": "5年数学", "目前所在地": "境外", "上岗时间": "Aug.2023", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1680048000000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[437/670] 导入: R22439 - Adam Y. Smith"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22439", "姓名": "Adam Y. Smith", "中介": "Sherry", "国籍": "美国", "专业": "教育领导学，本科数学教育学", "资格证": "教师资格证", "教学经验": "20年以上", "目前所在地": "境外·美国", "上岗时间": "Aug.2023", "意向职位": "数学、管理岗", "性别": "男", "肤色": "白", "学历": "硕士", "更新日期": 1680048000000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[438/670] 导入: R22440 - Amy Heron"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22440", "姓名": "Amy Heron", "中介": "Ray", "上岗时间": "Aug.2023", "性别": "女", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[439/670] 导入: R22441 - SAMY SAMANDU"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22441", "姓名": "SAMY SAMANDU", "中介": "Ray", "国籍": "南非", "专业": "国籍关系", "资格证": "TEFL", "教学经验": "4年", "上岗时间": "Aug.2023", "性别": "女", "肤色": "黑", "学历": "硕士"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[440/670] 导入: R22442 - Robert Lindsay"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22442", "姓名": "Robert Lindsay", "中介": "Ray", "国籍": "新西兰", "专业": "媒体", "资格证": "TEFL", "教学经验": "2年", "目前所在地": "深圳", "意向职位": "小初高", "薪资期望": "28K", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[441/670] 导入: R22443 - JESSICA STANTON"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22443", "姓名": "JESSICA STANTON", "中介": "Ray", "国籍": "美国", "教学经验": "6年", "目前所在地": "境外·美国", "意向职位": "培训中心", "性别": "女", "肤色": "黑", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[442/670] 导入: R22444 - Johannes Stephanus van Rooyen"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22444", "姓名": "Johannes Stephanus van Rooyen", "中介": "Sopia张", "国籍": "南非", "意向职位": "幼儿园", "性别": "男", "肤色": "白"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[443/670] 导入: R22445 - Anna MacDonald"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22445", "姓名": "Anna MacDonald", "中介": "Ray", "国籍": "英国", "目前所在地": "深圳", "意向职位": "幼儿园", "性别": "女", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[444/670] 导入: R22446 - Carlos"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22446", "姓名": "Carlos", "中介": "Sherry", "肤色": "白"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[445/670] 导入: R22447 - David R. Goetz"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22447", "姓名": "David R. Goetz", "中介": "Ray", "国籍": "美国", "教学经验": "12年", "目前所在地": "境外·美国", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[446/670] 导入: R22448 - Danielle Neal"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22448", "姓名": "Danielle Neal", "中介": "Ray", "国籍": "英国", "目前所在地": "深圳", "意向职位": "戏剧", "性别": "女", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[447/670] 导入: R22449 - Ralton  Roman"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22449", "姓名": "Ralton  Roman", "中介": "Ray", "国籍": "南非", "目前所在地": "深圳", "意向职位": "幼儿园、小学", "薪资期望": "20K+", "性别": "男", "肤色": "浅黑", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[448/670] 导入: R22450 - Shawn Macaulay"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22450", "姓名": "Shawn Macaulay", "中介": "优才社郭", "国籍": "南非", "专业": "教育学", "资格证": "QTS", "目前所在地": "深圳", "意向职位": "小学ESL", "薪资期望": "30K", "性别": "男", "肤色": "白", "学历": "硕士"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[449/670] 导入: R22451 - Gabriel Bilbao"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22451", "姓名": "Gabriel Bilbao", "中介": "Ray", "国籍": "美国", "目前所在地": "深圳", "薪资期望": "20-23k", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[450/670] 导入: R22452 - Peter John 康波"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22452", "姓名": "Peter John 康波", "中介": "Ray", "国籍": "美国", "专业": "地理", "教学经验": "10年", "目前所在地": "深圳", "意向职位": "小初高", "薪资期望": "25K", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[451/670] 导入: R22453 - Ahmed Ahmed"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22453", "姓名": "Ahmed Ahmed", "中介": "中介Jack", "国籍": "英国", "专业": "物理", "目前所在地": "深圳", "意向职位": "初高中", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[452/670] 导入: R22454 - MARGIE
SANABRIA"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22454", "姓名": "MARGIE\nSANABRIA", "中介": "Ray", "国籍": "哥伦比亚", "教学经验": "3年", "目前所在地": "南宁哈罗", "意向职位": "小学ESL", "性别": "女", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[453/670] 导入: R22455 - Rosemary"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22455", "姓名": "Rosemary", "中介": "Sherry", "国籍": "英国", "目前所在地": "境外·英国", "意向职位": "小学ESL", "性别": "女", "肤色": "浅黑", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[454/670] 导入: R22456 - Paul McTaggart"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22456", "姓名": "Paul McTaggart", "中介": "Ray", "国籍": "美国", "专业": "Social Science", "资格证": "CELTA", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[455/670] 导入: R22457 - Eric Ling"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22457", "姓名": "Eric Ling", "中介": "Ray", "国籍": "英国华裔", "专业": "PGCE 早教", "资格证": "早教管理学", "教学经验": "10年", "目前所在地": "深圳", "意向城市": "深圳", "意向职位": "30K", "性别": "男", "肤色": "黄", "学历": "硕士"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[456/670] 导入: R22458 - Alex Rodriguez"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22458", "姓名": "Alex Rodriguez", "中介": "Ray", "国籍": "哥伦比亚", "专业": "早教", "资格证": "CELTA", "教学经验": "13年", "目前所在地": "广州", "上岗时间": "Sep.2023", "签证类型": "工作签证", "意向城市": "广州", "意向职位": "幼儿园、小学、体育", "薪资期望": "33-40K+住宿", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[457/670] 导入: R22459 - Ahhah Mogale"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22459", "姓名": "Ahhah Mogale", "中介": "Ray", "国籍": "南非", "专业": "本科", "资格证": "经济", "教学经验": "0", "目前所在地": "北京", "意向城市": "不限", "意向职位": "幼儿园、培训中心", "薪资期望": "12-15K", "性别": "女", "肤色": "黑", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[458/670] 导入: R22460 - Tony Lebedev"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22460", "姓名": "Tony Lebedev", "中介": "Ray", "国籍": "俄罗斯", "专业": "物理与应用数学", "目前所在地": "境外", "意向职位": "数学", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[459/670] 导入: R22461 - Molly"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22461", "姓名": "Molly", "中介": "Ray", "国籍": "菲律宾", "专业": "教育学", "资格证": "TESOL", "目前所在地": "境外", "薪资期望": "15+住宿", "性别": "女", "肤色": "黄", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[460/670] 导入: R22462 - Mesa E. Casiles"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22462", "姓名": "Mesa E. Casiles", "中介": "海丽达林老师", "国籍": "菲律宾", "目前所在地": "境外", "性别": "女", "肤色": "黄", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[461/670] 导入: R22463 - Kate-Maricar Sjekloca"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22463", "姓名": "Kate-Maricar Sjekloca", "中介": "Ray", "国籍": "菲律宾", "专业": "音乐教育", "目前所在地": "深圳", "意向职位": "音乐", "性别": "女", "肤色": "黄", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[462/670] 导入: R22464 - MEraj w"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22464", "姓名": "MEraj w", "中介": "Ray", "国籍": "土耳其", "目前所在地": "南宁", "意向城市": "四川、重庆、广州", "意向职位": "幼儿园", "薪资期望": "18-20", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[463/670] 导入: R22465 - Franco Lozano"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22465", "姓名": "Franco Lozano", "中介": "Ray", "国籍": "哥伦比亚", "专业": "教育学", "资格证": "TEFL", "教学经验": "10年", "目前所在地": "温州", "性别": "男", "肤色": "棕", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[464/670] 导入: R22466 - TERRY S. LEWIS"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22466", "姓名": "TERRY S. LEWIS", "中介": "Byron", "国籍": "英国", "资格证": "教师资格证", "教学经验": "3年", "目前所在地": "深圳", "意向城市": "深圳", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[465/670] 导入: R22467 - Nick Podriadov"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22467", "姓名": "Nick Podriadov", "中介": "Byron", "国籍": "俄罗斯", "专业": "英语文学", "教学经验": "10年", "目前所在地": "深圳", "意向城市": "深圳", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[466/670] 导入: R22468 - Richard Budet"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22468", "姓名": "Richard Budet", "中介": "Ray", "国籍": "德国", "专业": "教育学", "资格证": "QTS,德国教师资格证", "教学经验": "6年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "意向城市": "深圳", "薪资期望": "25-30K", "性别": "男", "肤色": "白", "学历": "硕士"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[467/670] 导入: R22469 - Ross Delaney"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22469", "姓名": "Ross Delaney", "中介": "Ray", "国籍": "爱尔兰", "专业": "化学", "教学经验": "3年", "目前所在地": "深圳南山", "上岗时间": "Aug.2023", "意向城市": "深圳福田、南山", "意向职位": "高中，AP,IGCSE,科学，化学，生物", "薪资期望": "30K税后+住宿", "性别": "男", "肤色": "白", "学历": "硕士", "年龄": 30.0, "更新日期": 1642723200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[468/670] 导入: R22470 - JAKE TYLER"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22470", "姓名": "JAKE TYLER", "中介": "Ray", "国籍": "英国", "资格证": "TEFL", "教学经验": "3年", "目前所在地": "深圳", "意向城市": "深圳", "意向职位": "小学，初中", "薪资期望": "23-25K", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[469/670] 导入: R22471 - Dana"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22471", "姓名": "Dana", "中介": "Sherry", "国籍": "塞尔维亚", "专业": "音乐", "教学经验": "5年", "目前所在地": "上海", "上岗时间": "Aug.2023", "意向城市": "上海/深圳", "意向职位": "音乐", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1649116800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[470/670] 导入: R22472 - Kyle Sciacca"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22472", "姓名": "Kyle Sciacca", "中介": "Ray", "国籍": "美国", "资格证": "TEFL", "教学经验": "14年", "目前所在地": "境外·泰国", "上岗时间": "Aug.2023", "意向职位": "中小学、幼儿园", "薪资期望": "25K+", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[471/670] 导入: R22473 - Kwesi Idun"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22473", "姓名": "Kwesi Idun", "中介": "Indeed", "国籍": "英国", "专业": "通讯专业", "性别": "男", "学历": "西北大学硕士，本科戏剧专业"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[472/670] 导入: R22474 - Zara Khan"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22474", "姓名": "Zara Khan", "中介": "Ray", "国籍": "巴基斯坦", "专业": "Arts", "资格证": "TEFL", "教学经验": "5年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "签证类型": "中国绿卡", "意向城市": "深圳", "意向职位": "幼儿园", "薪资期望": "25k", "性别": "女", "肤色": "白"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[473/670] 导入: R22475 - Terry Edwards"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22475", "姓名": "Terry Edwards", "中介": "Ray", "国籍": "牙买加", "目前所在地": "宁波", "上岗时间": "Aug.2023", "性别": "女", "肤色": "黑"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[474/670] 导入: R22476 - Natasha Murtaza"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22476", "姓名": "Natasha Murtaza", "中介": "Ray", "国籍": "巴基斯坦", "专业": "经济学", "资格证": "IB证书", "目前所在地": "深圳", "上岗时间": "Aug.2023", "意向职位": "小学", "性别": "女", "肤色": "白", "学历": "博士"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[475/670] 导入: R22477 - Alexander Chikuvanyanga"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22477", "姓名": "Alexander Chikuvanyanga", "中介": "Ray", "国籍": "津巴布韦", "专业": "教育学", "资格证": "TESOL", "教学经验": "6年", "目前所在地": "安徽宿州", "上岗时间": "Aug.2023", "性别": "男", "肤色": "黑", "学历": "英国拿的硕士"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[476/670] 导入: R22478 - Alex Rodriguez"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22478", "姓名": "Alex Rodriguez", "中介": "Ray", "国籍": "哥伦比亚", "专业": "早教专业", "资格证": "CELTA", "教学经验": "13年", "目前所在地": "广州", "上岗时间": "Aug.2023", "意向城市": "广州", "意向职位": "幼儿园", "薪资期望": "33+住宿", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[477/670] 导入: R22479 - Marco Jara"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22479", "姓名": "Marco Jara", "中介": "Ray", "国籍": "哥斯达黎加/美国", "专业": "英语", "教学经验": "12年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "签证类型": "中国绿卡", "意向城市": "广州", "意向职位": "幼儿园", "薪资期望": "28-35K", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[478/670] 导入: R22480 - Maryam Reda"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22480", "姓名": "Maryam Reda", "中介": "Ray", "国籍": "摩洛哥", "专业": "英语语言与文学", "资格证": "TESOL", "教学经验": "4年", "目前所在地": "境外·摩洛哥", "上岗时间": "Aug.2023", "薪资期望": "13-14K", "性别": "女", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[479/670] 导入: R22481 - Andre Hooke"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22481", "姓名": "Andre Hooke", "中介": "Ray", "国籍": "牙买加", "资格证": "BC CERTIFIED/IPGCE", "教学经验": "3年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "广东", "性别": "男", "肤色": "黑"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[480/670] 导入: R22482 - Lala Khoza"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22482", "姓名": "Lala Khoza", "中介": "Ray", "国籍": "南非", "教学经验": "8年", "目前所在地": "中东", "上岗时间": "Aug.2023", "薪资期望": "25+住宿", "性别": "女", "肤色": "黑", "学历": "硕士"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[481/670] 导入: R22483 - Hamza SIDKI"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22483", "姓名": "Hamza SIDKI", "中介": "Ray", "国籍": "摩洛哥", "专业": "经济", "教学经验": "2年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "签证类型": "商务签", "意向城市": "深圳", "意向职位": "经济", "薪资期望": "18-20K", "性别": "男", "肤色": "浅黑", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[482/670] 导入: R22484 - Darko Pajovic,"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22484", "姓名": "Darko Pajovic,", "中介": "Ray", "国籍": "塞尔维亚", "目前所在地": "深圳", "上岗时间": "Aug.2023", "意向城市": "深圳", "意向职位": "足球、体育", "性别": "男", "肤色": "白"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[483/670] 导入: R22485 - Paul-Enrique"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22485", "姓名": "Paul-Enrique", "中介": "Ray", "国籍": "法国", "资格证": "PGCE", "教学经验": "10年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "意向城市": "深圳", "意向职位": "经济", "性别": "男", "肤色": "白", "学历": "3个硕士"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[484/670] 导入: R22486 - Joshua R. Mullis"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22486", "姓名": "Joshua R. Mullis", "中介": "日和夏Monica", "国籍": "美国", "专业": "教育学", "资格证": "TESOL", "教学经验": "20年", "目前所在地": "境外·柬埔寨", "上岗时间": "Aug.2023", "意向城市": "深圳", "意向职位": "幼儿园、管理岗", "性别": "男", "肤色": "白", "学历": "硕士"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[485/670] 导入: R22487 - Sal Macias"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22487", "姓名": "Sal Macias", "中介": "EF-Paul", "国籍": "美国", "专业": "儿童发展", "目前所在地": "境外·美国", "上岗时间": "Aug.2023", "意向城市": "深圳", "意向职位": "幼儿园", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[486/670] 导入: R22488 - Stankovic Stefan"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22488", "姓名": "Stankovic Stefan", "中介": "Ray", "国籍": "塞尔维亚", "专业": "体育教练", "资格证": "篮球教练", "教学经验": "10年", "目前所在地": "境外·日本", "上岗时间": "Aug.2023", "意向城市": "深圳", "薪资期望": "25k", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[487/670] 导入: R22489 - Zayne Ehlers"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22489", "姓名": "Zayne Ehlers", "中介": "Ray", "国籍": "南非", "专业": "早教专业", "资格证": "TEFL", "教学经验": "4年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "意向城市": "深圳", "意向职位": "幼儿园", "薪资期望": "28-32k", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[488/670] 导入: R22490 - GEORGIOS BESAS"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22490", "姓名": "GEORGIOS BESAS", "中介": "Ray", "国籍": "英国", "专业": "英语语言学本科", "资格证": "QTS", "教学经验": "20年", "目前所在地": "境外·英国", "上岗时间": "Aug.2023", "性别": "男", "肤色": "白", "学历": "教育学硕士"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[489/670] 导入: R22491 - Stacy  Otsile"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22491", "姓名": "Stacy  Otsile", "中介": "Ray", "国籍": "南非", "专业": "教育学", "教学经验": "3年", "上岗时间": "Aug.2023", "意向城市": "上海、深圳", "意向职位": "幼儿园", "薪资期望": "27K税后", "性别": "男", "肤色": "浅黑", "学历": "硕士"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[490/670] 导入: R22492 - Ron Price"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22492", "姓名": "Ron Price", "中介": "Ray", "国籍": "美国", "专业": "教育学", "目前所在地": "深圳", "上岗时间": "Aug.2023", "签证类型": "工作签证", "工签职位": "英语教师", "意向城市": "深圳", "意向职位": "大学、管理岗", "跟进记录": "已拒SAIS合同", "性别": "男", "肤色": "黑", "学历": "博士", "更新日期": 1642723200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[491/670] 导入: R22493 - Cesar Daniel Altamirano Azurduy"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22493", "姓名": "Cesar Daniel Altamirano Azurduy", "中介": "Ray", "国籍": "玻利维亚", "专业": "体育教育与运动", "教学经验": "11年", "目前所在地": "上海", "上岗时间": "Aug.2023", "签证类型": "工作签证", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[492/670] 导入: R22494 - Adam Hinkley"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22494", "姓名": "Adam Hinkley", "中介": "Ray", "国籍": "美国", "专业": "教育学", "资格证": "教师资格证", "教学经验": "10年", "目前所在地": "境外·美国", "上岗时间": "Aug.2023", "性别": "男", "肤色": "白", "学历": "硕士"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[493/670] 导入: R22495 - Callum Azam"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22495", "姓名": "Callum Azam", "中介": "中介Jack吴", "国籍": "英国", "专业": "通信", "资格证": "TESOL", "教学经验": "6年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "小学/初中/高中/大学\n英语/戏剧/交流", "薪资期望": "23K", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[494/670] 导入: R22496 - Jerry Abraham"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22496", "姓名": "Jerry Abraham", "中介": "Ray", "国籍": "美国", "专业": "物理", "资格证": "TEFL", "教学经验": "3.5年", "目前所在地": "盐城", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "不限", "意向职位": "幼儿园、培训中心", "薪资期望": "29K+住宿", "性别": "男", "肤色": "棕", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[495/670] 导入: R22497 - Carmen Mineo"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22497", "姓名": "Carmen Mineo", "中介": "广州中介Candy", "国籍": "南非", "专业": "旅游管理", "资格证": "IB PYP", "教学经验": "3.5年", "目前所在地": "广州", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "广东省", "意向职位": "幼儿园", "薪资期望": "25-28K 加补贴", "性别": "女", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[496/670] 导入: R22498 - Dylan Abrahamse"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22498", "姓名": "Dylan Abrahamse", "中介": "广州中介Candy", "国籍": "南非", "专业": "教育学", "资格证": "IB PYP", "教学经验": "3.5年", "目前所在地": "广州", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "广东省", "意向职位": "幼儿园", "薪资期望": "25-28K 加补贴", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[497/670] 导入: R22499 - Rumaiysa Haq"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22499", "姓名": "Rumaiysa Haq", "中介": "日和夏Monica", "国籍": "南非", "专业": "会计与金融", "教学经验": "3年", "目前所在地": "境外·南非", "上岗时间": "Aug.2023", "意向职位": "幼儿园、小学", "性别": "女", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[498/670] 导入: R22500 - Zamran Bhabha"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22500", "姓名": "Zamran Bhabha", "中介": "日和夏Monica", "国籍": "南非", "资格证": "TEFL", "教学经验": "2年", "目前所在地": "境外·韩国", "上岗时间": "Aug.2023", "意向职位": "幼儿园、小学", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[499/670] 导入: R22501 - Joshua Rawlinson"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22501", "姓名": "Joshua Rawlinson", "中介": "Ray", "国籍": "英国", "资格证": "TEFL", "教学经验": "5年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "薪资期望": "22-25k", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[500/670] 导入: R22502 - Donald   Pelfrey"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22502", "姓名": "Donald   Pelfrey", "中介": "Ray", "国籍": "美国", "专业": "教育学-社会科学", "资格证": "教师资格证", "教学经验": "10.年", "目前所在地": "深圳", "上岗时间": "Sep.2023", "签证类型": "家庭签证", "意向城市": "深圳", "意向职位": "社会科学、人文、地理、英语", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[501/670] 导入: R22503 - Dan"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22503", "姓名": "Dan", "中介": "Ray", "国籍": "英国", "上岗时间": "Aug.2023", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[502/670] 导入: R22504 - Michelle Chang"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22504", "姓名": "Michelle Chang", "中介": "Ray", "国籍": "美国", "专业": "音乐表演与教育", "资格证": "K-12音乐， IB PYP", "教学经验": "15年", "目前所在地": "北京", "上岗时间": "Aug.2023", "签证类型": "台胞证", "意向城市": "深圳、北京、天津", "薪资期望": "28K+", "性别": "女", "肤色": "华裔", "学历": "硕士"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[503/670] 导入: R22505 - K A"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22505", "姓名": "K A", "中介": "中介June盈", "国籍": "亚美尼亚", "专业": "表演艺术", "资格证": "TEFL", "教学经验": "8年", "目前所在地": "广州", "上岗时间": "Aug.2023", "签证类型": "工作签证", "工签职位": "戏剧教师", "意向城市": "广州或者附近城市，上海", "意向职位": "小学", "薪资期望": "25-26k", "性别": "女", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[504/670] 导入: R22506 - James Ziegler"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22506", "姓名": "James Ziegler", "中介": "Ray", "国籍": "美国", "专业": "人类学", "资格证": "TEFL", "教学经验": "12年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "深圳", "意向职位": "大学或高中", "薪资期望": "30000", "性别": "男", "肤色": "白", "学历": "硕士"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[505/670] 导入: R22507 - Sian Redmond"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22507", "姓名": "Sian Redmond", "中介": "Ray", "国籍": "英国", "专业": "动物园生物学", "资格证": "TEFL", "教学经验": "5年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "罗湖", "意向职位": "英语、科学、homeroom", "薪资期望": "24-30k.", "性别": "女", "肤色": "白", "学历": "博士", "更新日期": 1650412800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[506/670] 导入: R22508 - Marjorie Namen"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22508", "姓名": "Marjorie Namen", "中介": "Borja", "国籍": "美国", "专业": "通讯", "资格证": "TEFL", "教学经验": "10年", "目前所在地": "广州", "上岗时间": "Aug.2023", "签证类型": "工作签证", "意向城市": "广州", "意向职位": "幼儿园", "薪资期望": "28K+", "性别": "女", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[507/670] 导入: R22509 - Diana Protizane"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22509", "姓名": "Diana Protizane", "中介": "Ray-indeed", "国籍": "拉脱维亚", "专业": "英语与写作", "资格证": "TEFL", "教学经验": "0", "目前所在地": "境外·英国", "上岗时间": "Sep.2023", "意向职位": "幼儿园，小学，初中", "性别": "女", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[508/670] 导入: R22510 - Aysegul Butterworth"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22510", "姓名": "Aysegul Butterworth", "中介": "优才社郭", "国籍": "土耳其", "专业": "艺术", "资格证": "TEFL", "目前所在地": "深圳", "性别": "女", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[509/670] 导入: R22511 - Dan Carpenter"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22511", "姓名": "Dan Carpenter", "中介": "Ray-indeed", "国籍": "英国", "专业": "数学与应用", "目前所在地": "境外·英国", "上岗时间": "Nov.2023", "意向职位": "小学，初中", "薪资期望": "15-18K", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[510/670] 导入: R22512 - Charles Duntoye"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22512", "姓名": "Charles Duntoye", "中介": "Ray", "国籍": "英国", "专业": "英语语言学本科", "资格证": "TEFL", "教学经验": "8年", "目前所在地": "境外·英国", "上岗时间": "Sep.2023", "意向职位": "小学，初中", "薪资期望": "18K+", "性别": "男", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[511/670] 导入: R22513 - Hajra"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22513", "姓名": "Hajra", "中介": "Ray", "国籍": "南非", "专业": "教育学", "教学经验": "10年", "目前所在地": "境外·南非", "上岗时间": "Sep.2023", "意向城市": "上海及周边", "意向职位": "幼儿园", "薪资期望": "18K+3K", "性别": "女", "肤色": "浅黑", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[512/670] 导入: R22514 - Humaira"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22514", "姓名": "Humaira", "中介": "Ray", "国籍": "南非", "专业": "教育学", "教学经验": "5年", "目前所在地": "境外·南非", "上岗时间": "Sep.2023", "意向城市": "上海及周边", "意向职位": "幼儿园", "薪资期望": "18K+3K", "性别": "女", "肤色": "浅黑", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[513/670] 导入: R22515 - Quintin Matlou"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22515", "姓名": "Quintin Matlou", "中介": "Ray", "国籍": "南非", "专业": "媒体研究", "资格证": "CELTA", "教学经验": "3年", "目前所在地": "境外·南非", "薪资期望": "14K+住宿补贴", "性别": "男", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[514/670] 导入: R22516 - Donald Mokoana"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22516", "姓名": "Donald Mokoana", "中介": "Ray", "国籍": "南非", "专业": "教育学", "教学经验": "3年", "目前所在地": "深圳", "上岗时间": "Sep.2023", "意向城市": "深圳、上海", "意向职位": "幼儿园", "薪资期望": "26k税后", "性别": "男", "肤色": "黑", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[515/670] 导入: R22517 - Maksimilijan (Max)"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22517", "姓名": "Maksimilijan (Max)", "中介": "Ray", "国籍": "塞尔维亚", "专业": "英语", "教学经验": "4年", "目前所在地": "深圳", "上岗时间": "Sep.2023", "意向职位": "科学", "薪资期望": "30K", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[516/670] 导入: R22518 - Tshira"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22518", "姓名": "Tshira", "中介": "Ray", "国籍": "美国", "专业": "教育学", "资格证": "TEFL", "教学经验": "4年", "目前所在地": "南京", "上岗时间": "Sep.2023", "意向城市": "不限", "意向职位": "不限", "薪资期望": "26K", "性别": "男", "肤色": "黑", "学历": "硕士"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[517/670] 导入: R22519 - David Pastorcich"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22519", "姓名": "David Pastorcich", "中介": "Ray", "国籍": "美国", "教学经验": "8年", "目前所在地": "深圳", "上岗时间": "Sep.2023", "薪资期望": "25-30K", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[518/670] 导入: R22520 - Jean-Claude"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22520", "姓名": "Jean-Claude", "中介": "Ray", "国籍": "南非", "专业": "教育学硕士在读", "资格证": "TEFL", "教学经验": "6年", "目前所在地": "深圳", "上岗时间": "Sep.2023", "意向职位": "幼儿园，小学", "薪资期望": "25-30K", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[519/670] 导入: R22521 - Etienne Marais"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22521", "姓名": "Etienne Marais", "中介": "Ray", "国籍": "南非", "专业": "教育学", "资格证": "TEFL", "教学经验": "16年", "目前所在地": "境外·南非", "上岗时间": "Sep.2023", "意向城市": "深圳，浙江，香港", "薪资期望": "30K", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[520/670] 导入: R22522 - Mark Daniel Solomon"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22522", "姓名": "Mark Daniel Solomon", "中介": "Ray", "国籍": "美国", "专业": "数学专业", "教学经验": "3年", "目前所在地": "境外·美国", "上岗时间": "Sep.2023", "意向城市": "深圳，广州，", "意向职位": "高中数学", "薪资期望": "年薪30万+住宿", "性别": "男", "肤色": "华裔", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[521/670] 导入: R22523 - WEIQIAN
SUN
(VICKY)"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22523", "姓名": "WEIQIAN\nSUN\n(VICKY)", "中介": "Ray", "国籍": "中国", "专业": "经济学", "教学经验": "2年", "上岗时间": "Sep.2023", "意向城市": "深圳，广州，", "意向职位": "高中经济学", "性别": "女", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[522/670] 导入: R22524 - Brogan Somer Mathieson"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22524", "姓名": "Brogan Somer Mathieson", "中介": "李克难", "国籍": "英国", "专业": "中文，日文", "资格证": "TEFL，戏剧", "目前所在地": "境外·英国", "上岗时间": "Sep.2023", "意向城市": "深圳", "意向职位": "幼儿园，戏剧", "性别": "女", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[523/670] 导入: R22525 - KESHIN NAICKER"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22525", "姓名": "KESHIN NAICKER", "中介": "Dr. James", "国籍": "南非", "资格证": "PGCE", "教学经验": "9年", "目前所在地": "天津", "上岗时间": "Sep.2023", "意向职位": "艺术", "性别": "男", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[524/670] 导入: R22526 - Christopher Summers"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22526", "姓名": "Christopher Summers", "中介": "Ray-Serious", "国籍": "美国", "资格证": "TESOL", "教学经验": "6年", "目前所在地": "境外·美国", "上岗时间": "Sep.2023", "意向城市": "深圳", "薪资期望": "27K", "性别": "男", "肤色": "白", "学历": "硕士"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[525/670] 导入: R22527 - Philip Pemberton"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22527", "姓名": "Philip Pemberton", "中介": "Byron", "国籍": "英国", "专业": "计算机科学与人工智能", "资格证": "TEFL", "教学经验": "3年", "目前所在地": "深圳", "上岗时间": "Sep.2023", "意向城市": "深圳", "意向职位": "小学", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[526/670] 导入: R22528 - （Lana）Nastasja Lana Mitic"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22528", "姓名": "（Lana）Nastasja Lana Mitic", "中介": "Ray", "国籍": "塞尔维亚", "专业": "本科生物，硕士环境科学", "资格证": "TEFL", "教学经验": "2.5年", "目前所在地": "深圳", "上岗时间": "Sep.2023", "意向城市": "福田、南山", "意向职位": "小学或高中", "性别": "女", "肤色": "白", "学历": "硕士"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[527/670] 导入: R22529 - Mendy"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22529", "姓名": "Mendy", "中介": "Ray", "国籍": "南非", "资格证": "TEFL", "教学经验": "3年", "目前所在地": "广州", "上岗时间": "ASAP", "意向城市": "深圳", "意向职位": "幼儿园", "性别": "女", "肤色": "黑", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[528/670] 导入: R22530 - Ama"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22530", "姓名": "Ama", "中介": "Ray", "国籍": "加纳", "资格证": "TESOL", "教学经验": "4年", "目前所在地": "深圳", "上岗时间": "Sep.2023", "意向城市": "深圳", "意向职位": "幼儿园", "性别": "女", "肤色": "黑", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[529/670] 导入: R22531 - Dane Michael Borraz Andres"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22531", "姓名": "Dane Michael Borraz Andres", "中介": "Ray", "国籍": "爱尔兰", "专业": "教育学", "教学经验": "8年", "目前所在地": "深圳", "上岗时间": "Sep.2023", "意向城市": "深圳", "意向职位": "幼儿园", "薪资期望": "30K税后", "性别": "男", "肤色": "白", "学历": "硕士"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[530/670] 导入: R22532 - kiara Garcia"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22532", "姓名": "kiara Garcia", "中介": "Ray", "国籍": "美国", "资格证": "TEFL", "教学经验": "4年", "目前所在地": "深圳", "上岗时间": "Sep.2023", "意向城市": "深圳", "意向职位": "幼儿园", "薪资期望": "28K", "性别": "女", "肤色": "浅黑", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[531/670] 导入: R22533 - Danish Shah"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22533", "姓名": "Danish Shah", "中介": "Ray", "国籍": "英国", "教学经验": "6年", "目前所在地": "东莞", "上岗时间": "Sep.2023", "意向城市": "深圳", "意向职位": "幼儿园", "薪资期望": "28K税后", "性别": "男", "肤色": "浅黑", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[532/670] 导入: R22534 - Shaun Li Stoffer"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22534", "姓名": "Shaun Li Stoffer", "中介": "日和夏Monica", "国籍": "美国", "专业": "教育学", "教学经验": "5年", "目前所在地": "深圳", "上岗时间": "Sep.2023", "意向城市": "深圳", "意向职位": "幼儿园", "薪资期望": "20-25税后", "性别": "男", "肤色": "白", "学历": "硕士"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[533/670] 导入: R22535 - BrandonB"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22535", "姓名": "BrandonB", "中介": "中介Nana Taotao", "国籍": "加拿大", "专业": "社会学", "教学经验": "4年", "目前所在地": "北京", "上岗时间": "ASAP", "意向城市": "深圳", "意向职位": "幼儿园", "薪资期望": "28K税后", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[534/670] 导入: R22536 - Theodore"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22536", "姓名": "Theodore", "中介": "广州中介Candy", "国籍": "南非", "专业": "体育管理", "教学经验": "5年", "目前所在地": "宁波", "上岗时间": "Sep.2023", "意向城市": "不限", "意向职位": "幼儿园，小学，初中", "薪资期望": "23K", "性别": "男", "肤色": "黑", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[535/670] 导入: R22537 - Cherry"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22537", "姓名": "Cherry", "中介": "广州中介Candy", "国籍": "南非", "专业": "教育学", "教学经验": "4年", "上岗时间": "Sep.2023", "意向城市": "深圳", "意向职位": "幼儿园，小学，初中", "薪资期望": "25K", "性别": "男", "肤色": "黑", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[536/670] 导入: R22538 - Refilwe Mpho Mathule"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22538", "姓名": "Refilwe Mpho Mathule", "中介": "广州中介Candy", "国籍": "南非", "专业": "语言学", "资格证": "TEFL", "教学经验": "6年", "目前所在地": "广州", "上岗时间": "Sep.2023", "意向城市": "广州", "意向职位": "幼儿园", "薪资期望": "18-20k after tax+ housing", "性别": "女", "肤色": "黑", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[537/670] 导入: R22539 - David Jerome"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22539", "姓名": "David Jerome", "中介": "Ray", "国籍": "美国", "资格证": "TESOL", "教学经验": "7年", "目前所在地": "深圳", "上岗时间": "Sep.2023", "意向城市": "深圳", "意向职位": "初高中、大学", "薪资期望": "19k-20k", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[538/670] 导入: R22540 - Ryan Purves"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22540", "姓名": "Ryan Purves", "中介": "优才社郭", "国籍": "加拿大", "专业": "TESOL", "教学经验": "10年", "目前所在地": "长沙", "意向城市": "广东", "意向职位": "幼儿园", "性别": "男", "肤色": "白", "学历": "硕士"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[539/670] 导入: R22541 - Smantha Gregory"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22541", "姓名": "Smantha Gregory", "中介": "Ray", "国籍": "牙买加", "教学经验": "1年", "目前所在地": "深圳", "上岗时间": "Sep.2023", "意向城市": "深圳", "意向职位": "小学", "薪资期望": "20-24k", "性别": "女", "肤色": "黑", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[540/670] 导入: R22542 - Feroza Mia"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22542", "姓名": "Feroza Mia", "中介": "Ray", "国籍": "南非", "专业": "教育领导学", "教学经验": "29年", "目前所在地": "南非", "上岗时间": "Sep.2023", "意向城市": "深圳", "意向职位": "幼儿园", "性别": "女", "肤色": "白", "学历": "硕士"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[541/670] 导入: R22543 - Naeem Naidoo"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22543", "姓名": "Naeem Naidoo", "中介": "Ray", "国籍": "南非", "教学经验": "3年", "上岗时间": "Sep.2023", "意向城市": "深圳", "意向职位": "幼儿园", "性别": "男", "肤色": "黑", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[542/670] 导入: R22544 - Nokwazi Bukhosini"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22544", "姓名": "Nokwazi Bukhosini", "中介": "Ray", "国籍": "南非", "资格证": "PGCE", "教学经验": "2年", "目前所在地": "南非", "上岗时间": "Sep.2023", "意向城市": "深圳", "意向职位": "幼儿园", "性别": "女", "肤色": "黑", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[543/670] 导入: R22545 - Lanesha McPherson Dennie"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22545", "姓名": "Lanesha McPherson Dennie", "中介": "Ray", "国籍": "牙买加", "专业": "心理/教育", "教学经验": "5年", "目前所在地": "佛山", "上岗时间": "Sep.2023", "意向城市": "广东", "意向职位": "小学", "薪资期望": "20-24k", "性别": "女", "肤色": "黑", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[544/670] 导入: R22546 - JASON HOOMAN"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22546", "姓名": "JASON HOOMAN", "中介": "优才社郭", "国籍": "伊朗", "专业": "音乐", "教学经验": "6年", "目前所在地": "广州", "上岗时间": "Sep.2023", "意向城市": "广东", "意向职位": "音乐、幼儿园、小学", "薪资期望": "18-30K", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[545/670] 导入: R22547 - Ndileka Ngidi"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22547", "姓名": "Ndileka Ngidi", "中介": "优才社郭", "国籍": "南非", "教学经验": "4年", "目前所在地": "佛山", "上岗时间": "Sep.2023", "意向城市": "广东", "意向职位": "幼儿园", "薪资期望": "22k", "性别": "女", "肤色": "黑", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[546/670] 导入: R22548 - Brian Finkelston"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22548", "姓名": "Brian Finkelston", "中介": "Ray", "国籍": "美国", "专业": "管理", "目前所在地": "南昌", "上岗时间": "Sep.2023", "意向城市": "深圳", "意向职位": "幼儿园", "薪资期望": "22-25税后", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[547/670] 导入: R22549 - Jack Ryan"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22549", "姓名": "Jack Ryan", "中介": "Ray", "国籍": "英国", "目前所在地": "深圳", "上岗时间": "Sep.2023", "意向城市": "上海、深圳", "薪资期望": "30+福利", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1649116800000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[548/670] 导入: R22550 - Franziska"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22550", "姓名": "Franziska", "中介": "海丽达Lilying", "国籍": "美国", "目前所在地": "深圳", "上岗时间": "Sep.2023", "意向城市": "深圳", "意向职位": "幼儿园", "性别": "女", "肤色": "白"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[549/670] 导入: R22551 - Chris Sherman"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22551", "姓名": "Chris Sherman", "中介": "Ray", "国籍": "美国", "资格证": "教师资格证", "目前所在地": "深圳", "上岗时间": "Sep.2023", "意向城市": "深圳", "性别": "男", "肤色": "白"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[550/670] 导入: R22552 - ALEKSANDAR 
KITANOVIC"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22552", "姓名": "ALEKSANDAR \nKITANOVIC", "中介": "Ray", "国籍": "塞尔维亚", "目前所在地": "深圳", "上岗时间": "Sep.2023", "意向城市": "深圳", "意向职位": "经济学", "性别": "男", "肤色": "白"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[551/670] 导入: R22553 - HAMZA IBRAHAM"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22553", "姓名": "HAMZA IBRAHAM", "中介": "Ray", "国籍": "英国", "专业": "数学、物理", "教学经验": "8年", "目前所在地": "深圳", "上岗时间": "Sep.2023", "意向城市": "深圳", "意向职位": "数学、物理、化学", "性别": "男", "肤色": "棕", "学历": "硕士"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[552/670] 导入: R22554 - Arman Gison"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22554", "姓名": "Arman Gison", "中介": "优才社郭", "国籍": "俄罗斯", "专业": "艺术和建筑设计", "教学经验": "5年", "目前所在地": "北京", "上岗时间": "Sep.2023", "意向城市": "深圳", "意向职位": "艺术", "性别": "男", "肤色": "白", "学历": "硕士"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[553/670] 导入: R22555 - RITA SAAD"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22555", "姓名": "RITA SAAD", "中介": "Ray", "国籍": "加拿大", "教学经验": "5年", "目前所在地": "深圳", "上岗时间": "Sep.2023", "意向城市": "深圳", "性别": "女", "肤色": "白", "年龄": 50.0}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[554/670] 导入: R22556 - Kelly Harper"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22556", "姓名": "Kelly Harper", "中介": "Ray", "国籍": "英国", "专业": "英语与历史", "教学经验": "16年", "目前所在地": "深圳", "上岗时间": "Sep.2023", "意向职位": "英语、文学", "薪资期望": "30-35K", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[555/670] 导入: R22557 - Gerald Adams"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22557", "姓名": "Gerald Adams", "中介": "Ray", "国籍": "美国", "专业": "英语文学", "教学经验": "10年以上", "目前所在地": "上海", "上岗时间": "Sep.2023", "意向城市": "上海、深圳", "薪资期望": "30-35K", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[556/670] 导入: R22558 - Sherene mcnaught"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22558", "姓名": "Sherene mcnaught", "中介": "Ray", "国籍": "牙买加", "教学经验": "1年", "目前所在地": "深圳", "上岗时间": "Sep.2023", "意向城市": "深圳", "意向职位": "幼儿园，小学", "薪资期望": "15+", "性别": "女", "肤色": "黑", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[557/670] 导入: R22559 - Monica Nguetta"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22559", "姓名": "Monica Nguetta", "中介": "Ray", "国籍": "美国", "教学经验": "5年", "目前所在地": "深圳", "上岗时间": "Sep.2023", "意向城市": "深圳，广州", "意向职位": "幼儿园，小学", "薪资期望": "协商", "性别": "女", "肤色": "黑", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[558/670] 导入: R22560 - Shubila"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22560", "姓名": "Shubila", "中介": "明星", "国籍": "坦桑尼亚", "目前所在地": "深圳", "上岗时间": "Sep.2023", "性别": "女", "肤色": "黑", "学历": "硕士"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[559/670] 导入: R22561 - Seline"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22561", "姓名": "Seline", "中介": "Greg", "国籍": "特尼达特", "目前所在地": "深圳", "上岗时间": "Sep.2023", "意向城市": "深圳", "性别": "女", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[560/670] 导入: R22562 - Hassan"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22562", "姓名": "Hassan", "中介": "Ray", "国籍": "巴基斯坦", "目前所在地": "深圳", "性别": "男", "学历": "博士"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[561/670] 导入: R22563 - Bronnie"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22563", "姓名": "Bronnie", "中介": "Himo", "国籍": "南非", "性别": "女"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[562/670] 导入: R22564 - Robina"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22564", "姓名": "Robina", "中介": "Ray", "国籍": "英国", "目前所在地": "深圳", "性别": "女"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[563/670] 导入: R22565 - Nenad"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22565", "姓名": "Nenad", "中介": "Ray", "国籍": "塞尔维亚", "目前所在地": "深圳", "意向职位": "地理", "性别": "男"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[564/670] 导入: R22566 - Joshua Rawlinson"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22566", "姓名": "Joshua Rawlinson", "中介": "Ray", "国籍": "英国", "资格证": "TEFL", "教学经验": "5年", "目前所在地": "深圳", "上岗时间": "Aug.2023", "薪资期望": "22-25k", "性别": "男", "肤色": "白", "学历": "本科", "年龄": 30.0}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[565/670] 导入: R22567 - Jan Jarosinski"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22567", "姓名": "Jan Jarosinski", "中介": "Ray", "国籍": "澳大利亚", "性别": "男"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[566/670] 导入: R22568 - Joel Samuel Nicholson"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22568", "姓名": "Joel Samuel Nicholson", "中介": "Ray", "国籍": "英国", "教学经验": "10.年", "目前所在地": "厦门", "上岗时间": "Aug. 2025", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[567/670] 导入: R22569 - Amandeep Heer"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22569", "姓名": "Amandeep Heer", "中介": "Guo老师", "国籍": "加拿大", "专业": "数学", "资格证": "数学教师资格证", "教学经验": "3年", "上岗时间": "Aug. 2025", "性别": "男", "肤色": "黄", "学历": "硕士"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[568/670] 导入: R22570 - Michael P"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22570", "姓名": "Michael P", "中介": "Cindy Feng", "国籍": "美国", "专业": "本科计算机&经济学", "资格证": "TEFL", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[569/670] 导入: R22571 - Izabela Szepietowska"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22571", "姓名": "Izabela Szepietowska", "中介": "Ray", "国籍": "波兰", "性别": "女", "肤色": "白", "学历": "硕士"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[570/670] 导入: R22572 - Alex Lloyd"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22572", "姓名": "Alex Lloyd", "中介": "EF-Paul", "国籍": "美国", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[571/670] 导入: R22573 - Joseph Rutherford"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22573", "姓名": "Joseph Rutherford", "中介": "中介Jack吴", "国籍": "英国", "专业": "历史", "资格证": "TEFL", "教学经验": "3", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[572/670] 导入: R22574 - Ryan Hill"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22574", "姓名": "Ryan Hill", "中介": "Ray", "国籍": "美国", "专业": "英文文学", "资格证": "TEFL", "教学经验": "4年", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[573/670] 导入: R22575 - Joshua Walker"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22575", "姓名": "Joshua Walker", "中介": "Nemo", "国籍": "美国", "教学经验": "9年", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[574/670] 导入: R22576 - BENJAMIN TAYLOR"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22576", "姓名": "BENJAMIN TAYLOR", "中介": "Nemo", "国籍": "英国", "资格证": "PGCE", "教学经验": "7年", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[575/670] 导入: R22577 - Jay Ross"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22577", "姓名": "Jay Ross", "中介": "Ray"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[576/670] 导入: R22578 - Alastair Higgs"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22578", "姓名": "Alastair Higgs", "中介": "Rella", "国籍": "英国", "性别": "男", "肤色": "白"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[577/670] 导入: R22579 - Adam Shaheen"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22579", "姓名": "Adam Shaheen", "中介": "Rella", "国籍": "英国", "教学经验": "7年", "性别": "男", "肤色": "白"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[578/670] 导入: R22580 - GordanStojanović"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22580", "姓名": "GordanStojanović", "中介": "Ray", "国籍": "塞尔维亚", "性别": "男", "肤色": "白", "学历": "硕士"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[579/670] 导入: R22581 - Chris"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22581", "姓名": "Chris", "中介": "中介June盈", "国籍": "澳大利亚", "意向职位": "数学", "性别": "男", "肤色": "白"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[580/670] 导入: R22582 - Matthew Andrew"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22582", "姓名": "Matthew Andrew", "中介": "Ray", "国籍": "英国", "性别": "男", "肤色": "白"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[581/670] 导入: R22583 - David Perkins"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22583", "姓名": "David Perkins", "中介": "Ray", "国籍": "美国", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[582/670] 导入: R22584 - Joseph Floyd"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22584", "姓名": "Joseph Floyd", "中介": "中介Jack吴", "国籍": "中介Jack吴", "教学经验": "10年+", "性别": "男", "肤色": "白", "学历": "博士"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[583/670] 导入: R22585 - Reinhardt Johannes Loots"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22585", "姓名": "Reinhardt Johannes Loots", "中介": "Rella", "国籍": "南非", "资格证": "TEFL", "教学经验": "7年", "性别": "男", "肤色": "白", "学历": "硕士"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[584/670] 导入: R22586 - Hayden Nelson"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22586", "姓名": "Hayden Nelson", "中介": "Ray", "国籍": "美国", "性别": "男", "肤色": "白"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[585/670] 导入: R22587 - Berny"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22587", "姓名": "Berny", "中介": "Lynette中介", "国籍": "南非", "教学经验": "5年", "性别": "女", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[586/670] 导入: R22588 - Joao"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22588", "姓名": "Joao", "中介": "Ray", "国籍": "巴西", "性别": "男", "肤色": "白"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[587/670] 导入: R22589 - Josh K994-J"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22589", "姓名": "Josh K994-J", "中介": "中介June盈", "国籍": "英国", "资格证": "PGCE", "教学经验": "7年", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[588/670] 导入: R22590 - Sam X243-S"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22590", "姓名": "Sam X243-S", "中介": "中介June盈", "国籍": "美国", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[589/670] 导入: R22591 - Nathan Tonkin"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22591", "姓名": "Nathan Tonkin", "中介": "Guo老师"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[590/670] 导入: R22592 - John X231-J"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22592", "姓名": "John X231-J", "中介": "中介June盈", "国籍": "美国", "资格证": "TEFL", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[591/670] 导入: R22593 - Max  X222-M"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22593", "姓名": "Max  X222-M", "中介": "中介June盈", "国籍": "美国", "专业": "教育学", "教学经验": "6年", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[592/670] 导入: R22594 - Rebecca X182-R"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22594", "姓名": "Rebecca X182-R", "中介": "中介June盈", "国籍": "美国", "教学经验": "5年", "性别": "女", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[593/670] 导入: R22595 - LA386"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22595", "姓名": "LA386", "中介": "Lynette中介", "国籍": "新西兰", "专业": "历史", "性别": "男", "肤色": "白", "学历": "硕士"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[594/670] 导入: R22596 - Tamara Dinic"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22596", "姓名": "Tamara Dinic", "中介": "Ray", "国籍": "塞尔维亚", "专业": "艺术", "性别": "女", "肤色": "白", "学历": "硕士"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[595/670] 导入: R22597 - Liam"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22597", "姓名": "Liam", "中介": "Ray", "国籍": "新西兰", "专业": "化学", "性别": "男", "肤色": "白"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[596/670] 导入: R22598 - Chris Hutchinson"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22598", "姓名": "Chris Hutchinson", "中介": "Ray", "国籍": "英国", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[597/670] 导入: R22599 - Mark Nichols"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22599", "姓名": "Mark Nichols", "中介": "Ray", "国籍": "美国", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[598/670] 导入: R22600 - Braulio Garcia"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22600", "姓名": "Braulio Garcia", "中介": "中介Jack吴", "国籍": "美国", "专业": "数学", "教学经验": "7年", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[599/670] 导入: R22601 - Chris Buhse"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22601", "姓名": "Chris Buhse", "中介": "中介Jack吴", "国籍": "美国", "专业": "数学", "教学经验": "10.年", "性别": "男", "肤色": "白", "学历": "硕士"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[600/670] 导入: R22602 - Joshua Sabet"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22602", "姓名": "Joshua Sabet", "中介": "中介Jack吴", "国籍": "加拿大", "专业": "计算机科学与数学专业", "资格证": "TESOL", "教学经验": "4年", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[601/670] 导入: R22603 - Kyle Dafel"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22603", "姓名": "Kyle Dafel", "中介": "EF-Paul", "国籍": "南非", "资格证": "TKT", "教学经验": "7年", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[602/670] 导入: R22604 - Nika Khurtsia"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22604", "姓名": "Nika Khurtsia", "中介": "Agent Jane", "国籍": "格鲁吉亚", "意向职位": "数学", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[603/670] 导入: R22605 - 宝拉"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22605", "姓名": "宝拉", "中介": "Lisa 中介", "国籍": "俄罗斯", "性别": "女", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[604/670] 导入: R22606 - Jay Nichvolodov"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22606", "姓名": "Jay Nichvolodov", "中介": "Lisa 中介", "国籍": "加拿大", "性别": "男", "肤色": "白", "学历": "本科", "年龄": 37.0}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[605/670] 导入: R22607 - Arron"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22607", "姓名": "Arron", "中介": "Rella", "国籍": "美国", "意向职位": "雅思，文学", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[606/670] 导入: R22608 - Max Blair"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22608", "姓名": "Max Blair", "中介": "Ray", "国籍": "英国", "教学经验": "1年", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[607/670] 导入: R22609 - James George"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22609", "姓名": "James George", "中介": "Greg", "国籍": "英国", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[608/670] 导入: R22610 - JOSE A. RODRIGUEZ 赵子龙"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22610", "姓名": "JOSE A. RODRIGUEZ 赵子龙", "中介": "Ray", "国籍": "美国", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[609/670] 导入: R22611 - Gram"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22611", "姓名": "Gram", "中介": "Rella", "国籍": "加拿大", "教学经验": "7年", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[610/670] 导入: R22612 - Martin Healy"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22612", "姓名": "Martin Healy", "中介": "Ray", "国籍": "爱尔兰", "资格证": "TEFL", "教学经验": "5年", "意向职位": "Science", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[611/670] 导入: R22613 - MENDÉ
CARLTON"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22613", "姓名": "MENDÉ\nCARLTON", "中介": "Ray", "国籍": "美国", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[612/670] 导入: R22614 - Connor Gulliford LA272"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22614", "姓名": "Connor Gulliford LA272", "中介": "Lynette中介", "国籍": "英国", "意向职位": "幼儿园，IB", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[613/670] 导入: R22615 - Jacob Compton"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22615", "姓名": "Jacob Compton", "中介": "Eunice Asia", "国籍": "美国", "性别": "男", "肤色": "白", "学历": "硕士"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[614/670] 导入: R22616 - Allison"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22616", "姓名": "Allison", "中介": "瑞沃德Benjamin", "国籍": "南非", "意向职位": "幼儿园，小学", "性别": "女", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[615/670] 导入: R22617 - Adrian"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22617", "姓名": "Adrian", "中介": "EF-Paul", "国籍": "美国", "性别": "男", "肤色": "白", "学历": "硕士"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[616/670] 导入: R22618 - Christiaan du Toit"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22618", "姓名": "Christiaan du Toit", "中介": "Ray", "国籍": "南非", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[617/670] 导入: R22619 - William"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22619", "姓名": "William", "中介": "Sherry", "国籍": "英国", "资格证": "TEFL", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[618/670] 导入: R22620 - Safa
Ben Hammadi"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22620", "姓名": "Safa\nBen Hammadi", "中介": "Ray", "国籍": "突尼斯", "性别": "女", "肤色": "白", "学历": "硕士"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[619/670] 导入: R22621 - Tyler Ross"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22621", "姓名": "Tyler Ross", "中介": "中介Jack吴", "国籍": "美国", "意向职位": "数学", "性别": "男", "肤色": "白", "学历": "硕士"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[620/670] 导入: R22622 - Ayoub"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22622", "姓名": "Ayoub", "中介": "Ray", "国籍": "摩洛哥", "意向职位": "AP历史", "性别": "男", "肤色": "白", "学历": "硕士"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[621/670] 导入: R22623 - Callum"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22623", "姓名": "Callum", "中介": "Ray", "国籍": "英国", "性别": "男", "肤色": "白", "学历": "硕士"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[622/670] 导入: R22624 - Dan"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22624", "姓名": "Dan", "中介": "Ray", "国籍": "菲律宾", "资格证": "教育学、心理学", "性别": "男", "肤色": "黄", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[623/670] 导入: R22625 - Rhys"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22625", "姓名": "Rhys", "中介": "Ray", "国籍": "英国", "意向职位": "幼儿园", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[624/670] 导入: R22626 - Derrick"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22626", "姓名": "Derrick", "中介": "中介Jack", "国籍": "美国", "性别": "男", "肤色": "白", "学历": "硕士"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[625/670] 导入: R22627 - George"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22627", "姓名": "George", "中介": "Ray", "国籍": "英国", "意向职位": "幼儿园", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[626/670] 导入: R22628 - Daniel Shields"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22628", "姓名": "Daniel Shields", "中介": "Ray", "国籍": "英国", "意向职位": "高中", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[627/670] 导入: R22629 - Johnson"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22629", "姓名": "Johnson", "中介": "June", "国籍": "英国", "意向职位": "中小学", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[628/670] 导入: R22630 - Simon"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22630", "姓名": "Simon", "中介": "Lisa 中介", "国籍": "英国", "意向职位": "幼儿园", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[629/670] 导入: R22631 - Tim"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22631", "姓名": "Tim", "中介": "瑞沃德Benjamin", "国籍": "美国", "意向职位": "幼儿园", "性别": "男", "肤色": "白", "学历": "硕士"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[630/670] 导入: R22632 - Ulrich"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22632", "姓名": "Ulrich", "中介": "Ray", "国籍": "南非", "意向职位": "幼儿园", "性别": "男", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[631/670] 导入: R22633 - James Bolton"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22633", "姓名": "James Bolton", "中介": "Ray", "国籍": "英国", "意向职位": "文学、雅思", "性别": "男", "肤色": "白", "学历": "硕士"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[632/670] 导入: R22634 - Shandni Bolton"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22634", "姓名": "Shandni Bolton", "中介": "Ray", "国籍": "英国", "意向职位": "文学、雅思、科学", "性别": "女", "肤色": "白", "学历": "硕士"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[633/670] 导入: R22635 - John"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22635", "姓名": "John", "中介": "中介Jack", "国籍": "美国", "性别": "男", "肤色": "白", "学历": "硕士"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[634/670] 导入: R22636 - Daneillia"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22636", "姓名": "Daneillia", "中介": "Ray", "国籍": "牙买加", "性别": "女", "肤色": "黑"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[635/670] 导入: R22637 - Sara"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22637", "姓名": "Sara", "中介": "瑞沃德Benjamin", "国籍": "美国", "性别": "女", "肤色": "白", "学历": "本科"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[636/670] 导入: R22638 - Eduardo Pedroso"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22638", "姓名": "Eduardo Pedroso", "中介": "LINKEDIN", "国籍": "巴西", "专业": "硕士在读：历史教育；本科：教育研究", "教学经验": "13年", "目前所在地": "巴西", "上岗时间": "2026年2-3月", "意向职位": "小学以上", "可任教内容": "历史、社会科学、地理、人文、英语", "性别": "男", "肤色": "白", "学历": "硕士", "年龄": 35.0, "更新日期": 1768262400000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[637/670] 导入: R22639 - Artsem Ivanou"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22639", "姓名": "Artsem Ivanou", "国籍": "白俄罗斯", "专业": "博士：历史研究；硕士：历史；本科：历史与社会科学教育", "资格证": "TESOL", "教学经验": "15年", "目前所在地": "上海", "上岗时间": "2026年2-3月", "意向城市": "上海", "意向职位": "小学以上", "可任教内容": "历史、地理、社会科学", "性别": "男", "肤色": "白", "学历": "博士", "年龄": 39.0, "更新日期": 1768521600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[638/670] 导入: R22640 - Filip Novakovic"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22640", "姓名": "Filip Novakovic", "国籍": "加拿大", "专业": "酒店管理", "资格证": "TEFL", "教学经验": "12年", "目前所在地": "北京", "上岗时间": "2026年2-3月", "意向城市": "深圳", "意向职位": "幼儿园", "性别": "男", "肤色": "白", "学历": "本科", "年龄": 40.0, "更新日期": 1768521600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[639/670] 导入: R22641 - Sunica Nel"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22641", "姓名": "Sunica Nel", "国籍": "南非", "专业": "教育", "资格证": "TEFL", "教学经验": "4年", "目前所在地": "深圳", "上岗时间": "2026年2-3月", "意向职位": "托育、幼儿园", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1768521600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[640/670] 导入: R22642 - IVANA GAJIC - EVA"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22642", "姓名": "IVANA GAJIC - EVA", "国籍": "塞尔维亚", "专业": "硕士：教育；本科：教育", "资格证": "PGCE", "教学经验": "11年", "目前所在地": "佛山", "上岗时间": "2026年2-3月", "意向城市": "广州、佛山", "意向职位": "中小学", "可任教内容": "视觉艺术、美术、绘画", "性别": "女", "肤色": "白", "学历": "硕士", "更新日期": 1768521600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[641/670] 导入: R22643 - NEMANJA RADMILOVIC - NEMO"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22643", "姓名": "NEMANJA RADMILOVIC - NEMO", "国籍": "塞尔维亚", "专业": "硕士：体育教育；本科：体育教育", "资格证": "PGCE", "教学经验": "11年", "目前所在地": "佛山", "上岗时间": "2026年2-3月", "意向城市": "广州、佛山", "意向职位": "中小学", "可任教内容": "体育", "性别": "男", "肤色": "白", "学历": "硕士", "更新日期": 1768521600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[642/670] 导入: R22644 - Zainab Mubashir"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22644", "姓名": "Zainab Mubashir", "国籍": "巴基斯坦", "专业": "硕士：电机工程；本科：电机工程", "教学经验": "4年", "目前所在地": "巴基斯坦", "上岗时间": "2026年2-3月", "意向城市": "全国", "意向职位": "中学及以上", "可任教内容": "数学、物理", "性别": "女", "肤色": "白", "学历": "硕士", "更新日期": 1768521600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[643/670] 导入: R22645 - JARED WILSON"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22645", "姓名": "JARED WILSON", "国籍": "英国", "专业": "硕士：教育", "资格证": "PGCE", "教学经验": "3年+13年通讯技术课程指导", "目前所在地": "马来西亚", "上岗时间": "2026年8-9月", "意向城市": "全国", "意向职位": "小学及以上", "可任教内容": "计算机科学", "性别": "男", "肤色": "白", "学历": "硕士", "更新日期": 1768521600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[644/670] 导入: R22646 - KATE CHODZKO"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22646", "姓名": "KATE CHODZKO", "国籍": "波兰", "专业": "硕士：英语作为第二外语教育", "资格证": "PGCE", "教学经验": "15年", "目前所在地": "马来西亚", "上岗时间": "2026年8-9月", "意向城市": "全国", "意向职位": "小学及以上", "可任教内容": "英语、雅思", "性别": "女", "肤色": "白", "学历": "硕士", "更新日期": 1768521600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[645/670] 导入: R22647 - Cody Marcotte"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22647", "姓名": "Cody Marcotte", "国籍": "加拿大", "专业": "国际商务", "资格证": "PGCE、TESOL", "教学经验": "9年", "目前所在地": "深圳", "上岗时间": "2026年2-3月", "意向城市": "深圳、成都", "意向职位": "幼儿园及以上", "可任教内容": "英语", "薪资期望": "31K", "性别": "男", "肤色": "白", "学历": "本科", "年龄": 33.0, "更新日期": 1768953600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[646/670] 导入: R22648 - James Corbett"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22648", "姓名": "James Corbett", "国籍": "英国", "专业": "商务与管理", "资格证": "TEFL", "教学经验": "2年", "目前所在地": "深圳", "上岗时间": "2026年8-9月", "意向城市": "上海", "意向职位": "优先小学、幼儿园、高中", "可任教内容": "英国", "薪资期望": "28K", "性别": "男", "肤色": "白", "学历": "本科", "年龄": 24.0, "更新日期": 1768953600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[647/670] 导入: R22649 - Mariam Batool"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22649", "姓名": "Mariam Batool", "国籍": "巴基斯坦", "专业": "生物技术、生物化学和分子生物学", "教学经验": "11年", "目前所在地": "英国", "上岗时间": "2026年2-3月", "意向城市": "全国", "意向职位": "高中、大学", "可任教内容": "生物、化学、科学", "性别": "女", "学历": "2个硕士", "更新日期": 1768953600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[648/670] 导入: R22650 - Daniel Ghaly"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22650", "姓名": "Daniel Ghaly", "国籍": "英国", "专业": "财会", "资格证": "TEFL", "教学经验": "2年", "目前所在地": "英国", "上岗时间": "2026年2-3月", "意向城市": "深圳或其他城市", "意向职位": "幼儿园及以上", "可任教内容": "英语", "薪资期望": "26k", "性别": "男", "肤色": "白", "学历": "本科", "年龄": 25.0, "更新日期": 1768953600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[649/670] 导入: R22651 - Peter Moczulski"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22651", "姓名": "Peter Moczulski", "国籍": "美国", "专业": "地理与地球科学", "资格证": "TESOL", "教学经验": "8年", "目前所在地": "深圳", "上岗时间": "2026年8-9月", "意向城市": "深圳", "意向职位": "小学及以上", "可任教内容": "英语", "性别": "男", "肤色": "白", "学历": "本科", "年龄": 46.0, "更新日期": 1768953600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[650/670] 导入: R22652 - Robert W. Enga"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22652", "姓名": "Robert W. Enga", "国籍": "美国", "专业": "通讯", "资格证": "教师资格证、TEFL", "教学经验": "3年+3年助教", "目前所在地": "深圳", "上岗时间": "2026年2-3月", "意向城市": "深圳", "意向职位": "小学及以上", "可任教内容": "英语", "性别": "男", "肤色": "白", "学历": "本科", "更新日期": 1768953600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[651/670] 导入: R22653 - Taryn Perkins"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22653", "姓名": "Taryn Perkins", "国籍": "南非", "专业": "教育学", "资格证": "TEFL", "教学经验": "5年", "目前所在地": "杭州", "上岗时间": "2026-03-01 00:00:00", "意向城市": "深圳", "意向职位": "幼儿园、小学", "可任教内容": "英语", "薪资期望": "26K税后含房补", "性别": "女", "肤色": "白", "学历": "本科", "年龄": 42.0, "更新日期": 1768953600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[652/670] 导入: R22654 - Michael Perkins"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22654", "姓名": "Michael Perkins", "国籍": "南非", "专业": "教育学", "资格证": "TEFL", "教学经验": "4年", "目前所在地": "杭州", "上岗时间": "2026-03-01 00:00:00", "意向城市": "深圳", "意向职位": "幼儿园、小学", "可任教内容": "英语", "薪资期望": "26K税后含房补", "性别": "男", "肤色": "白", "学历": "本科", "年龄": 43.0, "更新日期": 1768953600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[653/670] 导入: R22655 - Arghya Samantaray"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22655", "姓名": "Arghya Samantaray", "国籍": "美国", "专业": "经济学", "资格证": "教师资格证、TEFL", "教学经验": "5年", "目前所在地": "深圳", "上岗时间": "2026-03-01 00:00:00", "意向城市": "广东内城市", "意向职位": "幼儿园，早教，IB", "可任教内容": "英语、IB、AP、STEAM", "性别": "棕", "肤色": "棕", "学历": "本科", "年龄": 30.0, "更新日期": 1768953600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[654/670] 导入: R22656 - SANDRO KUNZ（Alex）"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22656", "姓名": "SANDRO KUNZ（Alex）", "国籍": "瑞士", "专业": "硕士：国际关系；本科：国际商务交流", "资格证": "TEFL", "教学经验": "16年", "目前所在地": "济南", "上岗时间": "2026-03-01 00:00:00", "意向城市": "南京/北京以南城市", "意向职位": "大学", "可任教内容": "德语、英语", "性别": "男", "肤色": "白", "学历": "硕士", "年龄": 61.0, "更新日期": 1768953600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[655/670] 导入: R22657 - Todd Michael Bentley II"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22657", "姓名": "Todd Michael Bentley II", "国籍": "美国", "专业": "英语", "教学经验": "6年", "目前所在地": "深圳", "上岗时间": "2026-03-01 00:00:00", "意向城市": "深圳", "意向职位": "初高中", "可任教内容": "英语", "薪资期望": "25-30K", "性别": "男", "肤色": "白", "学历": "本科", "年龄": 38.0, "更新日期": 1768953600000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[656/670] 导入: R22658 - James Ziegler"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22658", "姓名": "James Ziegler", "专业": "人类学", "资格证": "TEFL", "目前所在地": "深圳", "上岗时间": "2026-03-01 00:00:00", "意向城市": "深圳", "意向职位": "初高中及以上", "可任教内容": "英语", "性别": "男", "肤色": "白", "学历": "硕士", "年龄": 40.0, "更新日期": 1769472000000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[657/670] 导入: R22659 - GIOVANNI ALEXANDER ROJAS DIPENG"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22659", "姓名": "GIOVANNI ALEXANDER ROJAS DIPENG", "国籍": "加拿大", "专业": "理科", "教学经验": "8年", "目前所在地": "深圳", "上岗时间": "2026年2-3月", "意向城市": "深圳", "意向职位": "初高中及以上", "可任教内容": "物理、生物、科学", "薪资期望": "30K", "性别": "男", "肤色": "白", "学历": "硕士", "年龄": 35.0, "更新日期": 1769731200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[658/670] 导入: R22660 - Brandon Schiermeyer"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22660", "姓名": "Brandon Schiermeyer", "国籍": "美国", "专业": "经济学", "资格证": "TEFL/CELTA", "教学经验": "3年", "目前所在地": "深圳", "上岗时间": "2026年2-3月", "意向城市": "深圳", "意向职位": "高中", "可任教内容": "AP、经济学、雅思", "性别": "男", "肤色": "白", "学历": "本科", "年龄": 28.0, "更新日期": 1769731200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[659/670] 导入: R22661 - Steve Coates"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22661", "姓名": "Steve Coates", "国籍": "英国", "专业": "体育教育", "资格证": "数学教师资格证", "教学经验": "6年，16年体育教学部长", "目前所在地": "英国", "上岗时间": "2026年2-3月", "意向城市": "江苏", "意向职位": "初高中及以上", "可任教内容": "数学", "性别": "男", "肤色": "白", "学历": "本科", "年龄": 40.0, "更新日期": 1769731200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[660/670] 导入: R22662 - Anna"
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22662", "姓名": "Anna", "国籍": "亚美尼亚", "专业": "时尚设计", "资格证": "TEFL", "教学经验": "8年", "目前所在地": "佛山", "上岗时间": "2026年2-3月", "意向城市": "广东、青岛", "意向职位": "幼儿园及以上", "可任教内容": "美术、绘画", "薪资期望": "20-24+房补", "性别": "女", "肤色": "白", "学历": "本科", "更新日期": 1769731200000}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[661/670] 导入: R22663 - "
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22663"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[662/670] 导入: R22664 - "
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22664"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[663/670] 导入: R22665 - "
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22665"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[664/670] 导入: R22666 - "
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22666"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[665/670] 导入: R22667 - "
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22667"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[666/670] 导入: R22668 - "
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22668"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[667/670] 导入: R22669 - "
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22669"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[668/670] 导入: R22670 - "
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22670"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[669/670] 导入: R22671 - "
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22671"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "[670/670] 导入: R22672 - "
cat <<'EOF' | openclaw agent --local --message "请调用feishu_bitable_create_record导入此记录"
{"候选人ID": "R22672"}
EOF
if [ $? -eq 0 ]; then
  success=$((success+1))
else
  fail=$((fail+1))
fi
sleep 0.3

echo "导入完成: 成功 $success, 失败 $fail"
