# 安装卡DVMT解决办法
## 添加启动项选择启动文件为EFI/Clover/Shell/bootx64.efi的启动项。  
##
开机按F12选择shell的启动项进入shell。  
### 输入如下命令：
1：输入 setup_var 0x8E5 0x2 会车；
2：输入 setup_var 0x8E6 0x3 回车。
此方法通过shell修改DVMT大小可有效解决因为dvmt不足而引起安装卡显卡的问题。
