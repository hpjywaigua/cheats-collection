#!/bin/sh

# 获取root权限
if [ "$(id -u)" != "0" ]; then
echo "\033[31m \n\n\n        必须以 ROOT 权限执行\n\n \033[0m" 
   exit 
fi


xsnb666() {
clear
printf "
════•   •✠•ᥬ🌝᭄ᥬᥬ🌚᭄•✠ •   •════

无限游客
TG频道:@jiekongnb1
此脚本为免费使用 不要进行2次修改收费圈钱谢谢

════•   •✠•ᥬ🌝᭄ᥬᥬ🌚᭄•✠ •   •════
"
}


xsnb666
printf "
 

 1\> 国际服
 2\> 日韩服
 3\> 台湾服
 4\> 国体服
 5\> 越南服
 6\> 全部重置
 7\> 一键加入群聊
 8\> 退出shell脚本
 
 

 点击下面Im输入数字: "
read -s XSNB

if [ $XSNB == 1 ]
then xsnb666
kill com.tencent.ig
clear
rm -rf /data/data/com.tencent.ig/shared_prefs
mkdir /data/data/com.tencent.ig/shared_prefs
chmod 777 /data/data/com.tencent.ig/shared_prefs
mkdir -p /data/data/com.tencent.ig/files/ano_tmp
chmod 000 /data/data/com.tencent.ig/files/ano_tmp
xsyyds="/data/data/com.tencent.ig/shared_prefs/device_id.xml"
rm -rf $xsyyds
echo "<?xml version='1.0' encoding='utf-8' standalone='yes' ?>
<map>
    <string name=\"random\"></string>
    <string name=\"install\"></string>
    <string name=\"uuid\">$RANDOM$RANDOM-$RANDOM-$RANDOM-$RANDOM-$RANDOM$RANDOM$RANDOM</string>
</map>" > $xsyyds
rm -rf /data/data/com.tencent.ig/databases
rm -rf /data/media/0/Android/data/com.tencent.ig/files/login-identifier.txt
rm -rf /data/media/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Intermediate
touch /data/media/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Intermediate
rm -rf /data/media/0/Android/data/com.tencent.ig/files/TGPA
touch /data/media/0/Android/data/com.tencent.ig/files/TGPA
rm -rf /data/media/0/Android/data/com.tencent.ig/files/ProgramBinaryCache
touch /data/media/0/Android/data/com.tencent.ig/files/ProgramBinaryCache
iptables -I OUTPUT -d cloud.vmp.onezapp.com -j REJECT
iptables -I INPUT -s cloud.vmp.onezapp.com -j REJECT
clear
echo "国际服游客成功"
fi



if [ $XSNB == 2 ]
then xsnb666
kill com.pubg.krmobile
clear
rm -rf /data/data/com.pubg.krmobile/shared_prefs
mkdir /data/data/com.pubg.krmobile/shared_prefs
chmod 777 /data/data/com.pubg.krmobile/shared_prefs
rm -rf /data/data/com.pubg.krmobile/files
touch /data/data/com.pubg.krmobile/files
xsyyds="/data/data/com.pubg.krmobile/shared_prefs/device_id.xml"
rm -rf $xsyyds
echo "<?xml version='1.0' encoding='utf-8' standalone='yes' ?>
<map>
    <string name=\"random\"></string>
    <string name=\"install\"></string>
    <string name=\"uuid\">$RANDOM$RANDOM-$RANDOM-$RANDOM-$RANDOM-$RANDOM$RANDOM$RANDOM</string>
</map>" > $xsyyds
rm -rf /data/data/com.pubg.krmobile/databases
rm -rf /data/media/0/Android/data/com.pubg.krmobile/files/login-identifier.txt
rm -rf /data/media/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Intermediate
touch /data/media/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Intermediate
rm -rf /data/media/0/Android/data/com.pubg.krmobile/files/TGPA
touch /data/media/0/Android/data/com.pubg.krmobile/files/TGPA
rm -rf /data/media/0/Android/data/com.pubg.krmobile/files/ProgramBinaryCache
touch /data/media/0/Android/data/com.pubg.krmobile/files/ProgramBinaryCache
iptables -I OUTPUT -d cloud.vmp.onezapp.com -j REJECT
iptables -I INPUT -s cloud.vmp.onezapp.com -j REJECT
clear
echo "日韩服游客成功"
fi

if [ $XSNB == 3 ]
then xsnb666
kill com.rekoo.pubgm
clear
rm -rf /data/data/com.rekoo.pubgm/shared_prefs
mkdir /data/data/com.rekoo.pubgm/shared_prefs
chmod 777 /data/data/com.rekoo.pubgm/shared_prefs
rm -rf /data/data/com.rekoo.pubgm/files
touch /data/data/com.rekoo.pubgm/files
xsyyds="/data/data/com.rekoo.pubgm/shared_prefs/device_id.xml"
rm -rf $xsyyds
echo "<?xml version='1.0' encoding='utf-8' standalone='yes' ?>
<map>
    <string name=\"random\"></string>
    <string name=\"install\"></string>
    <string name=\"uuid\">$RANDOM$RANDOM-$RANDOM-$RANDOM-$RANDOM-$RANDOM$RANDOM$RANDOM</string>
</map>" > $xsyyds
rm -rf /data/data/com.rekoo.pubgm/databases
rm -rf /data/media/0/Android/data/com.rekoo.pubgm/files/login-identifier.txt
rm -rf /data/media/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Intermediate
touch /data/media/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Intermediate
rm -rf /data/media/0/Android/data/com.rekoo.pubgm/files/TGPA
touch /data/media/0/Android/data/com.rekoo.pubgm/files/TGPA
rm -rf /data/media/0/Android/data/com.rekoo.pubgm/files/ProgramBinaryCache
touch /data/media/0/Android/data/com.rekoo.pubgm/files/ProgramBinaryCache
iptables -I OUTPUT -d cloud.vmp.onezapp.com -j REJECT
iptables -I INPUT -s cloud.vmp.onezapp.com -j REJECT
clear
echo "台湾服游客成功"
fi


if [ $XSNB == 4 ]
then xsnb666
kill com.tencent.igce
clear
rm -rf /data/data/com.tencent.igce/shared_prefs
mkdir /data/data/com.tencent.igce/shared_prefs
chmod 777 /data/data/com.tencent.igce/shared_prefs
xsyyds="/data/data/com.tencent.igce/shared_prefs/device_id.xml"
rm -rf $xsyyds
echo "<?xml version='1.0' encoding='utf-8' standalone='yes' ?>
<map>
    <string name=\"random\"></string>
    <string name=\"install\"></string>
    <string name=\"uuid\">$RANDOM$RANDOM-$RANDOM-$RANDOM-$RANDOM-$RANDOM$RANDOM$RANDOM</string>
</map>" > $xsyyds
rm -rf /data/data/com.tencent.igce/databases
rm -rf /data/media/0/Android/data/com.tencent.igce/files/login-identifier.txt
rm -rf /data/media/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Intermediate
touch /data/media/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Intermediate
rm -rf /data/media/0/Android/data/com.tencent.igce/files/TGPA
touch /data/media/0/Android/data/com.tencent.igce/files/TGPA
rm -rf /data/media/0/Android/data/com.tencent.igce/files/ProgramBinaryCache
touch /data/media/0/Android/data/com.tencent.igce/files/ProgramBinaryCache
iptables -I OUTPUT -d cloud.vmp.onezapp.com -j REJECT
iptables -I INPUT -s cloud.vmp.onezapp.com -j REJECT
clear
echo "国体服游客成功"
fi

if [ $XSNB == 5 ]
then xsnb666
kill com.vng.pubgmobile
clear
rm -rf /data/data/com.vng.pubgmobile/shared_prefs
mkdir /data/data/com.vng.pubgmobile/shared_prefs
chmod 777 /data/data/com.vng.pubgmobile/shared_prefs
rm -rf /data/data/com.vng.pubgmobile/files
touch /data/data/com.vng.pubgmobile/files
xsyyds="/data/data/com.vng.pubgmobile/shared_prefs/device_id.xml"
rm -rf $xsyyds
echo "<?xml version='1.0' encoding='utf-8' standalone='yes' ?>
<map>
    <string name=\"random\"></string>
    <string name=\"install\"></string>
    <string name=\"uuid\">$RANDOM$RANDOM-$RANDOM-$RANDOM-$RANDOM-$RANDOM$RANDOM$RANDOM</string>
</map>" > $xsyyds
rm -rf /data/data/com.vng.pubgmobile/databases
rm -rf /data/media/0/Android/data/com.vng.pubgmobile/files/login-identifier.txt
rm -rf /data/media/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Intermediate
touch /data/media/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Intermediate
rm -rf /data/media/0/Android/data/com.vng.pubgmobile/files/TGPA
touch /data/media/0/Android/data/com.vng.pubgmobile/files/TGPA
rm -rf /data/media/0/Android/data/com.vng.pubgmobile/files/ProgramBinaryCache
touch /data/media/0/Android/data/com.vng.pubgmobile/files/ProgramBinaryCache
iptables -I OUTPUT -d cloud.vmp.onezapp.com -j REJECT
iptables -I INPUT -s cloud.vmp.onezapp.com -j REJECT
clear
echo "越南服游客成功"
fi

if [ $XSNB == 6 ]
then xsnb666
kill com.tencent.ig
kill com.tencent.igce
clear
rm -rf /data/data/com.tencent.ig/shared_prefs
mkdir /data/data/com.tencent.ig/shared_prefs
chmod 777 /data/data/com.tencent.ig/shared_prefs
touch /data/data/com.tencent.ig/files
xsyyds="/data/data/com.tencent.ig/shared_prefs/device_id.xml"
rm -rf $xsyyds
echo "<?xml version='1.0' encoding='utf-8' standalone='yes' ?>
<map>
    <string name=\"random\"></string>
    <string name=\"install\"></string>
    <string name=\"uuid\">$RANDOM$RANDOM-$RANDOM-$RANDOM-$RANDOM-$RANDOM$RANDOM$RANDOM</string>
</map>" > $xsyyds
rm -rf /data/data/com.tencent.ig/databases
rm -rf /data/media/0/Android/data/com.tencent.ig/files/login-identifier.txt
rm -rf /data/media/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Intermediate
touch /data/media/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Intermediate
rm -rf /data/media/0/Android/data/com.tencent.ig/files/TGPA
touch /data/media/0/Android/data/com.tencent.ig/files/TGPA
rm -rf /data/media/0/Android/data/com.tencent.ig/files/ProgramBinaryCache
touch /data/media/0/Android/data/com.tencent.ig/files/ProgramBinaryCache
iptables -I OUTPUT -d cloud.vmp.onezapp.com -j REJECT
iptables -I INPUT -s cloud.vmp.onezapp.com -j REJECT
clear
kill com.pubg.krmobile
clear
rm -rf /data/data/com.pubg.krmobile/shared_prefs
mkdir /data/data/com.pubg.krmobile/shared_prefs
chmod 777 /data/data/com.pubg.krmobile/shared_prefs
rm -rf /data/data/com.pubg.krmobile/files
touch /data/data/com.pubg.krmobile/files
xsyyds="/data/data/com.pubg.krmobile/shared_prefs/device_id.xml"
rm -rf $xsyyds
echo "<?xml version='1.0' encoding='utf-8' standalone='yes' ?>
<map>
    <string name=\"random\"></string>
    <string name=\"install\"></string>
    <string name=\"uuid\">$RANDOM$RANDOM-$RANDOM-$RANDOM-$RANDOM-$RANDOM$RANDOM$RANDOM</string>
</map>" > $xsyyds
rm -rf /data/data/com.pubg.krmobile/databases
rm -rf /data/media/0/Android/data/com.pubg.krmobile/files/login-identifier.txt
rm -rf /data/media/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Intermediate
touch /data/media/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Intermediate
rm -rf /data/media/0/Android/data/com.pubg.krmobile/files/TGPA
touch /data/media/0/Android/data/com.pubg.krmobile/files/TGPA
rm -rf /data/media/0/Android/data/com.pubg.krmobile/files/ProgramBinaryCache
touch /data/media/0/Android/data/com.pubg.krmobile/files/ProgramBinaryCache
iptables -I OUTPUT -d cloud.vmp.onezapp.com -j REJECT
iptables -I INPUT -s cloud.vmp.onezapp.com -j REJECT
clear
kill com.rekoo.pubgm
clear
rm -rf /data/data/com.rekoo.pubgm/shared_prefs
mkdir /data/data/com.rekoo.pubgm/shared_prefs
chmod 777 /data/data/com.rekoo.pubgm/shared_prefs
rm -rf /data/data/com.rekoo.pubgm/files
touch /data/data/com.rekoo.pubgm/files
xsyyds="/data/data/com.rekoo.pubgm/shared_prefs/device_id.xml"
rm -rf $xsyyds
echo "<?xml version='1.0' encoding='utf-8' standalone='yes' ?>
<map>
    <string name=\"random\"></string>
    <string name=\"install\"></string>
    <string name=\"uuid\">$RANDOM$RANDOM-$RANDOM-$RANDOM-$RANDOM-$RANDOM$RANDOM$RANDOM</string>
</map>" > $xsyyds
rm -rf /data/data/com.rekoo.pubgm/databases
rm -rf /data/media/0/Android/data/com.rekoo.pubgm/files/login-identifier.txt
rm -rf /data/media/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Intermediate
touch /data/media/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Intermediate
rm -rf /data/media/0/Android/data/com.rekoo.pubgm/files/TGPA
touch /data/media/0/Android/data/com.rekoo.pubgm/files/TGPA
rm -rf /data/media/0/Android/data/com.rekoo.pubgm/files/ProgramBinaryCache
touch /data/media/0/Android/data/com.rekoo.pubgm/files/ProgramBinaryCache
iptables -I OUTPUT -d cloud.vmp.onezapp.com -j REJECT
iptables -I INPUT -s cloud.vmp.onezapp.com -j REJECT
clear
rm -rf /data/data/com.tencent.igce/shared_prefs
mkdir /data/data/com.tencent.igce/shared_prefs
chmod 777 /data/data/com.tencent.igce/shared_prefs
rm -rf /data/data/com.tencent.igce/files
touch /data/data/com.tencent.igce/files
xsyyds="/data/data/com.tencent.igce/shared_prefs/device_id.xml"
rm -rf $xsyyds
echo "<?xml version='1.0' encoding='utf-8' standalone='yes' ?>
<map>
    <string name=\"random\"></string>
    <string name=\"install\"></string>
    <string name=\"uuid\">$RANDOM$RANDOM-$RANDOM-$RANDOM-$RANDOM-$RANDOM$RANDOM$RANDOM</string>
</map>" > $xsyyds
rm -rf /data/data/com.tencent.igce/databases
rm -rf /data/media/0/Android/data/com.tencent.igce/files/login-identifier.txt
rm -rf /data/media/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Intermediate
touch /data/media/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Intermediate
rm -rf /data/media/0/Android/data/com.tencent.igce/files/TGPA
touch /data/media/0/Android/data/com.tencent.igce/files/TGPA
rm -rf /data/media/0/Android/data/com.tencent.igce/files/ProgramBinaryCache
touch /data/media/0/Android/data/com.tencent.igce/files/ProgramBinaryCache
iptables -I OUTPUT -d cloud.vmp.onezapp.com -j REJECT
iptables -I INPUT -s cloud.vmp.onezapp.com -j REJECT
clear
kill com.vng.pubgmobile
clear
rm -rf /data/data/com.vng.pubgmobile/shared_prefs
mkdir /data/data/com.vng.pubgmobile/shared_prefs
chmod 777 /data/data/com.vng.pubgmobile/shared_prefs
rm -rf /data/data/com.vng.pubgmobile/files
touch /data/data/com.vng.pubgmobile/files
xsyyds="/data/data/com.vng.pubgmobile/shared_prefs/device_id.xml"
rm -rf $xsyyds
echo "<?xml version='1.0' encoding='utf-8' standalone='yes' ?>
<map>
    <string name=\"random\"></string>
    <string name=\"install\"></string>
    <string name=\"uuid\">$RANDOM$RANDOM-$RANDOM-$RANDOM-$RANDOM-$RANDOM$RANDOM$RANDOM</string>
</map>" > $xsyyds
rm -rf /data/data/com.vng.pubgmobile/databases
rm -rf /data/media/0/Android/data/com.vng.pubgmobile/files/login-identifier.txt
rm -rf /data/media/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Intermediate
touch /data/media/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Intermediate
rm -rf /data/media/0/Android/data/com.vng.pubgmobile/files/TGPA
touch /data/media/0/Android/data/com.vng.pubgmobile/files/TGPA
rm -rf /data/media/0/Android/data/com.vng.pubgmobile/files/ProgramBinaryCache
touch /data/media/0/Android/data/com.vng.pubgmobile/files/ProgramBinaryCache
iptables -I OUTPUT -d cloud.vmp.onezapp.com -j REJECT
iptables -I INPUT -s cloud.vmp.onezapp.com -j REJECT
clear
echo "越南服游客成功"
echo "国体服游客成功"
echo "国际服游客成功"
echo "日韩服游客成功"
echo "台湾服游客成功"
fi

if [ $XSNB == 7 ]
then xsnb666
am start -n org.telegram.messenger/org.telegram.ui.LaunchActivity https://t.me/cfsLXlo >> /dev/null
echo "如果没有跳转到群聊请手动加入谢谢"
fi

if [ $XSNB == 8 ]
then cfsLXlo
exit;
clear
fi

if [[ $XSNB == [9-10a-zA-Z] ]]
then xsnb666
 echo "输入正确选项!!!"
 exit;
fi
