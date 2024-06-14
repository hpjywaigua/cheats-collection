# Script name Telegram文件清理工具
# Version 1.1.0（202406041202）
# Author 𝙪𝙣𝙞𝙘𝙪𝙚𝙨
# TG https://t.me/xixi17177

#1.1.0 新增删除文件时的进程提示，并优化若干字句文本以及其颜色显示统一性问题
#1.0.1 修复了无效清理以及退出脚本时，输入指令错误执行的bug

#!/bin/sh

# 函数区
# 定义颜色
R='\033[0;31m' # Red 红色
G='\033[0;32m' # Green 绿色
Y='\033[1;33m' # Yellow 黄色
B='\033[0;34m' # Blue 蓝色
P='\033[0;35m' # Purple 紫色
N='\033[0m' # No color 重置颜色

# 定义文件夹路径
DIRECTORY1="/storage/emulated/0/Android/data/org.telegram.messenger/files/Telegram/Telegram Audio/" # 音频文件夹
DIRECTORY2="/storage/emulated/0/Android/data/org.telegram.messenger/files/Telegram/Telegram Documents/" # 贴纸文件夹
DIRECTORY3="/storage/emulated/0/Android/data/org.telegram.messenger/files/Telegram/Telegram Images/" # 图片文件夹
DIRECTORY4="/storage/emulated/0/Android/data/org.telegram.messenger/files/Telegram/Telegram Files/" # 文件类文件夹
DIRECTORY5="/storage/emulated/0/Android/data/org.telegram.messenger/files/Telegram/Telegram Video/" # 视频文件夹

# 定义累加文件大小记录文件
SIZE_RECORD_FILE="deleted_size_record.txt"

# 控制打印输出的停留时间
SLEEP_TIME=0.5

# 检查文件夹是否存在
for dir in "$DIRECTORY1" "$DIRECTORY2" "$DIRECTORY3" "$DIRECTORY4" "$DIRECTORY5"; do
    if [ ! -d "$dir" ]; then
        echo -e "${R}文件夹 $dir 不存在，脚本将退出。${N}"
        exit 1
    fi
done

# 初始化删除文件大小记录
if [ ! -f "$SIZE_RECORD_FILE" ]; then
    echo "0" > "$SIZE_RECORD_FILE"
fi

# 捕捉中断信号
trap "echo -e '\n脚本已中断。'; reset" SIGINT SIGTERM

# 转换文件大小单位
convert_size() {
    SIZE=$1
    if [ $SIZE -lt 1024 ]; then
        echo "${SIZE}B"
    elif [ $SIZE -lt $((1024 * 1024)) ]; then
        echo "$((SIZE / 1024))KB"
    elif [ $SIZE -lt $((1024 * 1024 * 1024)) ]; then
        echo "$((SIZE / 1024 / 1024))MB"
    else
        echo "$((SIZE / 1024 / 1024 / 1024))GB"
    fi
}

# 定义随机色
COLORS=("$R" "$G" "$Y" "$B" "$P")
RANDOM_COLOR=${COLORS[$RANDOM % ${#COLORS[@]}]}

# 打印脚本信息
echo -e "${RANDOM_COLOR}Telegram文件清理工具${N}"
echo -e "${RANDOM_COLOR}Version 1.1.0（202406041202）${N}"
echo -e "${RANDOM_COLOR}Author 𝙪𝙣𝙞𝙘𝙪𝙚𝙨${N}"
echo -e "${RANDOM_COLOR}TG https://t.me/xixi17177${N}"
echo -e "${RANDOM_COLOR}Announcement 新增删除文件时的进程提示，并优化若干字句文本以及其颜色显示统一性问题${N}"
echo -e "${RANDOM_COLOR}Tip 请给文件777权限并root执行${N}"

# 菜单
show_menu() {
    echo -e "\n\033[41m开始清理Telegram文件\033[0m\n"
    sleep $SLEEP_TIME
    echo -e "输入以下序号以进行清理\n${P}1、音频\n${B}2、贴纸\n${G}3、图片\n${Y}4、文件\n${R}5、视频\n${N}6、指定后缀文件\n"
    sleep $SLEEP_TIME
    echo "请输入: "
}

#执行区
confirm_deletion() {
    while true; do
        echo "确认删除这些文件吗？(Y/N)  大小写均可"
        read choice
        case "$choice" in
            Y|y )
                return 0
                ;;
            N|n )
                echo -e "${Y}取消删除，返回主菜单..."
                sleep $SLEEP_TIME
                return 1
                ;;
            * )
                echo -e "${R}非法输入${N}，请输入Y或N。"
                sleep $SLEEP_TIME
                ;;
        esac
    done
}

delete_files() {
    DIRECTORY=$1
    TYPE=$2
    echo -e "\n\n\033[41m${TYPE}文件如下！\033[0m\n"
    sleep $SLEEP_TIME

    FILE_LIST=$(ls -A "$DIRECTORY")
    if [ -z "$FILE_LIST" ]; then
        echo -e "${G}无可清理文件${N}"
        sleep $SLEEP_TIME
        return
    fi

    echo "$FILE_LIST"

    if ! confirm_deletion; then
        return
    fi

    TOTAL_SIZE=0
    for file in "$DIRECTORY"/*; do
        FILE_SIZE=$(stat -c%s "$file")
        TOTAL_SIZE=$((TOTAL_SIZE + FILE_SIZE))
        rm -rf "$file"
    done

    echo "$TOTAL_SIZE" > tmp_size.txt
    awk '{s+=$1} END {print s}' "$SIZE_RECORD_FILE" tmp_size.txt > tmp_sum.txt
    mv tmp_sum.txt "$SIZE_RECORD_FILE"
    rm tmp_size.txt

    TOTAL_SIZE_HUMAN=$(convert_size $TOTAL_SIZE)
        echo -e "${Y}删除进程50%${N}"
        sleep 0.5
        echo -e "${Y}删除进程100%${N}"
        sleep 0.5
    echo -e "${G}${TYPE}文件清理完毕，删除文件总大小: $TOTAL_SIZE_HUMAN${N}"
    sleep $SLEEP_TIME
}

delete_specific_files() {
    EXT=$1
    TOTAL_SIZE=0
    for dir in "$DIRECTORY1" "$DIRECTORY2" "$DIRECTORY3" "$DIRECTORY4" "$DIRECTORY5"; do
        FILE_LIST=$(find "$dir" -type f -name "*.$EXT")
        if [ -z "$FILE_LIST" ]; then
            continue
        fi
        echo -e "\n\033[41m以下${EXT}文件将被删除！\033[0m\n"
        echo "$FILE_LIST"

        if ! confirm_deletion; then
            continue
        fi

        for file in $FILE_LIST; do
            FILE_SIZE=$(stat -c%s "$file")
            TOTAL_SIZE=$((TOTAL_SIZE + FILE_SIZE))
            rm -f "$file"
        done
    done

    if [ "$TOTAL_SIZE" -eq 0 ]; then
        echo -e "${G}无可清理的${EXT}文件${N}"
    else
        echo "$TOTAL_SIZE" > tmp_size.txt
        awk '{s+=$1} END {print s}' "$SIZE_RECORD_FILE" tmp_size.txt > tmp_sum.txt
        mv tmp_sum.txt "$SIZE_RECORD_FILE"
        rm tmp_size.txt
        TOTAL_SIZE_HUMAN=$(convert_size $TOTAL_SIZE)
        echo -e "${G}${EXT}文件清理完毕，本次删除文件总大小: $TOTAL_SIZE_HUMAN${N}"
    fi
    sleep $SLEEP_TIME
}

while true; do
    show_menu

    read input
    case $input in
        1)
            delete_files "$DIRECTORY1" "音频"
            ;;
        2)
            delete_files "$DIRECTORY2" "贴纸"
            ;;
        3)
            delete_files "$DIRECTORY3" "图片"
            ;;
        4)
            delete_files "$DIRECTORY4" "文件"
            ;;
        5)
            delete_files "$DIRECTORY5" "视频"
            ;;
        6)
            echo "请输入要删除的文件后缀（例如 txt）: "
            read ext
            delete_specific_files "$ext"
            ;;
        *)
            echo -e "${R}非法输入，请输入1-6之间的数字${N}"
            sleep $SLEEP_TIME
            continue
            ;;
    esac

    while true; do
        echo -e "${G}文件清理完毕，您是否要退出脚本？(Y/N)  大小写均可${N}"
        read choice
        case "$choice" in
            Y|y )
                TOTAL_DELETED_SIZE=$(cat "$SIZE_RECORD_FILE")
                TOTAL_DELETED_SIZE_HUMAN=$(convert_size $TOTAL_DELETED_SIZE)
                echo -e "累计删除文件大小: ${G}$TOTAL_DELETED_SIZE_HUMAN${N}"
                exit 0
                ;;
            N|n )
                echo "返回主菜单..."
                sleep $SLEEP_TIME
                break
                ;;
            * )
                echo -e "${R}非法输入，请输入Y或N 大小写均可${N}"
                sleep $SLEEP_TIME
                ;;
        esac
    done
done