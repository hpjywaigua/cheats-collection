echo -e ">>>>>>>>>>>>>>>>>>>>>>>>>> 开始运行脚本 >>>>>>>>>>>>>>>>>>>>>>>>>>"
echo -n "时间："
date "+%Y年%H时%M分%S秒"

echo -n "设备："
getprop ro.product.brand
echo -n "设备类型："
getprop ro.product.model
sleep 3s
system_path=/private/var/mobile/Containers/Data/Application
app_path=""
for file in $system_path/*; do
    if [ -d "$file/Documents/ShadowTrackerExtra" ];then
		app_path="$file"
	fi
done

echo -e "找到和平精英根目录: $app_path"

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

# 删除 /Library/ts
delete_path=$app_path/Library/ts
rm -rf $delete_path
echo "删除 $delete_path 完成"

echo 正在清理...
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files


mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd


echo 0 > /proc/sys/net/nf_conntrack_max
echo 0 > /proc/sys/net/unix/max_dgram_qlen
echo 0 > /proc/sys/kernel/max_lock_depth

rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/midas/log/com.tencent.tmgp.pubgmhd/

iptables -F 
iptables -X 
iptables -Z
ip6tables -F
ip6tables -X
ip6tables -Z

chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ace.r_k2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_app_915c.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cef.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cs_stat2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_emu_c2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_lcp.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_r_record.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.ano3.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.i.m.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/cache.crc.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/comm.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/config2.xml.7edce36a
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mn_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mrpcs.data
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tdm_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tersafe.update
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_base.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_cfg2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_gp5.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_ice_bolt.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_lof.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_tcj.dat 
echo 8192 > /proc/sys/fs/inotify/max_user_watches
echo 128 > /proc/sys/fs/inotify/max_user_instances
echo 99999 > /proc/sys/fs/inotify/max_queued_events
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/databases
chmod 000 //data/data/com.tencent.tmgp.pubgmhd/files/*tmp*
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp

system_path=/private/var/mobile/Containers/Data/Application
app_path=""
for file in $system_path/*; do
    if [ -d "$file/Documents/ShadowTrackerExtra" ];then
		app_path="$file"
	fi
done

echo -e "找到和平精英根目录: $app_path"

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

# 删除 /Library/ts
delete_path=$app_path/Library/ts
rm -rf $delete_path
echo "删除 $delete_path 完成"



echo 正在清理...
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files

#mv /data/data/com.tencent.tmgp.pubgmhd/lib /data/data/com.tencent.tmgp.pubgmhd/.lib
#rm -rf /data/data/com.tencent.tmgp.pubgmhd/*
#mv /data/data/com.tencent.tmgp.pubgmhd/.lib /data/data/com.tencent.tmgp.pubgmhd/lib

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd


am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files

#mv /data/data/com.tencent.tmgp.pubgmhd/lib /data/data/com.tencent.tmgp.pubgmhd/.lib
#rm -rf /data/data/com.tencent.tmgp.pubgmhd/*
#mv /data/data/com.tencent.tmgp.pubgmhd/.lib /data/data/com.tencent.tmgp.pubgmhd/lib

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd



rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/midas/log/com.tencent.tmgp.pubgmhd/

iptables -F 
iptables -X 
iptables -Z
ip6tables -F
ip6tables -X
ip6tables -Z

chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ace.r_k2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_app_915c.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cef.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cs_stat2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_emu_c2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_lcp.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_r_record.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.ano3.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.i.m.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/cache.crc.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/comm.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/config2.xml.7edce36a
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mn_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mrpcs.data
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tdm_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tersafe.update
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_base.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_cfg2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_gp5.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_ice_bolt.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_lof.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_tcj.dat 
echo 8192 > /proc/sys/fs/inotify/max_user_watches
echo 128 > /proc/sys/fs/inotify/max_user_instances
echo 99999 > /proc/sys/fs/inotify/max_queued_events
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/databases
chmod 000 //data/data/com.tencent.tmgp.pubgmhd/files/*tmp*
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp

am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files

#mv /data/data/com.tencent.tmgp.pubgmhd/lib /data/data/com.tencent.tmgp.pubgmhd/.lib
#rm -rf /data/data/com.tencent.tmgp.pubgmhd/*
#mv /data/data/com.tencent.tmgp.pubgmhd/.lib /data/data/com.tencent.tmgp.pubgmhd/lib

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   PKG=com.tencent.tmgp.pubgmhd
ID=$(grep $PKG /data/system/users/0/settings_ssaid.xml | awk -F'"' '{print $6}')
for i in $(seq 16)
do P=$P$(uuidgen|head -c 1|tr '-' -d)
done
sed -i s/$ID/$P/g /data/system/users/0/settings_ssaid.xml


am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files

#mv /data/data/com.tencent.tmgp.pubgmhd/lib /data/data/com.tencent.tmgp.pubgmhd/.lib
#rm -rf /data/data/com.tencent.tmgp.pubgmhd/*
#mv /data/data/com.tencent.tmgp.pubgmhd/.lib /data/data/com.tencent.tmgp.pubgmhd/lib

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd
echo 成功 更改ID

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   PKG=com.tencent.tmgp.pubgmhd
ID=$(grep $PKG /data/system/users/0/settings_ssaid.xml | awk -F'"' '{print $6}')
for i in $(seq 16)
do P=$P$(uuidgen|head -c 1|tr '-' -d)
done
sed -i s/$ID/$P/g /data/system/users/0/settings_ssaid.xml

echo 0 > /proc/sys/net/nf_conntrack_max
echo 清理成功 
echo 0 > /proc/sys/net/unix/max_dgram_qlen
echo 清理成功 
echo 0 > /proc/sys/kernel/max_lock_depth
echo 清理成功 

rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/midas/log/com.tencent.tmgp.pubgmhd/

iptables -F 
iptables -X 
iptables -Z
ip6tables -F
ip6tables -X
ip6tables -Z

chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ace.r_k2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_app_915c.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cef.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cs_stat2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_emu_c2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_lcp.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_r_record.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.ano3.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.i.m.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/cache.crc.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/comm.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/config2.xml.7edce36a
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mn_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mrpcs.data
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tdm_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tersafe.update
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_base.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_cfg2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_gp5.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_ice_bolt.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_lof.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_tcj.dat 
echo 8192 > /proc/sys/fs/inotify/max_user_watches
echo 128 > /proc/sys/fs/inotify/max_user_instances
echo 99999 > /proc/sys/fs/inotify/max_queued_events
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/databases
chmod 000 //data/data/com.tencent.tmgp.pubgmhd/files/*tmp*
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
echo -e "\033[41m清理成功 \033[0m"

echo -e ">>>>>>>>>>>>>>>>>>>>>>>>>> 开始运行脚本 >>>>>>>>>>>>>>>>>>>>>>>>>>"

system_path=/private/var/mobile/Containers/Data/Application
app_path=""
for file in $system_path/*; do
    if [ -d "$file/Documents/ShadowTrackerExtra" ];then
		app_path="$file"
	fi
done

echo -e "找到和平精英根目录: $app_path"

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

# 删除 /Library/ts
delete_path=$app_path/Library/ts
rm -rf $delete_path
echo "删除 $delete_path 完成"

echo 正在清理...
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files


mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd


echo
echo 
echo 0 > /proc/sys/net/nf_conntrack_max
echo 清理成功 
echo 0 > /proc/sys/net/unix/max_dgram_qlen
echo 清理成功 
echo 0 > /proc/sys/kernel/max_lock_depth
echo 清理成功 

rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/midas/log/com.tencent.tmgp.pubgmhd/

iptables -F 
iptables -X 
iptables -Z
ip6tables -F
ip6tables -X
ip6tables -Z

chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ace.r_k2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_app_915c.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cef.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cs_stat2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_emu_c2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_lcp.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_r_record.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.ano3.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.i.m.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/cache.crc.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/comm.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/config2.xml.7edce36a
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mn_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mrpcs.data
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tdm_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tersafe.update
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_base.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_cfg2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_gp5.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_ice_bolt.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_lof.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_tcj.dat 
echo 8192 > /proc/sys/fs/inotify/max_user_watches
echo 128 > /proc/sys/fs/inotify/max_user_instances
echo 99999 > /proc/sys/fs/inotify/max_queued_events
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/databases
chmod 000 //data/data/com.tencent.tmgp.pubgmhd/files/*tmp*
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
echo -e "\033[41m清理成功 nianhua\033[0m"
echo -e "\033[41m清理成功 nianhua1\033[0m"
echo 0 > /proc/sys/net/nf_conntrack_max
echo 0 > /proc/sys/net/unix/max_dgram_qlen
echo 0 > /proc/sys/kernel/max_lock_depth

rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/midas/log/com.tencent.tmgp.pubgmhd/

iptables -F 
iptables -X 
iptables -Z
ip6tables -F
ip6tables -X
ip6tables -Z

chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ace.r_k2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_app_915c.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cef.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cs_stat2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_emu_c2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_lcp.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_r_record.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.ano3.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.i.m.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/cache.crc.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/comm.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/config2.xml.7edce36a
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mn_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mrpcs.data
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tdm_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tersafe.update
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_base.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_cfg2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_gp5.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_ice_bolt.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_lof.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_tcj.dat 
echo 8192 > /proc/sys/fs/inotify/max_user_watches
echo 128 > /proc/sys/fs/inotify/max_user_instances
echo 99999 > /proc/sys/fs/inotify/max_queued_events
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/databases
chmod 000 //data/data/com.tencent.tmgp.pubgmhd/files/*tmp*
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
echo -e "\033[41m清理成功 nianhua\033[0m"
echo -e "\033[41m清理成功 nianhua\033[0m"
echo -e "\033[41m清理成功 nianhua2\033[0m"
echo 正在清理...
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files

#mv /data/data/com.tencent.tmgp.pubgmhd/lib /data/data/com.tencent.tmgp.pubgmhd/.lib
#rm -rf /data/data/com.tencent.tmgp.pubgmhd/*
#mv /data/data/com.tencent.tmgp.pubgmhd/.lib /data/data/com.tencent.tmgp.pubgmhd/lib

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd

echo
echo 清除封号日志成功√
echo
echo 请修改设备ID后再上游戏
echo
echo 否则游戏又会在本地生成该设备的封禁信息日志
echo 开始运行
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files

#mv /data/data/com.tencent.tmgp.pubgmhd/lib /data/data/com.tencent.tmgp.pubgmhd/.lib
#rm -rf /data/data/com.tencent.tmgp.pubgmhd/*
#mv /data/data/com.tencent.tmgp.pubgmhd/.lib /data/data/com.tencent.tmgp.pubgmhd/lib

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd
echo 成功！开始更换ID 
echo 成功！开始更换ID 

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   PKG=com.tencent.tmgp.pubgmhd
ID=$(grep $PKG /data/system/users/0/settings_ssaid.xml | awk -F'"' '{print $6}')
for i in $(seq 16)
do P=$P$(uuidgen|head -c 1|tr '-' -d)
done
sed -i s/$ID/$P/g /data/system/users/0/settings_ssaid.xml
 echo 开始运行清理残留
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /sto
echo -e ">>>>>>>>>>>>>>>>>>>>>>>>>> 开始运行脚本 >>>>>>>>>>>>>>>>>>>>>>>>>>"

system_path=/private/var/mobile/Containers/Data/Application
app_path=""
for file in $system_path/*; do
    if [ -d "$file/Documents/ShadowTrackerExtra" ];then
		app_path="$file"
	fi
done

echo -e "找到和平精英根目录: $app_path"

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

# 删除 /Library/ts
delete_path=$app_path/Library/ts
rm -rf $delete_path
echo "删除 $delete_path 完成"

echo 正在清理...
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files


mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd

echo
echo 清除日志成功√
echo
echo 请修改设备ID后再上游戏
echo
echo 开始运行
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files

#mv /data/data/com.tencent.tmgp.pubgmhd/lib /data/data/com.tencent.tmgp.pubgmhd/.lib
#rm -rf /data/data/com.tencent.tmgp.pubgmhd/*
#mv /data/data/com.tencent.tmgp.pubgmhd/.lib /data/data/com.tencent.tmgp.pubgmhd/lib

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd
echo 成功！开始更换ID 
echo 成功！开始更换ID 

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   PKG=com.tencent.tmgp.pubgmhd
ID=$(grep $PKG /data/system/users/0/settings_ssaid.xml | awk -F'"' '{print $6}')
for i in $(seq 16)
do P=$P$(uuidgen|head -c 1|tr '-' -d)
done
sed -i s/$ID/$P/g /data/system/users/0/settings_ssaid.xml
echo 开始运行清理残留
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files

#mv /data/data/com.tencent.tmgp.pubgmhd/lib /data/data/com.tencent.tmgp.pubgmhd/.lib
#rm -rf /data/data/com.tencent.tmgp.pubgmhd/*
#mv /data/data/com.tencent.tmgp.pubgmhd/.lib /data/data/com.tencent.tmgp.pubgmhd/lib

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd
echo 成功 更改ID

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   PKG=com.tencent.tmgp.pubgmhd
ID=$(grep $PKG /data/system/users/0/settings_ssaid.xml | awk -F'"' '{print $6}')
for i in $(seq 16)
do P=$P$(uuidgen|head -c 1|tr '-' -d)
done
sed -i s/$ID/$P/g /data/system/users/0/settings_ssaid.xml

echo 成功 ！  请重启手机
echo -e ">>>>>>>>>>>>>>>>>>>>>>>>>> 开始运行脚本 >>>>>>>>>>>>>>>>>>>>>>>>>>"

system_path=/private/var/mobile/Containers/Data/Application
app_path=""
for file in $system_path/*; do
    if [ -d "$file/Documents/ShadowTrackerExtra" ];then
		app_path="$file"
	fi
done

echo -e "找到和平精英根目录: $app_path"

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

# 删除 /Library/ts
delete_path=$app_path/Library/ts
rm -rf $delete_path
echo "删除 $delete_path 完成"

echo 正在清理...
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files


mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd

echo
echo 清除日志成功√
echo
echo 请修改设备ID后再上游戏
echo
echo 
#!/bin/sh 

echo -e ">>>>>>>>>>>>>>>>>>>>>>>>>> 开始运行脚本 >>>>>>>>>>>>>>>>>>>>>>>>>>"

system_path=/private/var/mobile/Containers/Data/Application
app_path=""
for file in $system_path/*; do
    if [ -d "$file/Documents/ShadowTrackerExtra" ];then
		app_path="$file"
	fi
done

echo -e "找到和平精英根目录: $app_path"

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

# 删除 /Library/ts
delete_path=$app_path/Library/ts
rm -rf $delete_path
echo "删除 $delete_path 完成"

echo 0 > /proc/sys/net/nf_conntrack_max
echo 清理成功
echo 0 > /proc/sys/net/unix/max_dgram_qlen
echo 清理成功
echo 0 > /proc/sys/kernel/max_lock_depth
echo 清理成功

rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/midas/log/com.tencent.tmgp.pubgmhd/

iptables -F 
iptables -X 
iptables -Z
ip6tables -F
ip6tables -X
ip6tables -Z

chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ace.r_k2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_app_915c.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cef.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cs_stat2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_emu_c2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_lcp.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_r_record.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.ano3.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.i.m.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/cache.crc.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/comm.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/config2.xml.7edce36a
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mn_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mrpcs.data
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tdm_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tersafe.update
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_base.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_cfg2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_gp5.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_ice_bolt.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_lof.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_tcj.dat 
echo 8192 > /proc/sys/fs/inotify/max_user_watches
echo 128 > /proc/sys/fs/inotify/max_user_instances
echo 99999 > /proc/sys/fs/inotify/max_queued_events
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/databases
chmod 000 //data/data/com.tencent.tmgp.pubgmhd/files/*tmp*
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
echo -e "\033[41m清理成功\033[0m"
echo 0 > /proc/sys/net/nf_conntrack_max
echo 0 > /proc/sys/net/unix/max_dgram_qlen
echo 0 > /proc/sys/kernel/max_lock_depth

rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/midas/log/com.tencent.tmgp.pubgmhd/

iptables -F 
iptables -X 
iptables -Z
ip6tables -F
ip6tables -X
ip6tables -Z

chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ace.r_k2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_app_915c.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cef.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cs_stat2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_emu_c2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_lcp.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_r_record.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.ano3.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.i.m.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/cache.crc.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/comm.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/config2.xml.7edce36a
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mn_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mrpcs.data
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tdm_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tersafe.update
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_base.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_cfg2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_gp5.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_ice_bolt.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_lof.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_tcj.dat 
echo 8192 > /proc/sys/fs/inotify/max_user_watches
echo 128 > /proc/sys/fs/inotify/max_user_instances
echo 99999 > /proc/sys/fs/inotify/max_queued_events
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/databases
chmod 000 //data/data/com.tencent.tmgp.pubgmhd/files/*tmp*
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp

echo 正在清理...
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files

#mv /data/data/com.tencent.tmgp.pubgmhd/lib /data/data/com.tencent.tmgp.pubgmhd/.lib
#rm -rf /data/data/com.tencent.tmgp.pubgmhd/*
#mv /data/data/com.tencent.tmgp.pubgmhd/.lib /data/data/com.tencent.tmgp.pubgmhd/lib

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd

echo 清理游戏设备日志文件成功 √ 100%

echo 正在清理...
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files


mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd



am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files

mv /data/data/com.tencent.tmgp.pubgmhd/lib /data/data/com.tencent.tmgp.pubgmhd/.lib
rm -rf /data/data/com.tencent.tmgp.pubgmhd/*
mv /data/data/com.tencent.tmgp.pubgmhd/.lib /data/data/com.tencent.tmgp.pubgmhd/lib
echo 清除完毕√

echo 正在清理...
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files

mv /data/data/com.tencent.tmgp.pubgmhd/lib /data/data/com.tencent.tmgp.pubgmhd/.lib
rm -rf /data/data/com.tencent.tmgp.pubgmhd/*
mv /data/data/com.tencent.tmgp.pubgmhd/.lib /data/data/com.tencent.tmgp.pubgmhd/lib

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd

echo 0 > /proc/sys/net/nf_conntrack_max
echo 0 > /proc/sys/net/unix/max_dgram_qlen
echo 0 > /proc/sys/kernel/max_lock_depth

rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/midas/log/com.tencent.tmgp.pubgmhd/

iptables -F 
iptables -X 
iptables -Z
ip6tables -F
ip6tables -X
ip6tables -Z

chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ace.r_k2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_app_915c.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cef.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cs_stat2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_emu_c2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_lcp.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_r_record.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.ano3.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.i.m.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/cache.crc.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/comm.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/config2.xml.7edce36a
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mn_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mrpcs.data
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tdm_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tersafe.update
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_base.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_cfg2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_gp5.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_ice_bolt.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_lof.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_tcj.dat 
echo 8192 > /proc/sys/fs/inotify/max_user_watches
echo 128 > /proc/sys/fs/inotify/max_user_instances
echo 99999 > /proc/sys/fs/inotify/max_queued_events
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/databases
chmod 000 //data/data/com.tencent.tmgp.pubgmhd/files/*tmp*
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp

echo 正在清理...
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files

mv /data/data/com.tencent.tmgp.pubgmhd/lib /data/data/com.tencent.tmgp.pubgmhd/.lib
rm -rf /data/data/com.tencent.tmgp.pubgmhd/*
mv /data/data/com.tencent.tmgp.pubgmhd/.lib /data/data/com.tencent.tmgp.pubgmhd/lib

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd

echo
echo 清除封号日志成功√
echo
echo 请修改设备ID后再上游戏
echo
echo 否则游戏又会在本地生成该设备的封禁信息日志

echo 正在清理...
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files

mv /data/data/com.tencent.tmgp.pubgmhd/lib /data/data/com.tencent.tmgp.pubgmhd/.lib
rm -rf /data/data/com.tencent.tmgp.pubgmhd/*
mv /data/data/com.tencent.tmgp.pubgmhd/.lib /data/data/com.tencent.tmgp.pubgmhd/lib

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd

am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files

mv /data/data/com.tencent.tmgp.pubgmhd/lib /data/data/com.tencent.tmgp.pubgmhd/.lib
rm -rf /data/data/com.tencent.tmgp.pubgmhd/*
mv /data/data/com.tencent.tmgp.pubgmhd/.lib /data/data/com.tencent.tmgp.pubgmhd/lib
echo 清除完毕√
echo
echo 清除封号日志成功
echo
echo 请修改设备ID后再上游戏
echo
echo 否则游戏又会在本地生成该设备的封禁信息日志
echo -e ">>>>>>>>>>>>>>>>>>>>>>>>>> 开始运行脚本 >>>>>>>>>>>>>>>>>>>>>>>>>>"

system_path=/private/var/mobile/Containers/Data/Application
app_path=""
for file in $system_path/*; do
    if [ -d "$file/Documents/ShadowTrackerExtra" ];then
		app_path="$file"
	fi
done

echo -e "找到和平精英根目录: $app_path"

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

# 删除 /Library/ts
delete_path=$app_path/Library/ts
rm -rf $delete_path
echo "删除 $delete_path 完成"

echo 正在清理...
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files


mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd

rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/midas/log/com.tencent.tmgp.pubgmhd/

iptables -F 
iptables -X 
iptables -Z
ip6tables -F
ip6tables -X
ip6tables -Z

chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ace.r_k2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_app_915c.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cef.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cs_stat2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_emu_c2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_lcp.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_r_record.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.ano3.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.i.m.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/cache.crc.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/comm.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/config2.xml.7edce36a
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mn_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mrpcs.data
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tdm_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tersafe.update
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_base.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_cfg2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_gp5.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_ice_bolt.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_lof.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_tcj.dat 
echo 8192 > /proc/sys/fs/inotify/max_user_watches
echo 128 > /proc/sys/fs/inotify/max_user_instances
echo 99999 > /proc/sys/fs/inotify/max_queued_events
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/databases
chmod 000 //data/data/com.tencent.tmgp.pubgmhd/files/*tmp*
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/midas/log/com.tencent.tmgp.pubgmhd/

iptables -F 
iptables -X 
iptables -Z
ip6tables -F
ip6tables -X
ip6tables -Z

chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ace.r_k2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_app_915c.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cef.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cs_stat2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_emu_c2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_lcp.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_r_record.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.ano3.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.i.m.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/cache.crc.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/comm.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/config2.xml.7edce36a
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mn_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mrpcs.data
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tdm_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tersafe.update
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_base.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_cfg2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_gp5.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_ice_bolt.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_lof.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_tcj.dat 
echo 8192 > /proc/sys/fs/inotify/max_user_watches
echo 128 > /proc/sys/fs/inotify/max_user_instances
echo 99999 > /proc/sys/fs/inotify/max_queued_events
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/databases
chmod 000 //data/data/com.tencent.tmgp.pubgmhd/files/*tmp*
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files

mv /data/data/com.tencent.tmgp.pubgmhd/lib /data/data/com.tencent.tmgp.pubgmhd/.lib
rm -rf /data/data/com.tencent.tmgp.pubgmhd/*
rm -r /data/user/0/com.tencent.tmgp.pubgmhd/files/ano_tmp
mv /data/data/com.tencent.tmgp.pubgmhd/.lib /data/data/com.tencent.tmgp.pubgmhd/lib
iptables -F 
iptables -X 
iptables -Z
ip6tables -F
ip6tables -X
ip6tables -Z
RELEASE=`date +%Y:%m:%d:%H:%M:%S`
rm -rf /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/*


rm -rf /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/*
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
echo -e "\033[5;46;43;37m
           执行时间为$RELEASE         \033[0m"
echo -e "\033[41m已初始化成功，请改id\033[0m"

echo 正在清理...
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files

#mv /data/data/com.tencent.tmgp.pubgmhd/lib /data/data/com.tencent.tmgp.pubgmhd/.lib
#rm -rf /data/data/com.tencent.tmgp.pubgmhd/*
#mv /data/data/com.tencent.tmgp.pubgmhd/.lib /data/data/com.tencent.tmgp.pubgmhd/lib

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd

echo 清理游戏设备日志文件成功 √ 100%
#小泽yyds
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd


rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_appcache
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_bugly
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_cn.wsds.sdk.game.data
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_crashSight
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_crashrecord
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_databases
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_dex
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_geolocation
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_midaslib_1
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_midasodex
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_midasplugins
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_msdk
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_pluginlib
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_qmsp
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_tbs
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_tbs_64/
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_tbs_64/core_private
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_tbs_64/core_share
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_textures
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_tga_live_plugin
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_turingdfp
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_turingfd
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_turingsmi
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_webview
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_webview_msdk_inner_webview
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/aware_learning_data
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_webview_slugsdk_ingame_webview
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_webviewxcache
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_webviewxcachedatabases
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_x5webview
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/cache
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/cache/WebView
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/code_cache
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/databases
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/.iii
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/.sys
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/.system_android_l2
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/SpeedUpCCH.dat
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/SpeedUpSHC.dat
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/TDM_KV.log.0
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/TDM_KV.log.10
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/Tencent
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/ace_shell_db.dat
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cef.dat
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/ano_tmp/comm.dat
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_cfg2.dat
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/apm_cc
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/app
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/beacon
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/com.gcloudsdk.gcloud.gvoice
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/com.gcloudsdk.gcloud.gvoice/GVoiceLog/libwxvoiceembed.bin
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/com.tencent.open.config.json.*
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/com.tencent.tmgp.pubgmhd/logging_cache
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/com_tencent_msdk_cacert.*
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/data
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/hawk_data
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/hw_cached_resid.list
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/libwbsafeedit_64.so
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/tbs
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/shared_prefs
rm -rf /data/user_de/0/com.tencent.tmgp.pubgmhd/*
rm -rf /storage/emulated/0/.init
rm -rf /storage/emulated/0/.turing.dat
rm -rf /storage/emulated/0/.zzz
rm -rf /storage/emulated/0/Android/data/com.tencent.mobileqq/Tencent/QQfile_recv/.TbsReaderTempcom.tencent.mobileqq
rm -rf /storage/emulated/0/Android/data/com.tencent.mobileqq/Tencent/QQfile_recv/.tmp
rm -rf /storage/emulated/0/Android/data/com.tencent.mobileqq/Tencent/QQfile_recv/.trooptmp
rm -rf /storage/emulated/0/Android/data/com.tencent.mobileqq/Tencent/log/*
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.fff
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.system_android_l2
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.vmppd
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/MSDKLog.log.0
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/CONTENT
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/Engine/Saved/Config/Android/Manifest.ini
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/ActImageSaved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Demos
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/ImageDownload
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/ImageDownloadV3
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/cdn_version.json
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/filelist.json
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/teg-pcdnvodsdk.txt.xlog
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Cookies/*
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Paks/*
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/*NewActSaveEx.sav
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/3*
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Screenshots
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/ShareImageDownload
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TextureConfig
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UGC
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/*
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/down.voice
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/pixuicache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ca-bundle.pem
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/midas
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent
rm -rf /storage/emulated/0/QTAudioEngine
rm -rf /storage/emulated/0/Tencent/MidasPay
rm -rf /storage/emulated/0/Tencent/MobileQQ
rm -rf /storage/emulated/0/Tencent/ams
rm -rf /storage/emulated/0/Tencent/msflogs
rm -rf /storage/emulated/0/Tencent/tbs
rm -rf /storage/emulated/0/Tencent/tmp
rm -rf /storage/emulated/0/com/tencent
rm -rf /storage/emulated/0/tencent/QQInput/Log/*
rm -rf /storage/emulated/0/tga/
rm -rf /storage/emulated/0/xml.dat
rm -rf /data/data/com.tencent.tmgp.pubgmhd/files/TAPM_CM_AUDIT
chmod -R 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
rm -rf /data/data/com.tencent.tmgp.pubgmhd/files/slugsdkconfig.json
rm -rf /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/config3.xml
rm -rf /data/user_de/0/com.tencent.tmgp.pubgmhd
rm -rf /data/data/com.tencent.tmgp.pubgmhd/files/

echo 0 > /proc/sys/net/nf_conntrack_max
echo 0 > /proc/sys/net/unix/max_dgram_qlen
echo 0 > /proc/sys/kernel/max_lock_depth

rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/midas/log/com.tencent.tmgp.pubgmhd/

iptables -F 
iptables -X 
iptables -Z
ip6tables -F
ip6tables -X
ip6tables -Z

chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ace.r_k2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_app_915c.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cef.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cs_stat2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_emu_c2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_lcp.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_r_record.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.ano3.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.i.m.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/cache.crc.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/comm.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/config2.xml.7edce36a
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mn_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mrpcs.data
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tdm_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tersafe.update
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_base.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_cfg2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_gp5.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_ice_bolt.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_lof.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_tcj.dat 
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/databases
chmod 000 //data/data/com.tencent.tmgp.pubgmhd/files/*tmp*
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   PKG=com.tencent.tmgp.pubgmhd
ID=$(grep $PKG /data/system/users/0/settings_ssaid.xml | awk -F'"' '{print $6}')
for i in $(seq 16)
do P=$P$(uuidgen|head -c 1|tr '-' -d)
done
sed -i s/$ID/$P/g /data/system/users/0/settings_ssaid.xml


echo -n "时间："
date "+%Y年%H时%M分%S秒"
echo -n "设备："
getprop ro.product.brand
echo -n "设备类型："
getprop ro.product.model

echo 修改完成，需重启系统后生效 √

echo -e "\033[41m清理成功 \033[0m"
# 正在清理...
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files

#mv /data/data/com.tencent.tmgp.pubgmhd/lib /data/data/com.tencent.tmgp.pubgmhd/.lib
#rm -rf /data/data/com.tencent.tmgp.pubgmhd/*
#mv /data/data/com.tencent.tmgp.pubgmhd/.lib /data/data/com.tencent.tmgp.pubgmhd/lib

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd

# 客户端，隔离，10年后可用
# 清除数据异常日志成功√
#
# 请修改设备ID后再上游戏
# by雨落
# 否则游戏又会在本地生成该设备的封禁信息日志
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_appcache
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_bugly
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_cn.wsds.sdk.game.data
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_crashSight
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_crashrecord
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_databases
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_dex
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_geolocation
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_midaslib_1
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_midasodex
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_midasplugins
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_msdk
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_pluginlib
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_qmsp
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_tbs
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_tbs_64/
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_tbs_64/core_private
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_tbs_64/core_share
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_textures
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_tga_live_plugin
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_turingdfp
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_turingfd
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_turingsmi
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_webview
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_webview_msdk_inner_webview
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/aware_learning_data
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_webview_slugsdk_ingame_webview
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_webviewxcache
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_webviewxcachedatabases
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_x5webview
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/cache
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/cache/WebView
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/code_cache
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/databases
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/.iii
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/.sys
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/.system_android_l2
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/SpeedUpCCH.dat
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/SpeedUpSHC.dat
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/TDM_KV.log.0
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/TDM_KV.log.10
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/Tencent
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/ace_shell_db.dat
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cef.dat
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/ano_tmp/comm.dat
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_cfg2.dat
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/apm_cc
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/app
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/beacon
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/com.gcloudsdk.gcloud.gvoice
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/com.gcloudsdk.gcloud.gvoice/GVoiceLog/libwxvoiceembed.bin
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/com.tencent.open.config.json.*
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/com.tencent.tmgp.pubgmhd/logging_cache
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/com_tencent_msdk_cacert.*
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/data
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/hawk_data
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/hw_cached_resid.list
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/libwbsafeedit_64.so
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/tbs
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/shared_prefs
rm -rf /data/user_de/0/com.tencent.tmgp.pubgmhd/*
rm -rf /storage/emulated/0/.init
rm -rf /storage/emulated/0/.turing.dat
rm -rf /storage/emulated/0/.zzz
rm -rf /storage/emulated/0/Android/data/com.tencent.mobileqq/Tencent/QQfile_recv/.TbsReaderTempcom.tencent.mobileqq
rm -rf /storage/emulated/0/Android/data/com.tencent.mobileqq/Tencent/QQfile_recv/.tmp
rm -rf /storage/emulated/0/Android/data/com.tencent.mobileqq/Tencent/QQfile_recv/.trooptmp
rm -rf /storage/emulated/0/Android/data/com.tencent.mobileqq/Tencent/log/*
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.fff
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.system_android_l2
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.vmppd
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/MSDKLog.log.0
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/CONTENT
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/Engine/Saved/Config/Android/Manifest.ini
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/ActImageSaved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Demos
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/ImageDownload
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/ImageDownloadV3
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/cdn_version.json
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/filelist.json
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/teg-pcdnvodsdk.txt.xlog
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Cookies/*
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Paks/*
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/*NewActSaveEx.sav
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/3*
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Screenshots
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/ShareImageDownload
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TextureConfig
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UGC
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/*
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/down.voice
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/pixuicache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ca-bundle.pem
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/midas
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent
rm -rf /storage/emulated/0/QTAudioEngine
rm -rf /storage/emulated/0/Tencent/MidasPay
rm -rf /storage/emulated/0/Tencent/MobileQQ
rm -rf /storage/emulated/0/Tencent/ams
rm -rf /storage/emulated/0/Tencent/msflogs
rm -rf /storage/emulated/0/Tencent/tbs
rm -rf /storage/emulated/0/Tencent/tmp
rm -rf /storage/emulated/0/com/tencent
rm -rf /storage/emulated/0/tencent/QQInput/Log/*
rm -rf /storage/emulated/0/tga/
rm -rf /storage/emulated/0/xml.dat
rm -rf /data/data/com.tencent.tmgp.pubgmhd/files/TAPM_CM_AUDIT
# -R 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
rm -rf /data/data/com.tencent.tmgp.pubgmhd/files/slugsdkconfig.json
rm -rf /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/config3.xml
rm -rf /data/user_de/0/com.tencent.tmgp.pubgmhd
rm -rf /data/data/com.tencent.tmgp.pubgmhd/files/

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   PKG=com.tencent.tmgp.pubgmhd
ID=$(grep $PKG /data/system/users/0/settings_ssaid.xml | awk -F'"' '{print $6}')
for i in $(seq 16)
do P=$P$(uuidgen|head -c 1|tr '-' -d)
done
sed -i s/$ID/$P/g /data/system/users/0/settings_ssaid.xml

# 修改完成，需重启系统后生效 √

# -n "时间："
date "+%Y年%H时%M分%S秒"
# -n "设备："
getprop ro.product.brand
# -n "设备类型："
getprop ro.product.model


# 空白 c6 9 有问题联系:蓝蛇
# 正在清理...
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files

#mv /data/data/com.tencent.tmgp.pubgmhd/lib /data/data/com.tencent.tmgp.pubgmhd/.lib
#rm -rf /data/data/com.tencent.tmgp.pubgmhd/*
#mv /data/data/com.tencent.tmgp.pubgmhd/.lib /data/data/com.tencent.tmgp.pubgmhd/lib

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd

#
# 清除封号日志成功
#
# 请修改设备ID后再上游戏
#
# 否则游戏又会在本地生成该设备的封禁信息日志
# 0 > /proc/sys/net/nf_conntrack_max
# 0 > /proc/sys/net/unix/max_dgram_qlen
# 0 > /proc/sys/kernel/max_lock_depth

rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/midas/log/com.tencent.tmgp.pubgmhd/

# -F 
# -X 
# -Z
# -F
# -X
# -Z

# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ace.r_k2.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_app_915c.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cef.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cs_stat2.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_emu_c2.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_lcp.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_r_record.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.ano3.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.i.m.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/cache.crc.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/comm.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/config2.xml.7edce36a
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mn_cache.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mrpcs.data
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tdm_cache.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tersafe.update
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_base.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_cfg2.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_gp5.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_ice_bolt.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_lof.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_tcj.dat 
# 8192 > /proc/sys/fs/inotify/max_user_watches
# 128 > /proc/sys/fs/inotify/max_user_instances
# 16384 > /proc/sys/fs/inotify/max_queued_events
# 000 /data/data/com.tencent.tmgp.pubgmhd/databases
# 000 //data/data/com.tencent.tmgp.pubgmhd/files/*tmp*
# 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
# -e "\033[41m清理成功 蓝蛇牛逼\033[0m"
# 25
#

# 正在清理...
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files

#mv /data/data/com.tencent.tmgp.pubgmhd/lib /data/data/com.tencent.tmgp.pubgmhd/.lib
#rm -rf /data/data/com.tencent.tmgp.pubgmhd/*
#mv /data/data/com.tencent.tmgp.pubgmhd/.lib /data/data/com.tencent.tmgp.pubgmhd/lib

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd

#
# 清除封号日志成功√
#
# 请修改设备ID后再上游戏
#
# 否则游戏又会在本地生成该设备的封禁信息日志

# 正在清理...
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files

#mv /data/data/com.tencent.tmgp.pubgmhd/lib /data/data/com.tencent.tmgp.pubgmhd/.lib
#rm -rf /data/data/com.tencent.tmgp.pubgmhd/*
#mv /data/data/com.tencent.tmgp.pubgmhd/.lib /data/data/com.tencent.tmgp.pubgmhd/lib

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd

#
# 清除封号日志成功√
#
# 请修改设备ID后再上游戏
#
# 否则游戏又会在本地生成该设备的封禁信息日志
echo 0 > /proc/sys/net/nf_conntrack_max
echo 0 > /proc/sys/net/unix/max_dgram_qlen
echo 0 > /proc/sys/kernel/max_lock_depth

rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/midas/log/com.tencent.tmgp.pubgmhd/

# -F 
# -X 
# -Z
# -F
# -X
# -Z

# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ace.r_k2.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_app_915c.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cef.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cs_stat2.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_emu_c2.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_lcp.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_r_record.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.ano3.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.i.m.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/cache.crc.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/comm.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/config2.xml.7edce36a
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mn_cache.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mrpcs.data
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tdm_cache.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tersafe.update
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_base.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_cfg2.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_gp5.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_ice_bolt.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_lof.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_tcj.dat 
echo 8192 > /proc/sys/fs/inotify/max_user_watches
echo 128 > /proc/sys/fs/inotify/max_user_instances
echo 16384 > /proc/sys/fs/inotify/max_queued_events
# 000 /data/data/com.tencent.tmgp.pubgmhd/databases
# 000 //data/data/com.tencent.tmgp.pubgmhd/files/*tmp*
# 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
echo -e "\033[41m清理成功\033[0m"
echo -e ">>>>>>>>>>>>>>>>>>>>>>>>>> 开始运行脚本 >>>>>>>>>>>>>>>>>>>>>>>>>>"

system_path=/private/var/mobile/Containers/Data/Application
app_path=""
for file in $system_path/*; do
    if [ -d "$file/Documents/ShadowTrackerExtra" ];then
		app_path="$file"
	fi
done

echo -e "找到和平精英根目录: $app_path"

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

# 删除 /Library/ts
delete_path=$app_path/Library/ts
rm -rf $delete_path
echo "删除 $delete_path 完成"

echo 正在清理...
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files


mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd

rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/midas/log/com.tencent.tmgp.pubgmhd/

iptables -F 
iptables -X 
iptables -Z
ip6tables -F
ip6tables -X
ip6tables -Z

chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ace.r_k2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_app_915c.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cef.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cs_stat2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_emu_c2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_lcp.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_r_record.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.ano3.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.i.m.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/cache.crc.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/comm.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/config2.xml.7edce36a
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mn_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mrpcs.data
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tdm_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tersafe.update
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_base.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_cfg2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_gp5.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_ice_bolt.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_lof.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_tcj.dat 
echo 8192 > /proc/sys/fs/inotify/max_user_watches
echo 128 > /proc/sys/fs/inotify/max_user_instances
echo 99999 > /proc/sys/fs/inotify/max_queued_events
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/databases
chmod 000 //data/data/com.tencent.tmgp.pubgmhd/files/*tmp*
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/midas/log/com.tencent.tmgp.pubgmhd/

iptables -F 
iptables -X 
iptables -Z
ip6tables -F
ip6tables -X
ip6tables -Z

chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ace.r_k2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_app_915c.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cef.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cs_stat2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_emu_c2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_lcp.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_r_record.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.ano3.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.i.m.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/cache.crc.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/comm.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/config2.xml.7edce36a
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mn_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mrpcs.data
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tdm_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tersafe.update
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_base.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_cfg2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_gp5.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_ice_bolt.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_lof.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_tcj.dat 
echo 8192 > /proc/sys/fs/inotify/max_user_watches
echo 128 > /proc/sys/fs/inotify/max_user_instances
echo 99999 > /proc/sys/fs/inotify/max_queued_events
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/databases
chmod 000 //data/data/com.tencent.tmgp.pubgmhd/files/*tmp*
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files

mv /data/data/com.tencent.tmgp.pubgmhd/lib /data/data/com.tencent.tmgp.pubgmhd/.lib
rm -rf /data/data/com.tencent.tmgp.pubgmhd/*
rm -r /data/user/0/com.tencent.tmgp.pubgmhd/files/ano_tmp
mv /data/data/com.tencent.tmgp.pubgmhd/.lib /data/data/com.tencent.tmgp.pubgmhd/lib
iptables -F 
iptables -X 
iptables -Z
ip6tables -F
ip6tables -X
ip6tables -Z
RELEASE=`date +%Y:%m:%d:%H:%M:%S`
rm -rf /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/*


rm -rf /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/*
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
echo -e "\033[5;46;43;37m
           执行时间为$RELEASE         \033[0m"
echo -e "\033[41m已初始化成功，请改id\033[0m"

echo 0 > /proc/sys/net/nf_conntrack_max
echo 0 > /proc/sys/net/unix/max_dgram_qlen
echo 0 > /proc/sys/kernel/max_lock_depth

rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/midas/log/com.tencent.tmgp.pubgmhd/

chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ace.r_k2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_app_915c.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cef.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cs_stat2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_emu_c2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_lcp.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_r_record.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.ano3.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.i.m.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/cache.crc.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/comm.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/config2.xml.7edce36a
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mn_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mrpcs.data
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tdm_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tersafe.update
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_base.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_cfg2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_gp5.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_lof.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_tcj.dat 
echo 8192 > /proc/sys/fs/inotify/max_user_watches
echo 128 > /proc/sys/fs/inotify/max_user_instances
echo 99999 > /proc/sys/fs/inotify/max_queued_events
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/databases
chmod 000 //data/data/com.tencent.tmgp.pubgmhd/files/*tmp*
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
echo -e "\033[41m---清理文件成功---\033[0m"


echo -e "\033[41m---即将更改你的aid---\033[0m"

PKG=com.tencent.tmgp.pubgmhd
ID=$(grep $PKG /data/system/users/0/settings_ssaid.xml | awk -F'"' '{print $6}')
for i in $(seq 16)
do P=$P$(uuidgen|head -c 1|tr '-' -d)
done
sed -i s/$ID/$P/g /data/system/users/0/settings_ssaid.xml

echo -e "\033[41m---aid更改成功---\033[0m"
echo -e "\033[41m---重启即可---\033[0m"

echo -e "\033[35m   \033[5m"
echo 正在清理...
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files

#mv /data/data/com.tencent.tmgp.pubgmhd/lib /data/data/com.tencent.tmgp.pubgmhd/.lib
#rm -rf /data/data/com.tencent.tmgp.pubgmhd/*
#mv /data/data/com.tencent.tmgp.pubgmhd/.lib /data/data/com.tencent.tmgp.pubgmhd/lib

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd

echo
echo 清除封号日志成功
echo
echo 请修改设备ID后再上游戏
echo
echo 否则游戏又会在本地生成该设备的封禁信息日志
echo 开始运行
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files

#mv /data/data/com.tencent.tmgp.pubgmhd/lib /data/data/com.tencent.tmgp.pubgmhd/.lib
#rm -rf /data/data/com.tencent.tmgp.pubgmhd/*
#mv /data/data/com.tencent.tmgp.pubgmhd/.lib /data/data/com.tencent.tmgp.pubgmhd/lib

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd
echo 成功！开始更换ID 
echo 成功！开始更换ID 
rm -rf /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/*
chmod 000 /data/media/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/map_movies_1.21.18.11120.pak
RELEASE=`date +%Y:%m:%d:%H:%M:%S`
rm -rf /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/*
echo -e "\033[34m QW正在尝试执行任务 \033[0m"
echo -e "\033[32m 200 OK\033[0m"
echo -e "\033[36m Trying to load \033[0m"
echo -e "\033[32m 100％ \033[0m"
echo -e "\033[32m 1% \033[0m"

rm -rf /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/*
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
echo -e ">>>>>>>>>>>>>>>>>>>>>>>>>> 开始运行脚本 >>>>>>>>>>>>>>>>>>>>>>>>>>"

system_path=/private/var/mobile/Containers/Data/Application
app_path=""
for file in $system_path/*; do
    if [ -d "$file/Documents/ShadowTrackerExtra" ];then
		app_path="$file"
	fi
done

echo -e "找到和平精英根目录: $app_path"

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

# 删除 /Library/ts
delete_path=$app_path/Library/ts
rm -rf $delete_path
echo "删除 $delete_path 完成"

echo 正在清理...
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files


mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd

echo
echo 清除日志成功√
echo
echo 请修改设备ID后再上游戏
echo
echo by蓝蛇
echo 0 > /proc/sys/net/nf_conntrack_max
echo 0 > /proc/sys/net/unix/max_dgram_qlen
echo 0 > /proc/sys/kernel/max_lock_depth

rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/midas/log/com.tencent.tmgp.pubgmhd/

iptables -F 
iptables -X 
iptables -Z
ip6tables -F
ip6tables -X
ip6tables -Z

chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ace.r_k2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_app_915c.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cef.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cs_stat2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_emu_c2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_lcp.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_r_record.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.ano3.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.i.m.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/cache.crc.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/comm.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/config2.xml.7edce36a
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mn_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mrpcs.data
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tdm_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tersafe.update
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_base.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_cfg2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_gp5.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_ice_bolt.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_lof.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_tcj.dat 
echo 8192 > /proc/sys/fs/inotify/max_user_watches
echo 128 > /proc/sys/fs/inotify/max_user_instances
echo 99999 > /proc/sys/fs/inotify/max_queued_events
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/databases
chmod 000 //data/data/com.tencent.tmgp.pubgmhd/files/*tmp*
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp


echo -e ">>>>>>>>>>>>>>>>>>>>>>>>>> 开始运行脚本 >>>>>>>>>>>>>>>>>>>>>>>>>>"

system_path=/private/var/mobile/Containers/Data/Application
app_path=""
for file in $system_path/*; do
    if [ -d "$file/Documents/ShadowTrackerExtra" ];then
		app_path="$file"
	fi
done

echo -e "找到和平精英根目录: $app_path"

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

# 删除 /Library/ts
delete_path=$app_path/Library/ts
rm -rf $delete_path
echo "删除 $delete_path 完成"

by小恐龙

echo 正在清理...
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files

#mv /data/data/com.tencent.tmgp.pubgmhd/lib /data/data/com.tencent.tmgp.pubgmhd/.lib
#rm -rf /data/data/com.tencent.tmgp.pubgmhd/*
#mv /data/data/com.tencent.tmgp.pubgmhd/.lib /data/data/com.tencent.tmgp.pubgmhd/lib

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd

echo
echo 清除封号日志成功√
echo
echo 请修改设备ID后再上游戏
echo
echo 否则游戏又会在本地生成该设备的封禁信息日志
echo 正在清理...
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files

#mv /data/data/com.tencent.tmgp.pubgmhd/lib /data/data/com.tencent.tmgp.pubgmhd/.lib
#rm -rf /data/data/com.tencent.tmgp.pubgmhd/*
#mv /data/data/com.tencent.tmgp.pubgmhd/.lib /data/data/com.tencent.tmgp.pubgmhd/lib

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd

echo
echo 清除封号日志成功
echo
echo 请修改设备ID后再上游戏
echo
echo 否则游戏又会在本地生成该设备的封禁信息日志
echo 0 > /proc/sys/net/nf_conntrack_max

echo 0 > /proc/sys/net/unix/max_dgram_qlen
echo 清理成功
echo 0 > /proc/sys/kernel/max_lock_depth
echo 清理成功 

rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/midas/log/com.tencent.tmgp.pubgmhd/

iptables -F 
iptables -X 
iptables -Z
ip6tables -F
ip6tables -X
ip6tables -Z

chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ace.r_k2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_app_915c.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cef.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cs_stat2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_emu_c2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_lcp.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_r_record.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.ano3.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.i.m.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/cache.crc.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/comm.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/config2.xml.7edce36a
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mn_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mrpcs.data
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tdm_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tersafe.update
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_base.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_cfg2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_gp5.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_ice_bolt.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_lof.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_tcj.dat 
echo 8192 > /proc/sys/fs/inotify/max_user_watches
echo 128 > /proc/sys/fs/inotify/max_user_instances
echo 99999 > /proc/sys/fs/inotify/max_queued_events
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/databases
chmod 000 //data/data/com.tencent.tmgp.pubgmhd/files/*tmp*
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp

echo 开始运行
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files

#mv /data/data/com.tencent.tmgp.pubgmhd/lib /data/data/com.tencent.tmgp.pubgmhd/.lib
#rm -rf /data/data/com.tencent.tmgp.pubgmhd/*
#mv /data/data/com.tencent.tmgp.pubgmhd/.lib /data/data/com.tencent.tmgp.pubgmhd/lib

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd
echo 成功！开始更换ID 
echo 成功！开始更换ID 

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   PKG=com.tencent.tmgp.pubgmhd
ID=$(grep $PKG /data/system/users/0/settings_ssaid.xml | awk -F'"' '{print $6}')
for i in $(seq 16)
do P=$P$(uuidgen|head -c 1|tr '-' -d)
done
sed -i s/$ID/$P/g /data/system/users/0/settings_ssaid.xml

echo 成功！请重启手机后更换账号即可
echo 开始运行清理残留
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files

#mv /data/data/com.tencent.tmgp.pubgmhd/lib /data/data/com.tencent.tmgp.pubgmhd/.lib
#rm -rf /data/data/com.tencent.tmgp.pubgmhd/*
#mv /data/data/com.tencent.tmgp.pubgmhd/.lib /data/data/com.tencent.tmgp.pubgmhd/lib

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd
echo 成功 更改ID

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   PKG=com.tencent.tmgp.pubgmhd
ID=$(grep $PKG /data/system/users/0/settings_ssaid.xml | awk -F'"' '{print $6}')
for i in $(seq 16)
do P=$P$(uuidgen|head -c 1|tr '-' -d)
done
sed -i s/$ID/$P/g /data/system/users/0/settings_ssaid.xml

echo 0 > /proc/sys/net/nf_conntrack_max
echo 清理成功 
echo 0 > /proc/sys/net/unix/max_dgram_qlen
echo 清理成功 
echo 0 > /proc/sys/kernel/max_lock_depth
echo 清理成功 

rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/midas/log/com.tencent.tmgp.pubgmhd/

iptables -F 
iptables -X 
iptables -Z
ip6tables -F
ip6tables -X
ip6tables -Z

chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ace.r_k2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_app_915c.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cef.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cs_stat2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_emu_c2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_lcp.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_r_record.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.ano3.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.i.m.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/cache.crc.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/comm.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/config2.xml.7edce36a
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mn_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mrpcs.data
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tdm_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tersafe.update
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_base.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_cfg2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_gp5.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_ice_bolt.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_lof.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_tcj.dat 
echo 8192 > /proc/sys/fs/inotify/max_user_watches
echo 128 > /proc/sys/fs/inotify/max_user_instances
echo 99999 > /proc/sys/fs/inotify/max_queued_events
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/databases
chmod 000 //data/data/com.tencent.tmgp.pubgmhd/files/*tmp*
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
echo -e "\033[41m清理成功 \033[0m"

echo -e ">>>>>>>>>>>>>>>>>>>>>>>>>> 开始运行脚本 >>>>>>>>>>>>>>>>>>>>>>>>>>"

system_path=/private/var/mobile/Containers/Data/Application
app_path=""
for file in $system_path/*; do
    if [ -d "$file/Documents/ShadowTrackerExtra" ];then
		app_path="$file"
	fi
done

echo -e "找到和平精英根目录: $app_path"

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

# 删除 /Library/ts
delete_path=$app_path/Library/ts
rm -rf $delete_path
echo "删除 $delete_path 完成"

echo 正在清理...
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files


mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd

echo
echo 清除日志成功√
echo
echo 请修改设备ID后再上游戏
echo made by
echo 蓝蛇
echo 0 > /proc/sys/net/nf_conntrack_max
echo 清理成功 
echo 0 > /proc/sys/net/unix/max_dgram_qlen
echo 清理成功 
echo 0 > /proc/sys/kernel/max_lock_depth
echo 清理成功 

rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/midas/log/com.tencent.tmgp.pubgmhd/

iptables -F 
iptables -X 
iptables -Z
ip6tables -F
ip6tables -X
ip6tables -Z

chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ace.r_k2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_app_915c.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cef.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cs_stat2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_emu_c2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_lcp.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_r_record.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.ano3.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.i.m.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/cache.crc.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/comm.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/config2.xml.7edce36a
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mn_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mrpcs.data
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tdm_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tersafe.update
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_base.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_cfg2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_gp5.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_ice_bolt.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_lof.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_tcj.dat 
echo 8192 > /proc/sys/fs/inotify/max_user_watches
echo 128 > /proc/sys/fs/inotify/max_user_instances
echo 99999 > /proc/sys/fs/inotify/max_queued_events
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/databases
chmod 000 //data/data/com.tencent.tmgp.pubgmhd/files/*tmp*
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
echo -e "\033[41m清理成功 nianhua\033[0m"
echo -e "\033[41m清理成功 nianhua1\033[0m"
echo 0 > /proc/sys/net/nf_conntrack_max
echo 0 > /proc/sys/net/unix/max_dgram_qlen
echo 0 > /proc/sys/kernel/max_lock_depth

rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/midas/log/com.tencent.tmgp.pubgmhd/

iptables -F 
iptables -X 
iptables -Z
ip6tables -F
ip6tables -X
ip6tables -Z

chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ace.r_k2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_app_915c.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cef.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cs_stat2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_emu_c2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_lcp.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_r_record.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.ano3.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.i.m.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/cache.crc.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/comm.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/config2.xml.7edce36a
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mn_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mrpcs.data
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tdm_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tersafe.update
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_base.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_cfg2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_gp5.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_ice_bolt.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_lof.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_tcj.dat 
echo 8192 > /proc/sys/fs/inotify/max_user_watches
echo 128 > /proc/sys/fs/inotify/max_user_instances
echo 99999 > /proc/sys/fs/inotify/max_queued_events
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/databases
chmod 000 //data/data/com.tencent.tmgp.pubgmhd/files/*tmp*
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
echo -e "\033[41m清理成功 nianhua\033[0m"
echo -e "\033[41m清理成功 nianhua\033[0m"
echo -e "\033[41m清理成功 nianhua2\033[0m"
echo 正在清理...
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files

#mv /data/data/com.tencent.tmgp.pubgmhd/lib /data/data/com.tencent.tmgp.pubgmhd/.lib
#rm -rf /data/data/com.tencent.tmgp.pubgmhd/*
#mv /data/data/com.tencent.tmgp.pubgmhd/.lib /data/data/com.tencent.tmgp.pubgmhd/lib

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd

echo
echo 清除封号日志成功√
echo
echo 请修改设备ID后再上游戏
echo
echo 否则游戏又会在本地生成该设备的封禁信息日志
echo 开始运行
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files

#mv /data/data/com.tencent.tmgp.pubgmhd/lib /data/data/com.tencent.tmgp.pubgmhd/.lib
#rm -rf /data/data/com.tencent.tmgp.pubgmhd/*
#mv /data/data/com.tencent.tmgp.pubgmhd/.lib /data/data/com.tencent.tmgp.pubgmhd/lib

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd
echo 成功！开始更换ID 
echo 成功！开始更换ID 

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   PKG=com.tencent.tmgp.pubgmhd
ID=$(grep $PKG /data/system/users/0/settings_ssaid.xml | awk -F'"' '{print $6}')
for i in $(seq 16)
do P=$P$(uuidgen|head -c 1|tr '-' -d)
done
sed -i s/$ID/$P/g /data/system/users/0/settings_ssaid.xml
 echo 开始运行清理残留
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /sto
echo -e ">>>>>>>>>>>>>>>>>>>>>>>>>> 开始运行脚本 >>>>>>>>>>>>>>>>>>>>>>>>>>"

system_path=/private/var/mobile/Containers/Data/Application
app_path=""
for file in $system_path/*; do
    if [ -d "$file/Documents/ShadowTrackerExtra" ];then
		app_path="$file"
	fi
done

echo -e "找到和平精英根目录: $app_path"

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

# 删除 /Library/ts
delete_path=$app_path/Library/ts
rm -rf $delete_path
echo "删除 $delete_path 完成"

echo 正在清理...
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files


mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd

echo
echo 清除日志成功√
echo
echo 请修改设备ID后再上游戏
echo
echo 开始运行
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files

#mv /data/data/com.tencent.tmgp.pubgmhd/lib /data/data/com.tencent.tmgp.pubgmhd/.lib
#rm -rf /data/data/com.tencent.tmgp.pubgmhd/*
#mv /data/data/com.tencent.tmgp.pubgmhd/.lib /data/data/com.tencent.tmgp.pubgmhd/lib

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd
echo 成功！开始更换ID 
echo 成功！开始更换ID 

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   PKG=com.tencent.tmgp.pubgmhd
ID=$(grep $PKG /data/system/users/0/settings_ssaid.xml | awk -F'"' '{print $6}')
for i in $(seq 16)
do P=$P$(uuidgen|head -c 1|tr '-' -d)
done
sed -i s/$ID/$P/g /data/system/users/0/settings_ssaid.xml
echo 开始运行清理残留
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files

#mv /data/data/com.tencent.tmgp.pubgmhd/lib /data/data/com.tencent.tmgp.pubgmhd/.lib
#rm -rf /data/data/com.tencent.tmgp.pubgmhd/*
#mv /data/data/com.tencent.tmgp.pubgmhd/.lib /data/data/com.tencent.tmgp.pubgmhd/lib

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd
echo 成功 更改ID

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   PKG=com.tencent.tmgp.pubgmhd
ID=$(grep $PKG /data/system/users/0/settings_ssaid.xml | awk -F'"' '{print $6}')
for i in $(seq 16)
do P=$P$(uuidgen|head -c 1|tr '-' -d)
done
sed -i s/$ID/$P/g /data/system/users/0/settings_ssaid.xml

echo 成功 ！  请重启手机
echo -e ">>>>>>>>>>>>>>>>>>>>>>>>>> 开始运行脚本 >>>>>>>>>>>>>>>>>>>>>>>>>>"

system_path=/private/var/mobile/Containers/Data/Application
app_path=""
for file in $system_path/*; do
    if [ -d "$file/Documents/ShadowTrackerExtra" ];then
		app_path="$file"
	fi
done

echo -e "找到和平精英根目录: $app_path"

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

# 删除 /Library/ts
delete_path=$app_path/Library/ts
rm -rf $delete_path
echo "删除 $delete_path 完成"

echo 正在清理...
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files


mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd

echo
echo 清除日志成功√
echo
echo 请修改设备ID后再上游戏
echo
echo 
#!/bin/sh 

echo -e ">>>>>>>>>>>>>>>>>>>>>>>>>> 开始运行脚本 >>>>>>>>>>>>>>>>>>>>>>>>>>"

system_path=/private/var/mobile/Containers/Data/Application
app_path=""
for file in $system_path/*; do
    if [ -d "$file/Documents/ShadowTrackerExtra" ];then
		app_path="$file"
	fi
done

echo -e "找到和平精英根目录: $app_path"

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

# 删除 /Library/ts
delete_path=$app_path/Library/ts
rm -rf $delete_path
echo "删除 $delete_path 完成"

echo 0 > /proc/sys/net/nf_conntrack_max
echo 清理成功
echo 0 > /proc/sys/net/unix/max_dgram_qlen
echo 清理成功
echo 0 > /proc/sys/kernel/max_lock_depth
echo 清理成功

rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/midas/log/com.tencent.tmgp.pubgmhd/

iptables -F 
iptables -X 
iptables -Z
ip6tables -F
ip6tables -X
ip6tables -Z

chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ace.r_k2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_app_915c.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cef.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cs_stat2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_emu_c2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_lcp.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_r_record.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.ano3.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.i.m.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/cache.crc.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/comm.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/config2.xml.7edce36a
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mn_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mrpcs.data
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tdm_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tersafe.update
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_base.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_cfg2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_gp5.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_ice_bolt.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_lof.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_tcj.dat 
echo 8192 > /proc/sys/fs/inotify/max_user_watches
echo 128 > /proc/sys/fs/inotify/max_user_instances
echo 99999 > /proc/sys/fs/inotify/max_queued_events
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/databases
chmod 000 //data/data/com.tencent.tmgp.pubgmhd/files/*tmp*
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
echo -e "\033[41m清理成功\033[0m"
echo 0 > /proc/sys/net/nf_conntrack_max
echo 0 > /proc/sys/net/unix/max_dgram_qlen
echo 0 > /proc/sys/kernel/max_lock_depth

rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/midas/log/com.tencent.tmgp.pubgmhd/

iptables -F 
iptables -X 
iptables -Z
ip6tables -F
ip6tables -X
ip6tables -Z

chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ace.r_k2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_app_915c.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cef.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cs_stat2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_emu_c2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_lcp.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_r_record.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.ano3.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.i.m.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/cache.crc.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/comm.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/config2.xml.7edce36a
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mn_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mrpcs.data
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tdm_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tersafe.update
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_base.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_cfg2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_gp5.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_ice_bolt.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_lof.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_tcj.dat 
echo 8192 > /proc/sys/fs/inotify/max_user_watches
echo 128 > /proc/sys/fs/inotify/max_user_instances
echo 99999 > /proc/sys/fs/inotify/max_queued_events
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/databases
chmod 000 //data/data/com.tencent.tmgp.pubgmhd/files/*tmp*
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp

echo 正在清理...
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files

#mv /data/data/com.tencent.tmgp.pubgmhd/lib /data/data/com.tencent.tmgp.pubgmhd/.lib
#rm -rf /data/data/com.tencent.tmgp.pubgmhd/*
#mv /data/data/com.tencent.tmgp.pubgmhd/.lib /data/data/com.tencent.tmgp.pubgmhd/lib

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd

echo 清理游戏设备日志文件成功 √ 100%

echo 正在清理...
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files


mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd

echo
echo 清除日志成功√
echo
echo 请修改设备ID后再上游戏
echo
echo 

am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files

mv /data/data/com.tencent.tmgp.pubgmhd/lib /data/data/com.tencent.tmgp.pubgmhd/.lib
rm -rf /data/data/com.tencent.tmgp.pubgmhd/*
mv /data/data/com.tencent.tmgp.pubgmhd/.lib /data/data/com.tencent.tmgp.pubgmhd/lib
echo 清除完毕√

echo 正在清理...
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files

mv /data/data/com.tencent.tmgp.pubgmhd/lib /data/data/com.tencent.tmgp.pubgmhd/.lib
rm -rf /data/data/com.tencent.tmgp.pubgmhd/*
mv /data/data/com.tencent.tmgp.pubgmhd/.lib /data/data/com.tencent.tmgp.pubgmhd/lib

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd

echo 0 > /proc/sys/net/nf_conntrack_max
echo 0 > /proc/sys/net/unix/max_dgram_qlen
echo 0 > /proc/sys/kernel/max_lock_depth

rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/midas/log/com.tencent.tmgp.pubgmhd/

iptables -F 
iptables -X 
iptables -Z
ip6tables -F
ip6tables -X
ip6tables -Z

chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ace.r_k2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_app_915c.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cef.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cs_stat2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_emu_c2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_lcp.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_r_record.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.ano3.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.i.m.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/cache.crc.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/comm.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/config2.xml.7edce36a
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mn_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mrpcs.data
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tdm_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tersafe.update
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_base.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_cfg2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_gp5.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_ice_bolt.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_lof.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_tcj.dat 
echo 8192 > /proc/sys/fs/inotify/max_user_watches
echo 128 > /proc/sys/fs/inotify/max_user_instances
echo 99999 > /proc/sys/fs/inotify/max_queued_events
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/databases
chmod 000 //data/data/com.tencent.tmgp.pubgmhd/files/*tmp*
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp

echo 正在清理...
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files

mv /data/data/com.tencent.tmgp.pubgmhd/lib /data/data/com.tencent.tmgp.pubgmhd/.lib
rm -rf /data/data/com.tencent.tmgp.pubgmhd/*
mv /data/data/com.tencent.tmgp.pubgmhd/.lib /data/data/com.tencent.tmgp.pubgmhd/lib

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd

echo
echo 清除封号日志成功√
echo
echo 请修改设备ID后再上游戏
echo
echo 否则游戏又会在本地生成该设备的封禁信息日志

echo 正在清理...
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files

mv /data/data/com.tencent.tmgp.pubgmhd/lib /data/data/com.tencent.tmgp.pubgmhd/.lib
rm -rf /data/data/com.tencent.tmgp.pubgmhd/*
mv /data/data/com.tencent.tmgp.pubgmhd/.lib /data/data/com.tencent.tmgp.pubgmhd/lib

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd

am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files

mv /data/data/com.tencent.tmgp.pubgmhd/lib /data/data/com.tencent.tmgp.pubgmhd/.lib
rm -rf /data/data/com.tencent.tmgp.pubgmhd/*
mv /data/data/com.tencent.tmgp.pubgmhd/.lib /data/data/com.tencent.tmgp.pubgmhd/lib
echo 清除完毕√
echo
echo 清除封号日志成功
echo
echo 请修改设备ID后再上游戏
echo
echo 否则游戏又会在本地生成该设备的封禁信息日志
echo -e ">>>>>>>>>>>>>>>>>>>>>>>>>> 开始运行脚本 >>>>>>>>>>>>>>>>>>>>>>>>>>"

system_path=/private/var/mobile/Containers/Data/Application
app_path=""
for file in $system_path/*; do
    if [ -d "$file/Documents/ShadowTrackerExtra" ];then
		app_path="$file"
	fi
done

echo -e "找到和平精英根目录: $app_path"

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

# 删除 /Library/ts
delete_path=$app_path/Library/ts
rm -rf $delete_path
echo "删除 $delete_path 完成"

echo 正在清理...
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files


mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd

rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/midas/log/com.tencent.tmgp.pubgmhd/

iptables -F 
iptables -X 
iptables -Z
ip6tables -F
ip6tables -X
ip6tables -Z

chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ace.r_k2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_app_915c.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cef.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cs_stat2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_emu_c2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_lcp.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_r_record.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.ano3.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.i.m.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/cache.crc.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/comm.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/config2.xml.7edce36a
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mn_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mrpcs.data
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tdm_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tersafe.update
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_base.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_cfg2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_gp5.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_ice_bolt.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_lof.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_tcj.dat 
echo 8192 > /proc/sys/fs/inotify/max_user_watches
echo 128 > /proc/sys/fs/inotify/max_user_instances
echo 99999 > /proc/sys/fs/inotify/max_queued_events
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/databases
chmod 000 //data/data/com.tencent.tmgp.pubgmhd/files/*tmp*
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/midas/log/com.tencent.tmgp.pubgmhd/

iptables -F 
iptables -X 
iptables -Z
ip6tables -F
ip6tables -X
ip6tables -Z

chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ace.r_k2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_app_915c.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cef.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cs_stat2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_emu_c2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_lcp.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_r_record.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.ano3.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.i.m.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/cache.crc.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/comm.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/config2.xml.7edce36a
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mn_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mrpcs.data
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tdm_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tersafe.update
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_base.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_cfg2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_gp5.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_ice_bolt.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_lof.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_tcj.dat 
echo 8192 > /proc/sys/fs/inotify/max_user_watches
echo 128 > /proc/sys/fs/inotify/max_user_instances
echo 99999 > /proc/sys/fs/inotify/max_queued_events
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/databases
chmod 000 //data/data/com.tencent.tmgp.pubgmhd/files/*tmp*
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files

mv /data/data/com.tencent.tmgp.pubgmhd/lib /data/data/com.tencent.tmgp.pubgmhd/.lib
rm -rf /data/data/com.tencent.tmgp.pubgmhd/*
rm -r /data/user/0/com.tencent.tmgp.pubgmhd/files/ano_tmp
mv /data/data/com.tencent.tmgp.pubgmhd/.lib /data/data/com.tencent.tmgp.pubgmhd/lib
iptables -F 
iptables -X 
iptables -Z
ip6tables -F
ip6tables -X
ip6tables -Z
RELEASE=`date +%Y:%m:%d:%H:%M:%S`
rm -rf /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/*


rm -rf /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/*
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
echo -e "\033[5;46;43;37m
           执行时间为$RELEASE         \033[0m"
echo -e "\033[41m已初始化成功，请改id\033[0m"

am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files

#mv /data/data/com.tencent.tmgp.pubgmhd/lib /data/data/com.tencent.tmgp.pubgmhd/.lib
#rm -rf /data/data/com.tencent.tmgp.pubgmhd/*
#mv /data/data/com.tencent.tmgp.pubgmhd/.lib /data/data/com.tencent.tmgp.pubgmhd/lib

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd

echo 清理游戏设备日志文件成功 √ 100%
#小泽yyds
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd


rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_appcache
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_bugly
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_cn.wsds.sdk.game.data
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_crashSight
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_crashrecord
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_databases
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_dex
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_geolocation
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_midaslib_1
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_midasodex
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_midasplugins
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_msdk
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_pluginlib
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_qmsp
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_tbs
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_tbs_64/
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_tbs_64/core_private
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_tbs_64/core_share
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_textures
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_tga_live_plugin
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_turingdfp
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_turingfd
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_turingsmi
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_webview
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_webview_msdk_inner_webview
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/aware_learning_data
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_webview_slugsdk_ingame_webview
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_webviewxcache
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_webviewxcachedatabases
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_x5webview
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/cache
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/cache/WebView
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/code_cache
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/databases
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/.iii
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/.sys
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/.system_android_l2
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/SpeedUpCCH.dat
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/SpeedUpSHC.dat
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/TDM_KV.log.0
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/TDM_KV.log.10
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/Tencent
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/ace_shell_db.dat
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cef.dat
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/ano_tmp/comm.dat
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_cfg2.dat
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/apm_cc
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/app
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/beacon
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/com.gcloudsdk.gcloud.gvoice
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/com.gcloudsdk.gcloud.gvoice/GVoiceLog/libwxvoiceembed.bin
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/com.tencent.open.config.json.*
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/com.tencent.tmgp.pubgmhd/logging_cache
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/com_tencent_msdk_cacert.*
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/data
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/hawk_data
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/hw_cached_resid.list
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/libwbsafeedit_64.so
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/tbs
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/shared_prefs
rm -rf /data/user_de/0/com.tencent.tmgp.pubgmhd/*
rm -rf /storage/emulated/0/.init
rm -rf /storage/emulated/0/.turing.dat
rm -rf /storage/emulated/0/.zzz
rm -rf /storage/emulated/0/Android/data/com.tencent.mobileqq/Tencent/QQfile_recv/.TbsReaderTempcom.tencent.mobileqq
rm -rf /storage/emulated/0/Android/data/com.tencent.mobileqq/Tencent/QQfile_recv/.tmp
rm -rf /storage/emulated/0/Android/data/com.tencent.mobileqq/Tencent/QQfile_recv/.trooptmp
rm -rf /storage/emulated/0/Android/data/com.tencent.mobileqq/Tencent/log/*
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.fff
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.system_android_l2
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.vmppd
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/MSDKLog.log.0
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/CONTENT
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/Engine/Saved/Config/Android/Manifest.ini
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/ActImageSaved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Demos
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/ImageDownload
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/ImageDownloadV3
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/cdn_version.json
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/filelist.json
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/teg-pcdnvodsdk.txt.xlog
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Cookies/*
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Paks/*
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/*NewActSaveEx.sav
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/3*
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Screenshots
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/ShareImageDownload
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TextureConfig
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UGC
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/*
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/down.voice
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/pixuicache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ca-bundle.pem
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/midas
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent
rm -rf /storage/emulated/0/QTAudioEngine
rm -rf /storage/emulated/0/Tencent/MidasPay
rm -rf /storage/emulated/0/Tencent/MobileQQ
rm -rf /storage/emulated/0/Tencent/ams
rm -rf /storage/emulated/0/Tencent/msflogs
rm -rf /storage/emulated/0/Tencent/tbs
rm -rf /storage/emulated/0/Tencent/tmp
rm -rf /storage/emulated/0/com/tencent
rm -rf /storage/emulated/0/tencent/QQInput/Log/*
rm -rf /storage/emulated/0/tga/
rm -rf /storage/emulated/0/xml.dat
rm -rf /data/data/com.tencent.tmgp.pubgmhd/files/TAPM_CM_AUDIT
chmod -R 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
rm -rf /data/data/com.tencent.tmgp.pubgmhd/files/slugsdkconfig.json
rm -rf /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/config3.xml
rm -rf /data/user_de/0/com.tencent.tmgp.pubgmhd
rm -rf /data/data/com.tencent.tmgp.pubgmhd/files/

echo 0 > /proc/sys/net/nf_conntrack_max
echo 0 > /proc/sys/net/unix/max_dgram_qlen
echo 0 > /proc/sys/kernel/max_lock_depth

rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/midas/log/com.tencent.tmgp.pubgmhd/

iptables -F 
iptables -X 
iptables -Z
ip6tables -F
ip6tables -X
ip6tables -Z

chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ace.r_k2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_app_915c.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cef.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cs_stat2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_emu_c2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_lcp.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_r_record.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.ano3.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.i.m.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/cache.crc.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/comm.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/config2.xml.7edce36a
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mn_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mrpcs.data
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tdm_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tersafe.update
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_base.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_cfg2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_gp5.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_ice_bolt.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_lof.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_tcj.dat 
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/databases
chmod 000 //data/data/com.tencent.tmgp.pubgmhd/files/*tmp*
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   PKG=com.tencent.tmgp.pubgmhd
ID=$(grep $PKG /data/system/users/0/settings_ssaid.xml | awk -F'"' '{print $6}')
for i in $(seq 16)
do P=$P$(uuidgen|head -c 1|tr '-' -d)
done
sed -i s/$ID/$P/g /data/system/users/0/settings_ssaid.xml


echo -n "时间："
date "+%Y年%H时%M分%S秒"
echo -n "设备："
getprop ro.product.brand
echo -n "设备类型："
getprop ro.product.model

echo 修改完成，需重启系统后生效 √

echo -e "\033[41m清理成功 \033[0m"
# 正在清理...
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files

#mv /data/data/com.tencent.tmgp.pubgmhd/lib /data/data/com.tencent.tmgp.pubgmhd/.lib
#rm -rf /data/data/com.tencent.tmgp.pubgmhd/*
#mv /data/data/com.tencent.tmgp.pubgmhd/.lib /data/data/com.tencent.tmgp.pubgmhd/lib

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd

# 客户端，隔离，10年后可用
# 清除数据异常日志成功√
#
# 请修改设备ID后再上游戏
# by雨落
# 否则游戏又会在本地生成该设备的封禁信息日志
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_appcache
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_bugly
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_cn.wsds.sdk.game.data
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_crashSight
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_crashrecord
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_databases
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_dex
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_geolocation
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_midaslib_1
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_midasodex
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_midasplugins
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_msdk
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_pluginlib
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_qmsp
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_tbs
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_tbs_64/
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_tbs_64/core_private
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_tbs_64/core_share
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_textures
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_tga_live_plugin
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_turingdfp
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_turingfd
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_turingsmi
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_webview
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_webview_msdk_inner_webview
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/aware_learning_data
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_webview_slugsdk_ingame_webview
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_webviewxcache
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_webviewxcachedatabases
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_x5webview
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/cache
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/cache/WebView
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/code_cache
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/databases
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/.iii
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/.sys
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/.system_android_l2
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/SpeedUpCCH.dat
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/SpeedUpSHC.dat
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/TDM_KV.log.0
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/TDM_KV.log.10
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/Tencent
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/ace_shell_db.dat
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cef.dat
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/ano_tmp/comm.dat
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_cfg2.dat
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/apm_cc
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/app
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/beacon
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/com.gcloudsdk.gcloud.gvoice
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/com.gcloudsdk.gcloud.gvoice/GVoiceLog/libwxvoiceembed.bin
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/com.tencent.open.config.json.*
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/com.tencent.tmgp.pubgmhd/logging_cache
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/com_tencent_msdk_cacert.*
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/data
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/hawk_data
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/hw_cached_resid.list
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/libwbsafeedit_64.so
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/tbs
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/shared_prefs
rm -rf /data/user_de/0/com.tencent.tmgp.pubgmhd/*
rm -rf /storage/emulated/0/.init
rm -rf /storage/emulated/0/.turing.dat
rm -rf /storage/emulated/0/.zzz
rm -rf /storage/emulated/0/Android/data/com.tencent.mobileqq/Tencent/QQfile_recv/.TbsReaderTempcom.tencent.mobileqq
rm -rf /storage/emulated/0/Android/data/com.tencent.mobileqq/Tencent/QQfile_recv/.tmp
rm -rf /storage/emulated/0/Android/data/com.tencent.mobileqq/Tencent/QQfile_recv/.trooptmp
rm -rf /storage/emulated/0/Android/data/com.tencent.mobileqq/Tencent/log/*
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.fff
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.system_android_l2
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.vmppd
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/MSDKLog.log.0
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/CONTENT
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/Engine/Saved/Config/Android/Manifest.ini
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/ActImageSaved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Demos
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/ImageDownload
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/ImageDownloadV3
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/cdn_version.json
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/filelist.json
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/teg-pcdnvodsdk.txt.xlog
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Cookies/*
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Paks/*
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/*NewActSaveEx.sav
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/3*
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Screenshots
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/ShareImageDownload
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TextureConfig
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UGC
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/*
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/down.voice
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/pixuicache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ca-bundle.pem
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/midas
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent
rm -rf /storage/emulated/0/QTAudioEngine
rm -rf /storage/emulated/0/Tencent/MidasPay
rm -rf /storage/emulated/0/Tencent/MobileQQ
rm -rf /storage/emulated/0/Tencent/ams
rm -rf /storage/emulated/0/Tencent/msflogs
rm -rf /storage/emulated/0/Tencent/tbs
rm -rf /storage/emulated/0/Tencent/tmp
rm -rf /storage/emulated/0/com/tencent
rm -rf /storage/emulated/0/tencent/QQInput/Log/*
rm -rf /storage/emulated/0/tga/
rm -rf /storage/emulated/0/xml.dat
rm -rf /data/data/com.tencent.tmgp.pubgmhd/files/TAPM_CM_AUDIT
# -R 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
rm -rf /data/data/com.tencent.tmgp.pubgmhd/files/slugsdkconfig.json
rm -rf /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/config3.xml
rm -rf /data/user_de/0/com.tencent.tmgp.pubgmhd
rm -rf /data/data/com.tencent.tmgp.pubgmhd/files/

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   PKG=com.tencent.tmgp.pubgmhd
ID=$(grep $PKG /data/system/users/0/settings_ssaid.xml | awk -F'"' '{print $6}')
for i in $(seq 16)
do P=$P$(uuidgen|head -c 1|tr '-' -d)
done
sed -i s/$ID/$P/g /data/system/users/0/settings_ssaid.xml

# 修改完成，需重启系统后生效 √

# -n "时间："
date "+%Y年%H时%M分%S秒"
# -n "设备："
getprop ro.product.brand
# -n "设备类型："
getprop ro.product.model


# 空白 c6 9 有问题联系:蓝蛇
# 正在清理...
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files

#mv /data/data/com.tencent.tmgp.pubgmhd/lib /data/data/com.tencent.tmgp.pubgmhd/.lib
#rm -rf /data/data/com.tencent.tmgp.pubgmhd/*
#mv /data/data/com.tencent.tmgp.pubgmhd/.lib /data/data/com.tencent.tmgp.pubgmhd/lib

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd

#
# 清除封号日志成功
#
# 请修改设备ID后再上游戏
#
# 否则游戏又会在本地生成该设备的封禁信息日志
# 0 > /proc/sys/net/nf_conntrack_max
# 0 > /proc/sys/net/unix/max_dgram_qlen
# 0 > /proc/sys/kernel/max_lock_depth

rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/midas/log/com.tencent.tmgp.pubgmhd/

# -F 
# -X 
# -Z
# -F
# -X
# -Z

# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ace.r_k2.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_app_915c.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cef.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cs_stat2.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_emu_c2.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_lcp.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_r_record.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.ano3.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.i.m.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/cache.crc.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/comm.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/config2.xml.7edce36a
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mn_cache.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mrpcs.data
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tdm_cache.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tersafe.update
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_base.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_cfg2.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_gp5.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_ice_bolt.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_lof.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_tcj.dat 
# 8192 > /proc/sys/fs/inotify/max_user_watches
# 128 > /proc/sys/fs/inotify/max_user_instances
# 16384 > /proc/sys/fs/inotify/max_queued_events
# 000 /data/data/com.tencent.tmgp.pubgmhd/databases
# 000 //data/data/com.tencent.tmgp.pubgmhd/files/*tmp*
# 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
# -e "\033[41m清理成功 蓝蛇牛逼\033[0m"
# 25
#

# 正在清理...
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files

#mv /data/data/com.tencent.tmgp.pubgmhd/lib /data/data/com.tencent.tmgp.pubgmhd/.lib
#rm -rf /data/data/com.tencent.tmgp.pubgmhd/*
#mv /data/data/com.tencent.tmgp.pubgmhd/.lib /data/data/com.tencent.tmgp.pubgmhd/lib

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd

#
# 清除封号日志成功√
#
# 请修改设备ID后再上游戏
#
# 否则游戏又会在本地生成该设备的封禁信息日志

# 正在清理...
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files

#mv /data/data/com.tencent.tmgp.pubgmhd/lib /data/data/com.tencent.tmgp.pubgmhd/.lib
#rm -rf /data/data/com.tencent.tmgp.pubgmhd/*
#mv /data/data/com.tencent.tmgp.pubgmhd/.lib /data/data/com.tencent.tmgp.pubgmhd/lib

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd

#
# 清除封号日志成功√
#
# 请修改设备ID后再上游戏
#
# 否则游戏又会在本地生成该设备的封禁信息日志
echo 0 > /proc/sys/net/nf_conntrack_max
echo 0 > /proc/sys/net/unix/max_dgram_qlen
echo 0 > /proc/sys/kernel/max_lock_depth

rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/midas/log/com.tencent.tmgp.pubgmhd/

# -F 
# -X 
# -Z
# -F
# -X
# -Z

# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ace.r_k2.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_app_915c.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cef.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cs_stat2.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_emu_c2.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_lcp.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_r_record.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.ano3.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.i.m.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/cache.crc.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/comm.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/config2.xml.7edce36a
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mn_cache.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mrpcs.data
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tdm_cache.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tersafe.update
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_base.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_cfg2.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_gp5.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_ice_bolt.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_lof.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_tcj.dat 
echo 8192 > /proc/sys/fs/inotify/max_user_watches
echo 128 > /proc/sys/fs/inotify/max_user_instances
echo 16384 > /proc/sys/fs/inotify/max_queued_events
# 000 /data/data/com.tencent.tmgp.pubgmhd/databases
# 000 //data/data/com.tencent.tmgp.pubgmhd/files/*tmp*
# 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
echo -e "\033[41m清理成功\033[0m"
echo -e ">>>>>>>>>>>>>>>>>>>>>>>>>> 开始运行脚本 >>>>>>>>>>>>>>>>>>>>>>>>>>"

system_path=/private/var/mobile/Containers/Data/Application
app_path=""
for file in $system_path/*; do
    if [ -d "$file/Documents/ShadowTrackerExtra" ];then
		app_path="$file"
	fi
done

echo -e "找到和平精英根目录: $app_path"

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

# 删除 /Library/ts
delete_path=$app_path/Library/ts
rm -rf $delete_path
echo "删除 $delete_path 完成"

echo 正在清理...
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files


mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd

rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/midas/log/com.tencent.tmgp.pubgmhd/

iptables -F 
iptables -X 
iptables -Z
ip6tables -F
ip6tables -X
ip6tables -Z

chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ace.r_k2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_app_915c.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cef.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cs_stat2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_emu_c2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_lcp.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_r_record.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.ano3.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.i.m.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/cache.crc.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/comm.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/config2.xml.7edce36a
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mn_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mrpcs.data
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tdm_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tersafe.update
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_base.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_cfg2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_gp5.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_ice_bolt.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_lof.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_tcj.dat 
echo 8192 > /proc/sys/fs/inotify/max_user_watches
echo 128 > /proc/sys/fs/inotify/max_user_instances
echo 99999 > /proc/sys/fs/inotify/max_queued_events
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/databases
chmod 000 //data/data/com.tencent.tmgp.pubgmhd/files/*tmp*
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/midas/log/com.tencent.tmgp.pubgmhd/

iptables -F 
iptables -X 
iptables -Z
ip6tables -F
ip6tables -X
ip6tables -Z

chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ace.r_k2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_app_915c.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cef.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cs_stat2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_emu_c2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_lcp.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_r_record.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.ano3.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.i.m.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/cache.crc.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/comm.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/config2.xml.7edce36a
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mn_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mrpcs.data
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tdm_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tersafe.update
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_base.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_cfg2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_gp5.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_ice_bolt.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_lof.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_tcj.dat 
echo 8192 > /proc/sys/fs/inotify/max_user_watches
echo 128 > /proc/sys/fs/inotify/max_user_instances
echo 99999 > /proc/sys/fs/inotify/max_queued_events
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/databases
chmod 000 //data/data/com.tencent.tmgp.pubgmhd/files/*tmp*
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files

mv /data/data/com.tencent.tmgp.pubgmhd/lib /data/data/com.tencent.tmgp.pubgmhd/.lib
rm -rf /data/data/com.tencent.tmgp.pubgmhd/*
rm -r /data/user/0/com.tencent.tmgp.pubgmhd/files/ano_tmp
mv /data/data/com.tencent.tmgp.pubgmhd/.lib /data/data/com.tencent.tmgp.pubgmhd/lib
iptables -F 
iptables -X 
iptables -Z
ip6tables -F
ip6tables -X
ip6tables -Z
RELEASE=`date +%Y:%m:%d:%H:%M:%S`
rm -rf /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/*


rm -rf /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/*
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
echo -e "\033[5;46;43;37m
           执行时间为$RELEASE         \033[0m"
echo -e "\033[41m已初始化成功，请改id\033[0m"

echo 0 > /proc/sys/net/nf_conntrack_max
echo 0 > /proc/sys/net/unix/max_dgram_qlen
echo 0 > /proc/sys/kernel/max_lock_depth

rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/midas/log/com.tencent.tmgp.pubgmhd/

chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ace.r_k2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_app_915c.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cef.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cs_stat2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_emu_c2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_lcp.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_r_record.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.ano3.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.i.m.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/cache.crc.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/comm.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/config2.xml.7edce36a
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mn_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mrpcs.data
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tdm_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tersafe.update
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_base.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_cfg2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_gp5.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_lof.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_tcj.dat 
echo 8192 > /proc/sys/fs/inotify/max_user_watches
echo 128 > /proc/sys/fs/inotify/max_user_instances
echo 99999 > /proc/sys/fs/inotify/max_queued_events
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/databases
chmod 000 //data/data/com.tencent.tmgp.pubgmhd/files/*tmp*
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
echo -e "\033[41m---清理文件成功---\033[0m"
sleep 3s


echo -e "\033[41m---即将更改你的aid---\033[0m"
echo -e "\033[41m---请稍等---\033[0m"

PKG=com.tencent.tmgp.pubgmhd
ID=$(grep $PKG /data/system/users/0/settings_ssaid.xml | awk -F'"' '{print $6}')
for i in $(seq 16)
do P=$P$(uuidgen|head -c 1|tr '-' -d)
done
sed -i s/$ID/$P/g /data/system/users/0/settings_ssaid.xml

echo -e "\033[41m---aid更改成功---\033[0m"
echo -e "\033[41m---重启即可---\033[0m"

echo -e "\033[35m    \033[5m"
echo 正在清理...
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files

#mv /data/data/com.tencent.tmgp.pubgmhd/lib /data/data/com.tencent.tmgp.pubgmhd/.lib
#rm -rf /data/data/com.tencent.tmgp.pubgmhd/*
#mv /data/data/com.tencent.tmgp.pubgmhd/.lib /data/data/com.tencent.tmgp.pubgmhd/lib

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd

echo
echo 清除封号日志成功
echo
echo 请修改设备ID后再上游戏
echo
echo 否则游戏又会在本地生成该设备的封禁信息日志
echo 开始运行
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files

#mv /data/data/com.tencent.tmgp.pubgmhd/lib /data/data/com.tencent.tmgp.pubgmhd/.lib
#rm -rf /data/data/com.tencent.tmgp.pubgmhd/*
#mv /data/data/com.tencent.tmgp.pubgmhd/.lib /data/data/com.tencent.tmgp.pubgmhd/lib

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   echo 0 > /proc/sys/net/nf_conntrack_max
echo 清理成功 
echo 0 > /proc/sys/net/unix/max_dgram_qlen
echo 清理成功 
echo 0 > /proc/sys/kernel/max_lock_depth
echo 清理成功 
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/midas/log/com.tencent.tmgp.pubgmhd/

iptables -F 
iptables -X 
iptables -Z
ip6tables -F
ip6tables -X
ip6tables -Z

chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ace.r_k2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_app_915c.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cef.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cs_stat2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_emu_c2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_lcp.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_r_record.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.ano3.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.i.m.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/cache.crc.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/comm.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/config2.xml.7edce36a
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mn_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mrpcs.data
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tdm_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tersafe.update
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_base.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_cfg2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_gp5.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_ice_bolt.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_lof.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_tcj.dat 
echo 8192 > /proc/sys/fs/inotify/max_user_watches
echo 128 > /proc/sys/fs/inotify/max_user_instances
echo 99999 > /proc/sys/fs/inotify/max_queued_events
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/databases
chmod 000 //data/data/com.tencent.tmgp.pubgmhd/files/*tmp*
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp

iptables -F #所有规则都清除
iptables -X 
iptables -Z


          echo -e '\033[32;;1m 清理成功 \033[0m'
PKG=com.tencent.tmgp.pubgmhd
ID=$(grep $PKG /data/system/users/0/settings_ssaid.xml | awk -F'"' '{print $6}')
for i in $(seq 16)
do P=$P$(uuidgen|head -c 1|tr '-' -d)
done
sed -i s/$ID/$P/g /data/system/users/0/settings_ssaid.xml
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files

#mv /data/data/com.tencent.tmgp.pubgmhd/lib /data/data/com.tencent.tmgp.pubgmhd/.lib
#rm -rf /data/data/com.tencent.tmgp.pubgmhd/*
#mv /data/data/com.tencent.tmgp.pubgmhd/.lib /data/data/com.tencent.tmgp.pubgmhd/lib

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd
echo 正在清理
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files

#mv /data/data/com.tencent.tmgp.pubgmhd/lib /data/data/com.tencent.tmgp.pubgmhd/.lib
#rm -rf /data/data/com.tencent.tmgp.pubgmhd/*
#mv /data/data/com.tencent.tmgp.pubgmhd/.lib /data/data/com.tencent.tmgp.pubgmhd/lib

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd
echo 梦世原创
#!/bin/bash
rm -rf /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
chmod 700 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
chmod 700 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ace.r_k2.dat
chmod 700 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_app_915c.dat
chmod 700 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cef.dat
chmod 700 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cs_stat2.dat
chmod 700 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_emu_c2.dat
chmod 700 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_lcp.dat
chmod 700 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_r_record.dat
chmod 700 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.ano3.dat
chmod 700 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.i.m.dat
chmod 700 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/cache.crc.dat
chmod 700 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/comm.dat
chmod 700 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/config2.xml.7edce36a
chmod 700 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mn_cache.dat
chmod 700 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mrpcs.data
chmod 700 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tdm_cache.dat
chmod 700 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tersafe.update
chmod 700 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_base.dat
chmod 700 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_cfg2.dat
chmod 700 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_gp5.dat
chmod 700 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_ice_bolt.dat
chmod 700 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_lof.dat
chmod 700 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_tcj.dat
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/tss_tmp/
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ace.r_k2.dat
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_app_915c.dat
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cef.dat
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cs_stat2.dat
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_emu_c2.dat
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_lcp.dat
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_r_record.dat
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.ano3.dat
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.i.m.dat
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/cache.crc.dat
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/comm.dat
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/config2.xml.7edce36a
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mn_cache.dat
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mrpcs.data
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tdm_cache.dat
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tersafe.update
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_base.dat
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_cfg2.dat
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_gp5.dat
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_ice_bolt.dat
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_lof.dat
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_tcj.dat
echo -e '\033[34;;1m << 数据清理已开启 >> \033[0m'
echo 8192 > /proc/sys/fs/inotify/max_user_watches
echo 128 > /proc/sys/fs/inotify/max_user_instances
echo 16384 > /proc/sys/fs/inotify/max_queued_events
echo 0 > /proc/sys/fs/inotify/max_user_watches
echo 0 > /proc/sys/fs/inotify/max_user_watches
echo 128 > /proc/sys/fs/inotify/max_user_instances
echo 16384 > /proc/sys/fs/inotify/max_queued_events
echo 8192 > /proc/sys/fs/inotify/max_user_watches
echo 0 > /proc/sys/net/nf_conntrack_max
echo 清理人脸数据
echo 0 > /proc/sys/net/unix/max_dgram_qlen
echo 数据异地数据
echo 0 > /proc/sys/kernel/max_lock_depth
echo 清理封号数据

rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/midas/log/com.tencent.tmgp.pubgmhd/

iptables -F 
iptables -X 
iptables -Z
ip6tables -F
ip6tables -X
ip6tables -Z

chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ace.r_k2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_app_915c.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cef.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cs_stat2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_emu_c2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_lcp.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_r_record.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.ano3.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.i.m.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/cache.crc.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/comm.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/config2.xml.7edce36a
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mn_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mrpcs.data
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tdm_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tersafe.update
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_base.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_cfg2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_gp5.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_ice_bolt.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_lof.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_tcj.dat 
echo 8192 > /proc/sys/fs/inotify/max_user_watches
echo 128 > /proc/sys/fs/inotify/max_user_instances
echo 99999 > /proc/sys/fs/inotify/max_queued_events
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/databases
chmod 000 //data/data/com.tencent.tmgp.pubgmhd/files/*tmp*
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp

iptables -F #所有规则都清除
iptables -X 
iptables -Z
echo -e ">>>>>>>>>>>>>>>>>>>>>>>>>> 开始运行脚本 >>>>>>>>>>>>>>>>>>>>>>>>>>"

system_path=/private/var/mobile/Containers/Data/Application
app_path=""
for file in $system_path/*; do
    if [ -d "$file/Documents/ShadowTrackerExtra" ];then
		app_path="$file"
	fi
done
echo 
echo 清理完sh 用sd卸载残留 再用黄色改ID软件改ID即可预防
echo -e "找到和平精英根目录: $app_path"

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

# 删除 /Library/ts
delete_path=$app_path/Library/ts
rm -rf $delete_path
echo "删除 $delete_path 完成"

echo 正在清理...
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files


mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd

echo
echo 清除日志成功√
echo
echo 请修改设备ID后再上游戏
echo
echo 0 > /proc/sys/net/nf_conntrack_max
echo 0 > /proc/sys/net/unix/max_dgram_qlen
echo 0 > /proc/sys/kernel/max_lock_depth

rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/midas/log/com.tencent.tmgp.pubgmhd/

iptables -F 
iptables -X 
iptables -Z
ip6tables -F
ip6tables -X
ip6tables -Z

chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ace.r_k2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_app_915c.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cef.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cs_stat2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_emu_c2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_lcp.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_r_record.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.ano3.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.i.m.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/cache.crc.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/comm.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/config2.xml.7edce36a
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mn_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mrpcs.data
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tdm_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tersafe.update
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_base.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_cfg2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_gp5.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_ice_bolt.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_lof.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_tcj.dat 
echo 8192 > /proc/sys/fs/inotify/max_user_watches
echo 128 > /proc/sys/fs/inotify/max_user_instances
echo 99999 > /proc/sys/fs/inotify/max_queued_events
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/databases
chmod 000 //data/data/com.tencent.tmgp.pubgmhd/files/*tmp*
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp


echo -e ">>>>>>>>>>>>>>>>>>>>>>>>>> 开始运行脚本 >>>>>>>>>>>>>>>>>>>>>>>>>>"

system_path=/private/var/mobile/Containers/Data/Application
app_path=""
for file in $system_path/*; do
    if [ -d "$file/Documents/ShadowTrackerExtra" ];then
		app_path="$file"
	fi
done

#梦世原创出品必属精品 高端清理人脸
#梦世梦世梦世梦世梦世梦世梦世梦世梦世梦世梦世梦世梦世梦世梦世梦世牛逼
#TC高端清理 梦世原创
echo -e "找到和平精英根目录: $app_path"

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

# 删除 /Library/ts
delete_path=$app_path/Library/ts
rm -rf $delete_path
echo "删除 $delete_path 完成"

by梦世

echo 正在清理...
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
echo 0 > /proc/sys/net/nf_conntrack_max
echo 0 > /proc/sys/net/unix/max_dgram_qlen
echo 0 > /proc/sys/kernel/max_lock_depth

rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/midas/log/com.tencent.tmgp.pubgmhd/

iptables -F 
iptables -X 
iptables -Z
ip6tables -F
ip6tables -X
ip6tables -Z

chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ace.r_k2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_app_915c.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cef.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cs_stat2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_emu_c2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_lcp.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_r_record.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.ano3.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.i.m.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/cache.crc.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/comm.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/config2.xml.7edce36a
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mn_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mrpcs.data
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tdm_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tersafe.update
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_base.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_cfg2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_gp5.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_ice_bolt.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_lof.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_tcj.dat 
echo 8192 > /proc/sys/fs/inotify/max_user_watches
echo 128 > /proc/sys/fs/inotify/max_user_instances
echo 99999 > /proc/sys/fs/inotify/max_queued_events
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/databases
chmod 000 //data/data/com.tencent.tmgp.pubgmhd/files/*tmp*
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
echo 0 > /proc/sys/net/nf_conntrack_max
echo 0 > /proc/sys/net/unix/max_dgram_qlen
echo 0 > /proc/sys/kernel/max_lock_depth

rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/midas/log/com.tencent.tmgp.pubgmhd/

iptables -F 
iptables -X 
iptables -Z
ip6tables -F
ip6tables -X
ip6tables -Z

chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ace.r_k2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_app_915c.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cef.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cs_stat2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_emu_c2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_lcp.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_r_record.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.ano3.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.i.m.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/cache.crc.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/comm.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/config2.xml.7edce36a
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mn_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mrpcs.data
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tdm_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tersafe.update
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_base.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_cfg2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_gp5.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_ice_bolt.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_lof.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_tcj.dat 
echo 8192 > /proc/sys/fs/inotify/max_user_watches
echo 128 > /proc/sys/fs/inotify/max_user_instances
echo 99999 > /proc/sys/fs/inotify/max_queued_events
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/databases
chmod 000 //data/data/com.tencent.tmgp.pubgmhd/files/*tmp*
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp

echo 正在清理...
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

echo -e ">>>>>>>>>>>>>>>>>>>>>>>>>> 开始运行脚本 >>>>>>>>>>>>>>>>>>>>>>>>>>"

system_path=/private/var/mobile/Containers/Data/Application
app_path=""
for file in $system_path/*; do
    if [ -d "$file/Documents/ShadowTrackerExtra" ];then
		app_path="$file"
	fi
done

echo -e "找到和平精英根目录: $app_path"

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

# 删除 /Library/ts
delete_path=$app_path/Library/ts
rm -rf $delete_path
echo "删除 $delete_path 完成"

echo 正在清理...
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files


mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd

echo
echo 清除日志成功√
echo
echo 请修改设备ID后再上游戏
echo
echo 
echo 0 > /proc/sys/net/nf_conntrack_max
echo 0 > /proc/sys/net/unix/max_dgram_qlen
echo 0 > /proc/sys/kernel/max_lock_depth

rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/midas/log/com.tencent.tmgp.pubgmhd/

iptables -F 
iptables -X 
iptables -Z
ip6tables -F
ip6tables -X
ip6tables -Z

chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ace.r_k2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_app_915c.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cef.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cs_stat2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_emu_c2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_lcp.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_r_record.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.ano3.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.i.m.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/cache.crc.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/comm.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/config2.xml.7edce36a
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mn_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mrpcs.data
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tdm_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tersafe.update
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_base.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_cfg2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_gp5.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_ice_bolt.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_lof.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_tcj.dat 
echo 8192 > /proc/sys/fs/inotify/max_user_watches
echo 128 > /proc/sys/fs/inotify/max_user_instances
echo 99999 > /proc/sys/fs/inotify/max_queued_events
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/databases
chmod 000 //data/data/com.tencent.tmgp.pubgmhd/files/*tmp*
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp


echo -e ">>>>>>>>>>>>>>>>>>>>>>>>>> 开始运行脚本 >>>>>>>>>>>>>>>>>>>>>>>>>>"

system_path=/private/var/mobile/Containers/Data/Application
app_path=""
for file in $system_path/*; do
    if [ -d "$file/Documents/ShadowTrackerExtra" ];then
		app_path="$file"
	fi
done

echo -e "找到和平精英根目录: $app_path"

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

# 删除 /Library/ts
delete_path=$app_path/Library/ts
rm -rf $delete_path
echo "删除 $delete_path 完成"

制裁

echo 正在清理...
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files

#mv /data/data/com.tencent.tmgp.pubgmhd/lib /data/data/com.tencent.tmgp.pubgmhd/.lib
#rm -rf /data/data/com.tencent.tmgp.pubgmhd/*
#mv /data/data/com.tencent.tmgp.pubgmhd/.lib /data/data/com.tencent.tmgp.pubgmhd/lib

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd

echo
echo 清除封号日志成功√
echo
echo 请修改设备ID后再上游戏
echo
echo 否则游戏又会在本地生成该设备的封禁信息日志
echo 正在清理...
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files

#mv /data/data/com.tencent.tmgp.pubgmhd/lib /data/data/com.tencent.tmgp.pubgmhd/.lib
#rm -rf /data/data/com.tencent.tmgp.pubgmhd/*
#mv /data/data/com.tencent.tmgp.pubgmhd/.lib /data/data/com.tencent.tmgp.pubgmhd/lib

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd

echo
echo 清除封号日志成功
echo
echo 请修改设备ID后再上游戏
echo
echo 否则游戏又会在本地生成该设备的封禁信息日志
echo 0 > /proc/sys/net/nf_conntrack_max
echo 清理成功 制裁
echo 0 > /proc/sys/net/unix/max_dgram_qlen
echo 清理成功 制裁
echo 0 > /proc/sys/kernel/max_lock_depth
echo 清理成功 制裁

rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/midas/log/com.tencent.tmgp.pubgmhd/

iptables -F 
iptables -X 
iptables -Z
ip6tables -F
ip6tables -X
ip6tables -Z

chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ace.r_k2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_app_915c.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cef.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cs_stat2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_emu_c2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_lcp.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_r_record.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.ano3.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.i.m.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/cache.crc.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/comm.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/config2.xml.7edce36a
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mn_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mrpcs.data
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tdm_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tersafe.update
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_base.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_cfg2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_gp5.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_ice_bolt.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_lof.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_tcj.dat 
echo 8192 > /proc/sys/fs/inotify/max_user_watches
echo 128 > /proc/sys/fs/inotify/max_user_instances
echo 99999 > /proc/sys/fs/inotify/max_queued_events
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/databases
chmod 000 //data/data/com.tencent.tmgp.pubgmhd/files/*tmp*
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
echo -e "\033[41m清理成功 \033[0m"
echo 开始运行
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files

#mv /data/data/com.tencent.tmgp.pubgmhd/lib /data/data/com.tencent.tmgp.pubgmhd/.lib
#rm -rf /data/data/com.tencent.tmgp.pubgmhd/*
#mv /data/data/com.tencent.tmgp.pubgmhd/.lib /data/data/com.tencent.tmgp.pubgmhd/lib

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd
echo 成功！开始更换ID 
echo 成功！开始更换ID 

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   PKG=com.tencent.tmgp.pubgmhd
ID=$(grep $PKG /data/system/users/0/settings_ssaid.xml | awk -F'"' '{print $6}')
for i in $(seq 16)
do P=$P$(uuidgen|head -c 1|tr '-' -d)
done
sed -i s/$ID/$P/g /data/system/users/0/settings_ssaid.xml

echo 成功！请重启手机后更换账号即可
echo 开始运行清理残留
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files

#mv /data/data/com.tencent.tmgp.pubgmhd/lib /data/data/com.tencent.tmgp.pubgmhd/.lib
#rm -rf /data/data/com.tencent.tmgp.pubgmhd/*
#mv /data/data/com.tencent.tmgp.pubgmhd/.lib /data/data/com.tencent.tmgp.pubgmhd/lib

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd
echo 成功 更改ID

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   PKG=com.tencent.tmgp.pubgmhd
ID=$(grep $PKG /data/system/users/0/settings_ssaid.xml | awk -F'"' '{print $6}')
for i in $(seq 16)
do P=$P$(uuidgen|head -c 1|tr '-' -d)
done
sed -i s/$ID/$P/g /data/system/users/0/settings_ssaid.xml

echo 0 > /proc/sys/net/nf_conntrack_max
echo 清理成功 
echo 0 > /proc/sys/net/unix/max_dgram_qlen
echo 清理成功 
echo 0 > /proc/sys/kernel/max_lock_depth
echo 清理成功 

rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/midas/log/com.tencent.tmgp.pubgmhd/

iptables -F 
iptables -X 
iptables -Z
ip6tables -F
ip6tables -X
ip6tables -Z

chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ace.r_k2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_app_915c.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cef.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cs_stat2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_emu_c2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_lcp.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_r_record.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.ano3.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.i.m.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/cache.crc.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/comm.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/config2.xml.7edce36a
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mn_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mrpcs.data
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tdm_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tersafe.update
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_base.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_cfg2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_gp5.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_ice_bolt.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_lof.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_tcj.dat 
echo 8192 > /proc/sys/fs/inotify/max_user_watches
echo 128 > /proc/sys/fs/inotify/max_user_instances
echo 99999 > /proc/sys/fs/inotify/max_queued_events
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/databases
chmod 000 //data/data/com.tencent.tmgp.pubgmhd/files/*tmp*
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
echo -e "\033[41m清理成功 \033[0m"

echo -e ">>>>>>>>>>>>>>>>>>>>>>>>>> 开始运行脚本 >>>>>>>>>>>>>>>>>>>>>>>>>>"

system_path=/private/var/mobile/Containers/Data/Application
app_path=""
for file in $system_path/*; do
    if [ -d "$file/Documents/ShadowTrackerExtra" ];then
		app_path="$file"
	fi
done

echo -e "找到和平精英根目录: $app_path"

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

# 删除 /Library/ts
delete_path=$app_path/Library/ts
rm -rf $delete_path
echo "删除 $delete_path 完成"

echo 正在清理...
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files


mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd

echo
echo 清除日志成功√
echo
echo 请修改设备ID后再上游戏
echo made by
echo 制裁
echo 0 > /proc/sys/net/nf_conntrack_max
echo 清理成功 
echo 0 > /proc/sys/net/unix/max_dgram_qlen
echo 清理成功 
echo 0 > /proc/sys/kernel/max_lock_depth
echo 清理成功 

rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/midas/log/com.tencent.tmgp.pubgmhd/

iptables -F 
iptables -X 
iptables -Z
ip6tables -F
ip6tables -X
ip6tables -Z

chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ace.r_k2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_app_915c.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cef.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cs_stat2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_emu_c2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_lcp.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_r_record.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.ano3.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.i.m.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/cache.crc.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/comm.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/config2.xml.7edce36a
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mn_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mrpcs.data
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tdm_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tersafe.update
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_base.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_cfg2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_gp5.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_ice_bolt.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_lof.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_tcj.dat 
echo 8192 > /proc/sys/fs/inotify/max_user_watches
echo 128 > /proc/sys/fs/inotify/max_user_instances
echo 99999 > /proc/sys/fs/inotify/max_queued_events
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/databases
chmod 000 //data/data/com.tencent.tmgp.pubgmhd/files/*tmp*
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
echo -e "\033[41m清理成功 nianhua\033[0m"
echo 0 > /proc/sys/net/nf_conntrack_max
echo 0 > /proc/sys/net/unix/max_dgram_qlen
echo 0 > /proc/sys/kernel/max_lock_depth

rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/midas/log/com.tencent.tmgp.pubgmhd/

iptables -F 
iptables -X 
iptables -Z
ip6tables -F
ip6tables -X
ip6tables -Z

chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ace.r_k2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_app_915c.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cef.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cs_stat2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_emu_c2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_lcp.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_r_record.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.ano3.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.i.m.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/cache.crc.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/comm.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/config2.xml.7edce36a
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mn_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mrpcs.data
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tdm_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tersafe.update
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_base.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_cfg2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_gp5.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_ice_bolt.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_lof.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_tcj.dat 
echo 8192 > /proc/sys/fs/inotify/max_user_watches
echo 128 > /proc/sys/fs/inotify/max_user_instances
echo 99999 > /proc/sys/fs/inotify/max_queued_events
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/databases
chmod 000 //data/data/com.tencent.tmgp.pubgmhd/files/*tmp*
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
echo -e "\033[41m清理成功 nianhua\033[0m"
echo 开始运行清理残留zccnb
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files

#mv /data/data/com.tencent.tmgp.pubgmhd/lib /data/data/com.tencent.tmgp.pubgmhd/.lib
#rm -rf /data/data/com.tencent.tmgp.pubgmhd/*
#mv /data/data/com.tencent.tmgp.pubgmhd/.lib /data/data/com.tencent.tmgp.pubgmhd/lib

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd
echo 成功 更改ID

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   PKG=com.tencent.tmgp.pubgmhd
ID=$(grep $PKG /data/system/users/0/settings_ssaid.xml | awk -F'"' '{print $6}')
for i in $(seq 16)
do P=$P$(uuidgen|head -c 1|tr '-' -d)
done
sed -i s/$ID/$P/g /data/system/users/0/settings_ssaid.xml
RELEASE=`date +%Y:%m:%d:%H:%M:%S`
rm -rf /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/*
echo -e "\033[34m QW正在尝试执行任务 \033[0m"
echo -e "\033[32m 200 OK\033[0m"
echo -e "\033[36m Trying to load \033[0m"
echo -e "\033[32m 100％ \033[0m"
echo -e "\033[32m 1% \033[0m"

rm -rf /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/*
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp

echo -e ">>>>>>>>>>>>>>>>>>>>>>>>>> 开始运行脚本 >>>>>>>>>>>>>>>>>>>>>>>>>>"

system_path=/private/var/mobile/Containers/Data/Application
app_path=""
for file in $system_path/*; do
    if [ -d "$file/Documents/ShadowTrackerExtra" ];then
		app_path="$file"
	fi
done

echo -e "找到和平精英根目录: $app_path"

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

# 删除 /Library/ts
delete_path=$app_path/Library/ts
rm -rf $delete_path
echo "删除 $delete_path 完成"

echo 正在清理...
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files


mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd

rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/midas/log/com.tencent.tmgp.pubgmhd/

iptables -F 
iptables -X 
iptables -Z
ip6tables -F
ip6tables -X
ip6tables -Z

chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ace.r_k2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_app_915c.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cef.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cs_stat2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_emu_c2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_lcp.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_r_record.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.ano3.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.i.m.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/cache.crc.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/comm.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/config2.xml.7edce36a
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mn_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mrpcs.data
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tdm_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tersafe.update
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_base.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_cfg2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_gp5.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_ice_bolt.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_lof.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_tcj.dat 
echo 8192 > /proc/sys/fs/inotify/max_user_watches
echo 128 > /proc/sys/fs/inotify/max_user_instances
echo 99999 > /proc/sys/fs/inotify/max_queued_events
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/databases
chmod 000 //data/data/com.tencent.tmgp.pubgmhd/files/*tmp*
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/midas/log/com.tencent.tmgp.pubgmhd/

iptables -F 
iptables -X 
iptables -Z
ip6tables -F
ip6tables -X
ip6tables -Z

chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ace.r_k2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_app_915c.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cef.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cs_stat2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_emu_c2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_lcp.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_r_record.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.ano3.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.i.m.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/cache.crc.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/comm.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/config2.xml.7edce36a
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mn_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mrpcs.data
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tdm_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tersafe.update
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_base.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_cfg2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_gp5.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_ice_bolt.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_lof.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_tcj.dat 
echo 8192 > /proc/sys/fs/inotify/max_user_watches
echo 128 > /proc/sys/fs/inotify/max_user_instances
echo 99999 > /proc/sys/fs/inotify/max_queued_events
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/databases
chmod 000 //data/data/com.tencent.tmgp.pubgmhd/files/*tmp*
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files

mv /data/data/com.tencent.tmgp.pubgmhd/lib /data/data/com.tencent.tmgp.pubgmhd/.lib
rm -rf /data/data/com.tencent.tmgp.pubgmhd/*
rm -r /data/user/0/com.tencent.tmgp.pubgmhd/files/ano_tmp
mv /data/data/com.tencent.tmgp.pubgmhd/.lib /data/data/com.tencent.tmgp.pubgmhd/lib
iptables -F 
iptables -X 
iptables -Z
ip6tables -F
ip6tables -X
ip6tables -Z
RELEASE=`date +%Y:%m:%d:%H:%M:%S`
rm -rf /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/*


rm -rf /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/*
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
echo 0 > /proc/sys/net/nf_conntrack_max
echo 0 > /proc/sys/net/unix/max_dgram_qlen
echo 0 > /proc/sys/kernel/max_lock_depth

rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/midas/log/com.tencent.tmgp.pubgmhd/
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files

#mv /data/data/com.tencent.tmgp.pubgmhd/lib /data/data/com.tencent.tmgp.pubgmhd/.lib
#rm -rf /data/data/com.tencent.tmgp.pubgmhd/*
#mv /data/data/com.tencent.tmgp.pubgmhd/.lib /data/data/com.tencent.tmgp.pubgmhd/lib

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files

#mv /data/data/com.tencent.tmgp.pubgmhd/lib /data/data/com.tencent.tmgp.pubgmhd/.lib
#rm -rf /data/data/com.tencent.tmgp.pubgmhd/*
#mv /data/data/com.tencent.tmgp.pubgmhd/.lib /data/data/com.tencent.tmgp.pubgmhd/lib

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd
sed -i s/$ID/$P/g /data/system/users/0/settings_ssaid.xml
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files

#mv /data/data/com.tencent.tmgp.pubgmhd/lib /data/data/com.tencent.tmgp.pubgmhd/.lib
#rm -rf /data/data/com.tencent.tmgp.pubgmhd/*
#mv /data/data/com.tencent.tmgp.pubgmhd/.lib /data/data/com.tencent.tmgp.pubgmhd/lib

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd

# 客户端，隔离，10年后可用
# 清除数据异常日志成功√
#
# 请修改设备ID后再上游戏
# by雨落
# 否则游戏又会在本地生成该设备的封禁信息日志
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_appcache
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_bugly
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_cn.wsds.sdk.game.data
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_crashSight
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_crashrecord
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_databases
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_dex
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_geolocation
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_midaslib_1
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_midasodex
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_midasplugins
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_msdk
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_pluginlib
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_qmsp
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_tbs
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_tbs_64/
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_tbs_64/core_private
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_tbs_64/core_share
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_textures
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_tga_live_plugin
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_turingdfp
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_turingfd
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_turingsmi
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_webview
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_webview_msdk_inner_webview
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/aware_learning_data
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_webview_slugsdk_ingame_webview
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_webviewxcache
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_webviewxcachedatabases
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/app_x5webview
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/cache
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/cache/WebView
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/code_cache
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/databases
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/.iii
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/.sys
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/.system_android_l2
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/SpeedUpCCH.dat
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/SpeedUpSHC.dat
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/TDM_KV.log.0
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/TDM_KV.log.10
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/Tencent
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/ace_shell_db.dat
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cef.dat
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/ano_tmp/comm.dat
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_cfg2.dat
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/apm_cc
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/app
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/beacon
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/com.gcloudsdk.gcloud.gvoice
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/com.gcloudsdk.gcloud.gvoice/GVoiceLog/libwxvoiceembed.bin
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/com.tencent.open.config.json.*
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/com.tencent.tmgp.pubgmhd/logging_cache
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/com_tencent_msdk_cacert.*
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/data
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/hawk_data
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/hw_cached_resid.list
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/libwbsafeedit_64.so
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/files/tbs
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/shared_prefs
rm -rf /data/user_de/0/com.tencent.tmgp.pubgmhd/*
rm -rf /storage/emulated/0/.init
rm -rf /storage/emulated/0/.turing.dat
rm -rf /storage/emulated/0/.zzz
rm -rf /storage/emulated/0/Android/data/com.tencent.mobileqq/Tencent/QQfile_recv/.TbsReaderTempcom.tencent.mobileqq
rm -rf /storage/emulated/0/Android/data/com.tencent.mobileqq/Tencent/QQfile_recv/.tmp
rm -rf /storage/emulated/0/Android/data/com.tencent.mobileqq/Tencent/QQfile_recv/.trooptmp
rm -rf /storage/emulated/0/Android/data/com.tencent.mobileqq/Tencent/log/*
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.fff
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.system_android_l2
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.vmppd
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/MSDKLog.log.0
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/CONTENT
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/Engine/Saved/Config/Android/Manifest.ini
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/ActImageSaved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Demos
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/ImageDownload
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/ImageDownloadV3
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/cdn_version.json
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/filelist.json
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/teg-pcdnvodsdk.txt.xlog
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Cookies/*
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Paks/*
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/*NewActSaveEx.sav
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/3*
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Screenshots
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/ShareImageDownload
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/TextureConfig
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UGC
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/*
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/down.voice
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/pixuicache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ca-bundle.pem
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/midas
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent
rm -rf /storage/emulated/0/QTAudioEngine
rm -rf /storage/emulated/0/Tencent/MidasPay
rm -rf /storage/emulated/0/Tencent/MobileQQ
rm -rf /storage/emulated/0/Tencent/ams
rm -rf /storage/emulated/0/Tencent/msflogs
rm -rf /storage/emulated/0/Tencent/tbs
rm -rf /storage/emulated/0/Tencent/tmp
rm -rf /storage/emulated/0/com/tencent
rm -rf /storage/emulated/0/tencent/QQInput/Log/*
rm -rf /storage/emulated/0/tga/
rm -rf /storage/emulated/0/xml.dat
rm -rf /data/data/com.tencent.tmgp.pubgmhd/files/TAPM_CM_AUDIT
# -R 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
rm -rf /data/data/com.tencent.tmgp.pubgmhd/files/slugsdkconfig.json
rm -rf /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/config3.xml
rm -rf /data/user_de/0/com.tencent.tmgp.pubgmhd
rm -rf /data/data/com.tencent.tmgp.pubgmhd/files/

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   PKG=com.tencent.tmgp.pubgmhd
ID=$(grep $PKG /data/system/users/0/settings_ssaid.xml | awk -F'"' '{print $6}')
for i in $(seq 16)
do P=$P$(uuidgen|head -c 1|tr '-' -d)
done
sed -i s/$ID/$P/g /data/system/users/0/settings_ssaid.xml

echo 0 > /proc/sys/net/nf_conntrack_max
echo 清理成功
echo 0 > /proc/sys/net/unix/max_dgram_qlen
echo 清理成功
echo 0 > /proc/sys/kernel/max_lock_depth
echo 清理成功

rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/midas/log/com.tencent.tmgp.pubgmhd/

iptables -F 
iptables -X 
iptables -Z
ip6tables -F
ip6tables -X
ip6tables -Z

chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ace.r_k2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_app_915c.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cef.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cs_stat2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_emu_c2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_lcp.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_r_record.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.ano3.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.i.m.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/cache.crc.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/comm.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/config2.xml.7edce36a
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mn_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mrpcs.data
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tdm_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tersafe.update
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_base.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_cfg2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_gp5.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_ice_bolt.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_lof.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_tcj.dat 
echo 8192 > /proc/sys/fs/inotify/max_user_watches
echo 128 > /proc/sys/fs/inotify/max_user_instances
echo 99999 > /proc/sys/fs/inotify/max_queued_events
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/databases
chmod 000 //data/data/com.tencent.tmgp.pubgmhd/files/*tmp*
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
echo -e "\033[41m清理成功\033[0m"

# 修改完成，需重启系统后生效 √

# -n "时间："
date "+%Y年%H时%M分%S秒"
# -n "设备："
getprop ro.product.brand
# -n "设备类型："
getprop ro.product.model


# 正在清理...
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files

#mv /data/data/com.tencent.tmgp.pubgmhd/lib /data/data/com.tencent.tmgp.pubgmhd/.lib
#rm -rf /data/data/com.tencent.tmgp.pubgmhd/*
#mv /data/data/com.tencent.tmgp.pubgmhd/.lib /data/data/com.tencent.tmgp.pubgmhd/lib

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd

#
# 清除封号日志成功
#
# 请修改设备ID后再上游戏
#
# 否则游戏又会在本地生成该设备的封禁信息日志
# 0 > /proc/sys/net/nf_conntrack_max
# 0 > /proc/sys/net/unix/max_dgram_qlen
# 0 > /proc/sys/kernel/max_lock_depth

rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/midas/log/com.tencent.tmgp.pubgmhd/

# -F 
# -X 
# -Z
# -F
# -X
# -Z

# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ace.r_k2.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_app_915c.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cef.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cs_stat2.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_emu_c2.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_lcp.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_r_record.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.ano3.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.i.m.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/cache.crc.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/comm.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/config2.xml.7edce36a
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mn_cache.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mrpcs.data
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tdm_cache.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tersafe.update
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_base.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_cfg2.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_gp5.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_ice_bolt.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_lof.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_tcj.dat 
# 8192 > /proc/sys/fs/inotify/max_user_watches
# 128 > /proc/sys/fs/inotify/max_user_instances
# 16384 > /proc/sys/fs/inotify/max_queued_events
# 000 /data/data/com.tencent.tmgp.pubgmhd/databases
# 000 //data/data/com.tencent.tmgp.pubgmhd/files/*tmp*
# 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
# -e "\033[41m清理成功 皮干牛逼\033[0m"
# 25
#

# 正在清理...
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files

#mv /data/data/com.tencent.tmgp.pubgmhd/lib /data/data/com.tencent.tmgp.pubgmhd/.lib
#rm -rf /data/data/com.tencent.tmgp.pubgmhd/*
#mv /data/data/com.tencent.tmgp.pubgmhd/.lib /data/data/com.tencent.tmgp.pubgmhd/lib

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd

#
# 清除封号日志成功√
#
# 请修改设备ID后再上游戏
#
# 否则游戏又会在本地生成该设备的封禁信息日志

# 正在清理...
am force-stop com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.mapversion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/mapversion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SrcVersion.ini /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SrcVersion.ini
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Config /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.SaveGames /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.Paks /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/.rawdata /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/rawdata
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/.Saved /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/.ShadowTrackerExtra /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.ProgramBinaryCache /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/ProgramBinaryCache
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/.UE4Game /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/*
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/.files /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files

#mv /data/data/com.tencent.tmgp.pubgmhd/lib /data/data/com.tencent.tmgp.pubgmhd/.lib
#rm -rf /data/data/com.tencent.tmgp.pubgmhd/*
#mv /data/data/com.tencent.tmgp.pubgmhd/.lib /data/data/com.tencent.tmgp.pubgmhd/lib

mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1
pm clear com.tencent.tmgp.pubgmhd
mv /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd1 /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd

#
# 清除封号日志成功√
#
# 请修改设备ID后再上游戏
#
# 否则游戏又会在本地生成该设备的封禁信息日志
echo 0 > /proc/sys/net/nf_conntrack_max
echo 0 > /proc/sys/net/unix/max_dgram_qlen
echo 0 > /proc/sys/kernel/max_lock_depth

rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GameJoyRecorder/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloudSDKLog/GCloud/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tbslog/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/TPush/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/tencent/mobileqq/opensdk/logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/TGPA/Log/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PandoraV2/Logs/
rm -rf /storage/emulated/999/Android/data/com.tencent.tmgp.pubgmhd/files/login-identifier.txt
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/midas/log/com.tencent.tmgp.pubgmhd/

# -F 
# -X 
# -Z
# -F
# -X
# -Z

# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ace.r_k2.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_app_915c.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cef.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cs_stat2.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_emu_c2.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_lcp.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_r_record.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.ano3.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.i.m.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/cache.crc.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/comm.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/config2.xml.7edce36a
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mn_cache.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mrpcs.data
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tdm_cache.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tersafe.update
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_base.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_cfg2.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_gp5.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_ice_bolt.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_lof.dat
# 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_tcj.dat 
echo 8192 > /proc/sys/fs/inotify/max_user_watches
echo 128 > /proc/sys/fs/inotify/max_user_instances
echo 16384 > /proc/sys/fs/inotify/max_queued_events

chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ace.r_k2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_app_915c.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cef.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_cs_stat2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_emu_c2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_lcp.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano_r_record.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.ano3.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/ano.i.m.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/cache.crc.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/comm.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/config2.xml.7edce36a
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mn_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/mrpcs.data
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tdm_cache.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tersafe.update
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_base.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_cfg2.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_gp5.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_lof.dat
chmod 0 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp/tss_tcj.dat 
echo 8192 > /proc/sys/fs/inotify/max_user_watches
echo 128 > /proc/sys/fs/inotify/max_user_instances
echo 99999 > /proc/sys/fs/inotify/max_queued_events
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/databases
chmod 000 //data/data/com.tencent.tmgp.pubgmhd/files/*tmp*
chmod 000 /data/data/com.tencent.tmgp.pubgmhd/files/ano_tmp
echo -e "\033[41m---清理文件成功---\033[0m"
echo -e "\033[41m---重启即可---\033[0m"
echo -e "\033[41m---六花全防---\033[0m"
