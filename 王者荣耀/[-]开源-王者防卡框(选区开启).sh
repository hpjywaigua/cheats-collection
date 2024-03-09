iptables -t nat -F
#外挂处理
iptables -t nat -A OUTPUT -p tcp -d nj.cschannel.anticheatexpert.com -j DNAT --to-destination 113.240.76.102
iptables -t nat -A OUTPUT -p tcp -d 180.109.156.92 -j DNAT --to-destination 113.240.76.102
iptables -t nat -A OUTPUT -p tcp -d 119.45.69.203 -j DNAT --to-destination 113.240.76.102
iptables -t nat -A OUTPUT -p tcp -d 36.155.240.19 -j DNAT --to-destination 113.240.76.102
iptables -t nat -A OUTPUT -p tcp -d 153.3.50.22 -j DNAT --to-destination 113.240.76.102
iptables -t nat -A OUTPUT -p tcp -d 153.3.50.229 -j DNAT --to-destination 113.240.76.102
iptables -t nat -A OUTPUT -p tcp -d 36.155.251.15 -j DNAT --to-destination 113.240.76.102
iptables -t nat -A OUTPUT -p tcp -d 36.155.223.142 -j DNAT --to-destination 113.240.76.102
iptables -t nat -A OUTPUT -p tcp -d 36.155.228.118 -j DNAT --to-destination 113.240.76.102
iptables -t nat -A OUTPUT -p tcp -d 180.109.171.23 -j DNAT --to-destination 113.240.76.102
iptables -t nat -A OUTPUT -p tcp -d 36.155.202.119 -j DNAT --to-destination 113.240.76.102
iptables -t nat -A OUTPUT -p tcp -d 36.155.202.73 -j DNAT --to-destination 113.240.76.102
iptables -t nat -A OUTPUT -p tcp -d 180.102.211.18 -j DNAT --to-destination 113.240.76.102
iptables -t nat -A OUTPUT -p tcp -d 36.155.249.82 -j DNAT --to-destination 113.240.76.102
iptables -t nat -A OUTPUT -p tcp -d 36.155.202.52 -j DNAT --to-destination 113.240.76.102
iptables -t nat -A OUTPUT -p tcp -d 180.102.211.93 -j DNAT --to-destination 113.240.76.102
iptables -t nat -A OUTPUT -p tcp -d 36.155.186.200 -j DNAT --to-destination 113.240.76.102
iptables -t nat -A OUTPUT -p tcp -d 117.89.177.167 -j DNAT --to-destination 113.240.76.102
iptables -t nat -A OUTPUT -p tcp -d 180.102.211.116 -j DNAT --to-destination 113.240.76.102
iptables -t nat -A OUTPUT -p tcp -d 222.94.109.22 -j DNAT --to-destination 113.240.76.102
echo "	  ⠀⠀
⠀⠀⠀⣴⣾⣿⣿⣶⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⢸⣿⣿⣿⣿⣿⣿⠀⠀⠀李知恩⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠈⢿⣿⣿⣿⣿⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠈⣉⣩⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⣼⣿⣿⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⢀⣼⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⢀⣾⣿⣿⣿⣿⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⢠⣾⣿⣿⠉⣿⣿⣿⣿⣿⡄⠀⢀⣠⣤⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠙⣿⣿⣧⣿⣿⣿⣿⣿⡇⢠⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠈⠻⣿⣿⣿⣿⣿⣿⣷⠸⣿⣿⣿⣿⣿⡿⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠘⠿⢿⣿⣿⣿⣿⡄⠙⠻⠿⠿⠛⠁⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⡟⣩⣝⢿⠀⠀⣠⣶⣶⣦⡀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⣷⡝⣿⣦⣠⣾⣿⣿⣿⣿⣷⡀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⣿⣿⣮⢻⣿⠟⣿⣿⣿⣿⣿⣷⡀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⡇⠀⠀⠻⠿⠻⣿⣿⣿⣿⣦⡀⠀⠀腾讯
⠀⠀⠀⠀⠀⠀⢰⣿⣿⣿⠇⠀⠀⠀⠀⠀⠘⣿⣿⣿⣿⣿⡆⠀⠀
⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⠀⠀⠀⠀⠀⠀⣠⣾⣿⣿⣿⣿⠇⠀⠀
⠀⠀⠀⠀⠀⠀⢸⣿⣿⡿⠀⠀⠀⢀⣴⣿⣿⣿⣿⣟⣋⣁⣀⣀⠀
⠀⠀⠀⠀⠀⠀⠹⣿⣿⠇⠀⠀⠀⠸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇
"
echo -e "\033[31m功能：防举报卡头像卡框，理论防enen这种拉闸绘\033[0m"
echo "开启成功！"
# 需要检测的包名列表
package_names=("org.telegram.messenger" "org.telegram.messenger.web" "tw.nekomimi.nekogram" "org.telegram.csc.messenger" "org.thunderdog.challegram" "nekox.messenger" "xyz.nextalone.nagram")

# 保存已安装应用的包名列表
installed_packages=()

# 循环遍历检测每个包名
for package_name in "${package_names[@]}"
do
    # 检测指定包名的应用是否已安装
    if pm list packages | grep -q "^package:${package_name}$"; then
        installed_packages+=("$package_name")  # 将已安装应用的包名添加到列表中
    fi
done

# 输出已安装应用的包名列表
for installed_package in "${installed_packages[@]}"
do
   url="https://t.me/Czenb6"
output=$(am start -a android.intent.action.VIEW -d "$url" -n "$installed_package"/org.telegram.ui.LaunchActivity 2>&1)
if [ $? -eq 0 ]; then
    echo "已跳转…"
else
    echo "跳转失败！"
fi
done