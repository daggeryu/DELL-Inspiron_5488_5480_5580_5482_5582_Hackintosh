# DELL-inspiron-5488安装macOS Mojave and Catalina
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
DELL-5488(核显版/独显版均可，i5/i7)。  
以下机型应该通用（下面机型bios一样，请自行测试。如有问题无需反馈）。  
DELL-Inspiron_5480_5580_5482_5582.  
DELL-Vostro_5481_5581。  
## 已知问题： 
1：指纹 (应该无解)。  
## 正常功能：
1：显卡  
2：声卡(耳麦可使用，插入耳机弹出提示框选择)  
2：hdmi输出  
3：type-c（全部功能正常）  
4：网卡（有线网卡正常，无线网卡无解，换为BCM9460cs2免驱。）  
6：触摸板正常，手势全部可用。  
7：usb全部正常。  
8：电池电量显示正常。  
9：摄像头正常使用（10.14存在小问题,10.15不存在）  
10：睡眠正常。  
11：变频正常。  
12：支持原生亮度快捷键。  
13：支持fn+insert睡眠（外接显示器时，此组合键关闭内置显示器，无外接显示器按此组合键就睡眠）。   
14：支持读卡器。    
## 安装中遇到的问题
1：不能识别内置硬盘,bios下将RAID改为AHCI。  
2：无法抹盘，或者安装失败，报错“-110”。全盘抹掉一次即可。有部分机友遇到。  
3：使用中突然卡死，什么都不能操作。或者睡眠唤醒黑屏。可能是bios设置问题关闭iInter@Software Cuard Extensions下的第一个选项，关闭后win下指纹不可用，如果没这些问题可以不关闭。  
4：安装原版完成后，提示未能完成安装。不用管他直接点重启即可（Restart），其实已经安装成功。目前原因未知，看群里部分戴尔机友有遇到此问题。  
5：安装好后画无法使用触摸板，或者升级后触控板无法使用。你需要在每次更新系统后重建缓存。运行 `Kext Utility.app` 或者在 `终端.app` 输入 `sudo kextcache -i /`，然后重启。  
6：快捷关闭触摸板，打开设置-辅助功能-鼠标与触摸板：启用鼠标键，点一下后面的选项勾选“按下Option键五次来开关鼠标键”。后就可以通过按五次Option键快捷关闭触摸板了。  
7：耳机自动切换：终端运行 ComboJack_Installer/install.sh，重启，插入耳机的时候，会弹出对话框询问你插入的是耳机还是耳塞（10.15请先解锁sle权限在执行。）  
8:由于macOS 10.15 锁住了S/L/E的修改权限，因此在修改kext前要使用终端先解锁S/L/E权限，打开终端输入一下命令：sudo mount -uw /& killall Finder  
9：使用OC引导请使用SHEll解锁CFG(详见:[解锁CFG & 修改DVMT](https://github.com/daggeryu/DELL-inspiron-5488/blob/master/UnlockCFGandChangeDVMT.md))。  
## 原装卡更换图解
详见[network_card](https://github.com/daggeryu/DELL-inspiron-5488/blob/master/network_card.md)
## 更新日志
详见[Update_log](https://github.com/daggeryu/DELL-inspiron-5488/blob/master/Update_log.md)
## 安装教程
详见[安装教程](https://www.bilibili.com/read/cv4779437)  

## 致谢

- [RehabMan](https://github.com/RehabMan) 提供的   [VoodooPS2Controller](https://github.com/RehabMan/OS-X-Voodoo-PS2-Controller)等驱动。    
- [vit9696](https://github.com/vit9696) 提供的 [Lilu](https://github.com/acidanthera/Lilu) ，     [AppleALC](https://github.com/acidanthera/AppleALC)   ，   [WhateverGreen](https://github.com/acidanthera/WhateverGreen)。     
- [Alexandred](https://github.com/alexandred)及其开发团队提供的[VoodooI2C](https://github.com/alexandred/VoodooI2C) 驱动。  
- [冰水大佬](https://github.com/xzhih) 帮助驱动触摸板及修正亮度快捷键（轮询）。
- [Bat.bat](https://github.com/williambj1) 帮助驱动触摸板（中断）。
- **@宪武** 大神指导fn+insert睡眠修正。  
- **Houdini** OC引导由此群友贡献。 
## 觉得资源还不错的可以打赏一下  

| paypal                                                       | 微信                                                       | 支付宝                                               |
| ------------------------------------------------------------ | ---------------------------------------------------------- | ---------------------------------------------------- |
| [![paypal](https://github.com/daggeryu/DELL-inspiron-5488/blob/master/images/paypal.png)](https://paypal.me/daggeryu?locale.x=zh_XC) | ![wechatpay_160](https://github.com/daggeryu/DELL-inspiron-5488/blob/master/images/wechatpay.png)   | ![alipay_160](https://github.com/daggeryu/DELL-inspiron-5488/blob/master/images/alipay.png)  |

## QQ交流群
一个人太累，创建个QQ群吧，大家一起讨论和寻找以后的各种问题的解决办法吧。  
![qq](https://github.com/daggeryu/DELL-inspiron-5488/blob/master/images/qrcode.png)
