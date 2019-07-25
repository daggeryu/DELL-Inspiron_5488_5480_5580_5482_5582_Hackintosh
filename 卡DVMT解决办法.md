# 安装10.15卡DVMT解决办法
## 使用EFI目录下的SHEll启动文件启动。
### 输入如下命令：
1：输入 setup_var 0x8E5 0x2 会车；
2：输入 setup_var 0x8E6 0x3 回车。
此方法通过shell修改DVMT大小可有效解决因为dvmt不足而引起安装卡显卡的问题。
