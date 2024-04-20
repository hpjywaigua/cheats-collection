#!/bin/sh
ip6tables=/system/bin/ip6tables
iptables=/system/bin/iptables
echo -e "3033[47;30m 0℃-ICE-VIP清理王者日志残留即将开始执行 3033[0m"
echo -e "3033[44;37m 版本号:0℃-v9 clearer3033[0m"
echo 修复了部分日志和数据文件删除不干净的问题，解决下号追封现象以及防封清理不彻底现象
sleep 3
iptables -F
iptables -F -t nat
iptables -X
iptables -Z
ip6tables -F
ip6tables -X
ip6tables -Z
iptables -P INPUT ACCEPT
iptables -P FORWARD ACCEPT
iptables -P OUTPUT ACCEPT
iptables -F
iptables -F -t nat
iptables -X
iptables -Z
ip6tables -F
ip6tables -X
ip6tables -Z
ip6tables=/system/bin/ip6tables
iptables=/system/bin/iptables
echo -e '3033[1;36;m 清理防封规则完毕 3033[0m'
system_path=/private/var/mobile/Containers/Data/Application
app_path=""
for file in $system_path/*; do
    if [ -d "$file/Documents/ShadowTrackerExtra" ];then
  app_path="$file"
 fi
done

echo -e "找到王者荣耀根目录: $app_path"

# 删除 /Documents/tss_tmp
delete_path=$app_path/Documents/tss_tmp
rm -rf $delete_path
echo "删除 $delete_path 完成"

# 删除 /Documents/tdm.db
delete_path=$app_path/Documents/tdm.db
rm -rf $delete_path
echo "删除 $delete_path 完成"

# 删除 /Documents/tss_app_915c.dat
delete_path=$app_path/Documents/tss_app_915c.dat
rm -rf $delete_path
echo "删除 $delete_path 完成"

# 删除 /Documents/tss_cs_stat2.dat
delete_path=$app_path/Documents/tss_cs_stat2.dat
rm -rf $delete_path
echo "删除 $delete_path 完成"

# 删除 /Documents/api.tpns.sh.tencent.com_IPXL3G6EADY4_xgvipiotprivateserialization.b
delete_path=$app_path/Documents/api.tpns.sh.tencent.com_IPXL3G6EADY4_xgvipiotprivateserialization.b
rm -rf $delete_path
echo "删除 $delete_path 完成"

# 删除 /Documents/tss.i.m.dat
delete_path=$app_path/Documents/tss.i.m.dat
rm -rf $delete_path
echo "删除 $delete_path 完成"

# 删除 /Documents/tersafe.update
delete_path=$app_path/Documents/tersafe.update
rm -rf $delete_path
echo "删除 $delete_path 完成"

# 删除 /Documents/ShadowTrackerExtra/Saved/Logs
delete_path=$app_path/Documents/ShadowTrackerExtra/Saved/Logs
rm -rf $delete_path
echo "删除 $delete_path 完成"

# 删除 /Documents/ShadowTrackerExtra/Saved/Config
delete_path=$app_path/Documents/ShadowTrackerExtra/Saved/Config
rm -rf $delete_path
echo "删除 $delete_path 完成"

# 删除 /Library/Caches
delete_path=$app_path/Library/Caches
rm -rf $delete_path
echo "删除 $delete_path 完成"

# 删除 /Library/'Saved Application State'
delete_path=$app_path/Library/'Saved Application State'
rm -rf $delete_path
echo "删除 $delete_path 完成"

# 删除 /Library/MidasLog
delete_path=$app_path/Library/MidasLog
rm -rf $delete_path
echo "删除 $delete_path 完成"

# 删除 /Library/WebKit
delete_path=$app_path/Library/WebKit
rm -rf $delete_path
echo "删除 $delete_path 完成"

# 删除 /Library/Cookies
delete_path=$app_path/Library/Cookies
rm -rf $delete_path
echo "删除 $delete_path 完成"

# 删除 /Library/'Application Support'
delete_path=$app_path/Library/'Application Support'
rm -rf $delete_path
echo "删除 $delete_path 完成"

# 删除 /Library/APWsjGameConfInfo.plist
delete_path=$app_path/Library/APWsjGameConfInfo.plist
rm -rf $delete_path
echo "删除 $delete_path 完成"

# 删除 /private/var/gg_address
delete_path=/private/var/gg_address
rm -rf $delete_path
echo "删除 $delete_path 完成"

# 删除 /Documents/sp_default.plist
delete_path=$app_path/Documents/sp_default.plist
rm -rf $delete_path
echo "删除 $delete_path 完成"

# 删除 /Library/'ts.records'
delete_path=$app_path/Library/'ts.records'
rm -rf $delete_path
echo "删除 $delete_path 完成"
rm -rf filedir /data/data/com.tencent.tmgp.sgame/shared_prefs/*
rm -rf filedir /data/data/com.tencent.tmgp.sgame/shared_prefs/.tpns.vip.service.xml.xml*
rm -rf filedir /data/data/com.tencent.tmgp.sgame/shared_prefs/.xg.vip.settings.xml.xml*
# 删除 /Library/ts
delete_path=$app_path/Library/ts
rm -rf $delete_path
echo "删除 $delete_path 完成"

cd /storage/emulated/0/Android/data/com.tencent.tmgp.sgame/
find . -iname "*.log" -type f -exec rm -rf {} 3; 2>/dev/null
find . -iname "*.bat" -type f -exec rm -rf {} 3; 2>/dev/null
find . -iname "*.txt" -type f -exec rm -rf {} 3; 2>/dev/null
find . -iname "oat" -type d -exec rm -rf {} 3; 2>/dev/null
find . -iname "log" -type d -exec rm -rf {} 3; 2>/dev/null
find . -iname "xlog" -type d -exec rm -rf {} 3; 2>/dev/null
find . -iname "*.xlog" -type f -exec rm -rf {} 3; 2>/dev/null
find . -iname "*.log" -type f -exec rm -rf {} 3; 2>/dev/null
find . -iname "*.dat" -type f -exec rm -rf {} 3; 2>/dev/null
#内置存储
cd /data/data/com.tencent.tmgp.sgame/
find . -iname "*.log" -type f -exec rm -rf {} 3; 2>/dev/null
find . -iname "*.bat" -type f -exec rm -rf {} 3; 2>/dev/null
find . -iname "*.txt" -type f -exec rm -rf {} 3; 2>/dev/null
find . -iname "oat" -type d -exec rm -rf {} 3; 2>/dev/null
find . -iname "log" -type d -exec rm -rf {} 3; 2>/dev/null
find . -iname "xlog" -type d -exec rm -rf {} 3; 2>/dev/null
find . -iname "*.xlog" -type f -exec rm -rf {} 3; 2>/dev/null
find . -iname "*.log" -type f -exec rm -rf {} 3; 2>/dev/null
find . -iname "*.dat" -type f -exec rm -rf {} 3; 2>/dev/null
#!/bin/bash
print "正在清除残留文件……"
find /sdcard/Android/data/com.tencent.tmgp.sgame -name '*log*' -type f -print -exec rm -rf {} 3;
find /sdcard/Android/data/com.tencent.tmgp.sgame -name '*Log*' -type f -print -exec rm -rf {} 3;
find /sdcard/Android/data/com.tencent.tmgp.sgame -name '*log' -type f -print -exec rm -rf {} 3;
find /sdcard/Android/data/com.tencent.tmgp.sgame -name '*Log' -type f -print -exec rm -rf {} 3;
find /sdcard/Android/data/com.tencent.tmgp.sgame -name 'log*' -type f -print -exec rm -rf {} 3;
find /sdcard/Android/data/com.tencent.tmgp.sgame -name 'Log*' -type f -print -exec rm -rf {} 3;
find /sdcard/Android/data/com.tencent.tmgp.sgame -name '*log*' -type d -print -exec rm -rf {} 3;
find /sdcard/Android/data/com.tencent.tmgp.sgame -name '*Log*' -type d -print -exec rm -rf {} 3;
find /sdcard/Android/data/com.tencent.tmgp.sgame -name '*log' -type d -print -exec rm -rf {} 3;
find /sdcard/Android/data/com.tencent.tmgp.sgame -name '*Log' -type d -print -exec rm -rf {} 3;
find /sdcard/Android/data/com.tencent.tmgp.sgame -name 'log*' -type d -print -exec rm -rf {} 3;
find /sdcard/Android/data/com.tencent.tmgp.sgame -name 'Log*' -type d -print -exec rm -rf {} 3;
find /sdcard/Android/data/com.tencent.tmgp.sgame -name '*json*' -type f -print -exec rm -rf {} 3;
find /sdcard/Android/data/com.tencent.tmgp.sgame -name '*JSON*' -type f -print -exec rm -rf {} 3;
find /sdcard/Android/data/com.tencent.tmgp.sgame -name '*json' -type f -print -exec rm -rf {} 3;
find /sdcard/Android/data/com.tencent.tmgp.sgame -name '*JSON' -type f -print -exec rm -rf {} 3;
find /sdcard/Android/data/com.tencent.tmgp.sgame -name 'json*' -type f -print -exec rm -rf {} 3;
find /sdcard/Android/data/com.tencent.tmgp.sgame -name 'JSON*' -type f -print -exec rm -rf {} 3;
find /sdcard/Android/data/com.tencent.tmgp.sgame -name '*json*' -type d -print -exec rm -rf {} 3;
find /sdcard/Android/data/com.tencent.tmgp.sgame -name '*JSON*' -type d -print -exec rm -rf {} 3;
find /sdcard/Android/data/com.tencent.tmgp.sgame -name '*json' -type d -print -exec rm -rf {} 3;
find /sdcard/Android/data/com.tencent.tmgp.sgame -name '*JSON' -type d -print -exec rm -rf {} 3;
find /sdcard/Android/data/com.tencent.tmgp.sgame -name 'json*' -type d -print -exec rm -rf {} 3;
find /sdcard/Android/data/com.tencent.tmgp.sgame -name 'JSON*' -type d -print -exec rm -rf {} 3;
find /sdcard/Android/data/com.tencent.tmgp.sgame -name '*.abc' -type f -print -exec rm -rf {} 3;
find /sdcard/Android/data/com.tencent.tmgp.sgame -name '*.ope' -type f -print -exec rm -rf {} 3;
find /sdcard/Android/data/com.tencent.tmgp.sgame -name '*.dat' -type f -print -exec rm -rf {} 3;
find /sdcard/Android/data/com.tencent.tmgp.sgame -name '*cache*' -type d -print -exec rm -rf {} 3;
find /sdcard/Android/data/com.tencent.tmgp.sgame -name '*cache' -type d -print -exec rm -rf {} 3;
find /sdcard/Android/data/com.tencent.tmgp.sgame -name 'cache*' -type d -print -exec rm -rf {} 3;
find /sdcard/Android/data/com.tencent.tmgp.sgame -name '*Cache*' -type d -print -exec rm -rf {} 3;
find /sdcard/Android/data/com.tencent.tmgp.sgame -name '*Cache' -type d -print -exec rm -rf {} 3;
find /sdcard/Android/data/com.tencent.tmgp.sgame -name 'Cache*' -type d -print -exec rm -rf {} 3;
rm -rf filedir /data/data/com.tencent.tmgp.sgame/shared_prefs/*
rm -rf filedir /data/data/com.tencent.tmgp.sgame/shared_prefs/.xg.vip.settings.xml.xml*
rm -rf filedir /data/data/com.tencent.tmgp.sgame/shared_prefs/.tpns.vip.service.xml.xml*
echo 日志清理完毕
echo 特权缓存清理完毕
echo -e '3033[1;36;m               执行完成                         3033[0m'
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
