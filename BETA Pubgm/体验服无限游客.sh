kill com.tencent.igce
clear
rm -rf /data/data/com.tencent.igce/shared_prefs
mkdir /data/data/com.tencent.igce/shared_prefs
chmod 777 /data/data/com.tencent.igce/shared_prefs
rm -rf /data/data/com.tencent.igce/files
touch /data/data/com.tencent.igce/files
GUEST="/data/data/com.tencent.igce/shared_prefs/device_id.xml"
rm -rf $GUEST
echo "<?xml version='1.0' encoding='utf-8' standalone='yes' ?>
<map>
    <string name=\"random\"></string>
    <string name=\"install\"></string>
    <string name=\"uuid\">$RANDOM$RANDOM-$RANDOM-$RANDOM-$RANDOM-$RANDOM$RANDOM$RANDOM</string>
</map>" > $GUEST
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
echo "\033[0;32m\体验服无限游客\e[0m\n"