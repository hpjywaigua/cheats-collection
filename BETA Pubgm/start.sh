path=`pm path com.tencent.igce | sed -E  's/(.*):(.*)/\2/'| sed -E 's/(.*)base.apk/\1/'`"lib/arm/"
sleep 0.2
cp -f `pwd`"/inject" $path"inject"
chmod 777 $path"inject"
cp -f `pwd`"/故雪.so" $path"故雪.so"
chmod 777 $path"故雪.so"
sleep 0.2
am start -n com.tencent.igce/com.epicgames.ue4.SplashActivity
sleep 3.5

$path"inject" --pname com.tencent.igce --libpath $path"故雪.so"