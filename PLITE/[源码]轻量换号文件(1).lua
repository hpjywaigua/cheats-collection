--借用于<E I Y 92.0.lua>
--用于简便 单独学出来了
---QQ3176393002
--自带解析 开源供大家学习
--编译时间2022.7.18.21.09




Yk=gg.prompt({"直接点击确定"},{"/data/user/0/com.pubg.newstate/gameplugins/com.tencent.iglite/shared_prefs"},{"path"})---UI 



if Yk==nil then---判断Yk是否是空然后执行
os.exit(print("没输入"))---执行退出并打印
end--结束这段函数


--重点--
id=io.open(Yk[1].."/device_id.xml","r"):read("*a")---读取文件夹的device_id.xml文件



ID = id:match('    <string name="uuid">(.-)</string>')----打开找到uuid


ID1=gg.prompt({"请输入要修改的ID"},{ID},{"text"})---UI



zip=""
zip=string.gsub(id,ID,ID1[1])----替换uuid和device_id.xml文件

 
DY="请退出登陆 并且清楚后台 再重新登陆\nQQ3176393002"---赋值来用于打印DY


io.open(Yk[1].."/device_id.xml", 'w'):write(zip)---写出device_id.xml文件



os.remove(Yk[1]..".bak")---删除bak残留


os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/login-identifier.txt")--删除本地文件的id


os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/RoleInfo")
gg.toast([[账号ID修改成功]])---提示


function HOME()---返回函数
lw=1
Yk()
end---结束这段函数


print(DY)---打印回复上段赋值