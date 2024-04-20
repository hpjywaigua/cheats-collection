#小昊大牛开源
#电报频道 @XH666gy
while true
do
echo -e "\033[46;;1m1.Clear\033[0m"
echo -e "\033[41;;1m2.Databackflow\033[0m"
echo -e "\033[45;;1m3.使用说明\033[0m"
echo -n "\033[32;;1m点击右下角Im输入操作对应的数字:"
# 读取用户的选择
read choice

# 根据用户的选择执行相应的操作
case $choice in
    1)
echo -e "\033[35;;1m正在执行Clear,请耐心等待\033[0m"
        # 在这里添加操作1的代码
rm -rf /storage/emulated/0/Android/obb/com.tencent.tmgp.pubgmhd
rm -rf /storage/emulated/0/Download/HANYCJLZOEUS_TOKEN2.dat
rm -rf /storage/emulated/0/Download/nbavmc_unxqbih.dat
rm -rf /storage/emulated/0/Download/juscrkat.dat
rm -rf /data/user/0/com.tencent.tmgp.pubgmhd/*
find /sdcard/Android -mindepth 1 -prune ! \( -name "data" -o -name "obb" -o -name "imei.log" -o -name "kami.log" \) -print0 | xargs -0 rm -rf
find /sdcard/Android/data/com.tencent.tmgp.pubgmhd -mindepth 1 -prune ! -name "files" -print0 | xargs -0 rm -rf
find /sdcard/Android/data/com.tencent.tmgp.pubgmhd/files -mindepth 1 -prune ! \( -name "ProgramBinaryCache" -o -name "UE4Game" \) -print0 | xargs -0 rm -rf
find /sdcard/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game -mindepth 1 -prune ! -name "ShadowTrackerExtra" -print0 | xargs -0 rm -rf
find /sdcard/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra -mindepth 1 -prune ! -name "ShadowTrackerExtra" -print0 | xargs -0 rm -rf
find /sdcard/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra -mindepth 1 -prune ! -name "Saved" -print0 | xargs -0 rm -rf
find /sdcard/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved -mindepth 1 -prune ! \( -name "Config" -o -name "Paks" -o -name "SaveGames" -o -name "SrcVersion.ini" \) -print0 | xargs -0 rm -rf
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/Arts_Timeliness
echo 0 > /proc/sys/net/nf_conntrack_max
echo 0 > /proc/sys/net/unix/max_dgram_qlen
echo 0 > /proc/sys/kernel/max_lock_depth
system_path=/private/var/mobile/Containers/Data/Application
app_path=""
for file in $system_path/*; do
    if [ -d "$file/Documents/ShadowTrackerExtra" ];then
		app_path="$file"
	fi
done
delete_path=$app_path/Documents/tss_tmp
rm -rf $delete_path
delete_path=$app_path/Documents/tdm.db
rm -rf $delete_path
delete_path=$app_path/Documents/tss_app_915c.dat
rm -rf $delete_path
delete_path=$app_path/Documents/tss_cs_stat2.dat
rm -rf $delete_path
delete_path=$app_path/Documents/api.tpns.sh.tencent.com_IPXL3G6EADY4_xgvipiotprivateserialization.b
rm -rf $delete_path
delete_path=$app_path/Documents/tss.i.m.dat
rm -rf $delete_path
delete_path=$app_path/Documents/tersafe.update
rm -rf $delete_path
delete_path=$app_path/Documents/ShadowTrackerExtra/Saved/Logs
rm -rf $delete_path
delete_path=$app_path/Documents/ShadowTrackerExtra/Saved/Config
rm -rf $delete_path
delete_path=$app_path/Library/Caches
rm -rf $delete_path
delete_path=$app_path/Library/'Saved Application State'
rm -rf $delete_path
delete_path=$app_path/Library/MidasLog
rm -rf $delete_path
delete_path=$app_path/Library/WebKit
rm -rf $delete_path
delete_path=$app_path/Library/Cookies
rm -rf $delete_path
delete_path=$app_path/Library/'Application Support'
rm -rf $delete_path
delete_path=$app_path/Library/APWsjGameConfInfo.plist
rm -rf $delete_path
delete_path=/private/var/gg_address
rm -rf $delete_path
delete_path=$app_path/Documents/sp_default.plist
rm -rf $delete_path
delete_path=$app_path/Library/'ts.records'
rm -rf $delete_path
delete_path=$app_path/Library/ts
rm -rf $delete_path
rm -rf /data/system/users/0/settings_ssaid.xml
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/vodPcdnMSdkreportLogStamp.log
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/vodPcdnMSdkPeerId.log
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/teg-pcdnvodsdk.txt.xlog
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/418021106_3012_*
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/eifsCache*
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/UGC_Outline
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/apollo_reslist.flist
rm -rf /storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/filelist.json

rm -rf /data/system/users/0/settings_ssaid.xml
echo -e "\033[35;;1m执行Clear完毕,正在为您重启\033[0m"
sleep 2s
reboot

        ;;
    2)
        # 在这里添加操作2的代码
prog_name="/data/temp"
name=$(tr -dc \'1-9\' < /dev/urandom | head -c 8)
while echo "$name" | grep -q "'"
do
name=$(tr -dc \'1-9\' < /dev/urandom | head -c 8)
done 
yy=$(getprop ro.serialno)
resetprop ro.serialno $name
yy=$(getprop ro.serialno)
iptables -I OUTPUT -p all -m string --string access1.tpns.sh.tencent.com --algo bm -j DROP
iptables -I OUTPUT -p all -m string --string android.crashsight.qq.com --algo bm -j DROP
iptables -I OUTPUT -p all -m string --string api.xunyou.mobi --algo bm -j DROP
iptables -I OUTPUT -p all -m string --string cdn.wetest.qq.com --algo bm -j DROP
iptables -I OUTPUT -p all -m string --string cfg.imtt.qq.com --algo bm -j DROP
iptables -I OUTPUT -p all -m string --string cgi.connect.qq.com --algo bm -j DROP
iptables -I OUTPUT -p all -m string --string cloudctrl.gcloud.qq.com --algo bm -j DROP
iptables -I OUTPUT -p all -m string --string csy.ll.tcdnos.com --algo bm -j DROP
iptables -I OUTPUT -p all -m string --string csy.pandora.tcdnos.com --algo bm -j DROP
iptables -I OUTPUT -p all -m string --string dldir1.qq.com --algo bm -j DROP
iptables -I OUTPUT -p all -m string --string down.pandora.qq.com --algo bm -j DROP
iptables -I OUTPUT -p all -m string --string game.gtimg.cn --algo bm -j DROP
iptables -I OUTPUT -p all -m string --string gpcloud.tgpa.qq.com --algo bm -j DROP
iptables -I OUTPUT -p all -m string --string h.trace.qq.com --algo bm -j DROP
iptables -I OUTPUT -p all -m string --string hpjy-op.tga.qq.com --algo bm -j DROP
iptables -I OUTPUT -p all -m string --string hpjy-report.tga.qq.com --algo bm -j DROP
iptables -I OUTPUT -p all -m string --string hpjytv-pic.tga.qq.com --algo bm -j DROP
iptables -I OUTPUT -p all -m string --string htrace.wetvinfo.com --algo bm -j DROP
iptables -I OUTPUT -p all -m string --string hwydown.ll.tcdnos.com --algo bm -j DROP
iptables -I OUTPUT -p all -m string --string hwypandora.ll.tcdnos.com --algo bm -j DROP
iptables -I OUTPUT -p all -m string --string idcconfig.gcloudsdk.com --algo bm -j DROP
iptables -I OUTPUT -p all -m string --string img.msdk.qq.com --algo bm -j DROP
iptables -I OUTPUT -p all -m string --string log.tbs.qq.com --algo bm -j DROP
iptables -I OUTPUT -p all -m string --string log.tpns.sh.tencent.com --algo bm -j DROP
iptables -I OUTPUT -p all -m string --string luyou360.cn --algo bm -j DROP
iptables -I OUTPUT -p all -m string --string mazu.m.qq.com --algo bm -j DROP
iptables -I OUTPUT -p all -m string --string otheve.beacon.qq.com --algo bm -j DROP
iptables -I OUTPUT -p all -m string --string portal.xunyou.mobi --algo bm -j DROP
iptables -I OUTPUT -p all -m string --string qos.189.cn --algo bm -j DROP
iptables -I OUTPUT -p all -m string --string qos.game.qq.com --algo bm -j DROP
iptables -I OUTPUT -p all -m string --string qos.game.qq.com:8080 --algo bm -j DROP
iptables -I OUTPUT -p all -m string --string snowflake.qq.com --algo bm -j DROP
iptables -I OUTPUT -p all -m string --string tbsrecovery.imtt.qq.com --algo bm -j DROP
iptables -I OUTPUT -p all -m string --string tbstx.csy.tcdnos.com --algo bm -j DROP
iptables -I OUTPUT -p all -m string --string tdid.m.qq.com --algo bm -j DROP
iptables -I OUTPUT -p all -m string --string thirdwx.qlogo.cn --algo bm -j DROP

rm -rf /data/system/users/0/settings_ssaid.xml
echo -e "\033[35;;1mDatabackflow执行完毕,上号奔放吧\033[0m"
        ;;


# 在这里添加操作3的代码
    3)
echo -e "\033[31;;1m1.wifi用户改id,执行操作一(会自动重启)接着重启路由器然后连上重启路由器后的wifi执行操作二即可;流量用户改id,执行操作一(自动重启),自动重启后开飞行模式再关接着执行操作二即可;有问题需要反馈请在电报(telegram)的官方群:@JCNBYYDS666说明\033[0m"
        ;;
    *)
esac
done                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        