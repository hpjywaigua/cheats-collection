echo "请输入游戏包名"
read bm

if [ "$(dumpsys package $bm | grep -c "arm64-v8a")" == "0" ];then
echo "当前游戏为32位\n正在转64位..."
echo "过程略长，请耐心等待..."
su -c pm path $bm | sed -E  's/(.*):(.*)/\2/'|xargs pm install -r --abi arm64-v8a
echo "ok"
else
echo "当前游戏为64位\n正在转32位...,"
echo "过程略长，请耐心等待..."
su -c pm path $bm | sed -E  's/(.*):(.*)/\2/'|xargs pm install -r --abi armeabi-v7a
echo "ok"
fi