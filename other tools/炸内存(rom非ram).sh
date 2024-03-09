
count=0

while true
do
    count=$((count+1))
    touch /storage/emulated/0/${count}文件
    echo "写入内容" > /storage/emulated/0/${count}文件
    #延迟执行
    sleep 1
    #把sleep命令注释掉就生成很快了
done
echo -e "\033[41m电报频道:Czenb6\033[0m"