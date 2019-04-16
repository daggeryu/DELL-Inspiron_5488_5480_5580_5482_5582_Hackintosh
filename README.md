# DELL-inspiron-5488安装macOS Mojave
## 电脑配置

| 规格     | 详细信息                                     |
| -------- | ---------------------------------------- |
| 电脑型号 | DELL-inspiron-5488             |
| 处理器   | 英特尔 酷睿 i5-8265u处理器             |
| 内存     | 16GB  DDR4 2400MHz                 |
| 硬盘     | 西部数据 NVMe固态硬盘 sn520 256GB                  |
| 集成显卡 | 英特尔图形卡 UHD 620  （无独显）                          |
| 声卡     | 瑞昱 ALC236                     |
| 网卡     | 博通 BCM94360cs2                             |

## 适用机型
DELL-5488(核显版/独显版均可)。  
DELL-5480（bios一样的，应该也通用，也有5480机友测试通用。）  
## 已知问题：
1：笔记本内屏出现色带，显示不均匀。外接显示器没问题。  
2：读卡器（应该无解）。  
3：指纹 (应该无解)。  
## 正常功能：
1：显卡  
2：声卡  
2：hdmi输出  
3：type-c（全部功能正常）  
4：网卡（有线网卡正常，无线网卡无解，换为BCM94352z免驱。）  
6：触摸板正常，手势全部可用。  
7：usb全部正常。  
8：电池电量显示正常。  
9：摄像头正常使用（但是有个奇怪的问题，Facetime打开黑的，再打开一下Photo Booth就变正常，qq视频，微信视频没问题。）  
10：睡眠正常。  
11：变频应该正常。  
12：支持原生亮度快捷键。  
## 安装中遇到的问题
1：无法抹盘，或者安装失败，报错“-110”。全盘抹掉一次即可。有部分基友遇到。  
2：使用中突然卡死，什么都不能操作。或者睡眠唤醒黑屏。可能是bios设置问题关闭iInter@Software Cuard Extensions下的第一个选项，关闭后win下指纹不可用，如果没这些问题可以不关闭。  
3：安装原版完成后，提示未能完成安装。不用管他直接点重启即可（Restart），其实已经安装成功。目前原因未知，看群里b部分戴尔基友有遇到此问题。  
3：安装好后画无法使用触摸板，或者升级后触控板无法使用。  
你需要在每次更新系统后重建缓存。运行 `Kext Utility.app` 或者在 `终端.app` 输入 `sudo kextcache -i /`，然后重启。  
4；耳机插上没有声音。请打开ALCPlugFix执行[install双击自动安装.command](https://github.com/daggeryu/DELL-inspiron-5488/blob/master/ALCPlugFix/install双击自动安装.command)


## 更新日志
详见[Update_log](https://github.com/daggeryu/DELL-inspiron-5488/blob/master/Update_log.md)
