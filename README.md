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
## 注意  
10.15betaEFI适用于Catalina仅给基友尝鲜，各项功能和10.14一样正常，小白请勿使用。  
OC引导仅做尝鲜，声卡触摸板不可用。  
## 适用机型
DELL-5488(核显版/独显版均可，i5/i7)。  
以下机型应该通用（只测试了5580完全通用。应为bios这些机型通用由此判定，请自行测试。测试了的可以反馈一下。）。  
DELL-Inspiron_5480_5580_5482_5582.  
DELL-Vostro_5481_5581。  
## 已知问题：
1：笔记本内屏出现色带，显示不均匀。外接显示器没问题。（不影响使用）  
2：指纹 (应该无解)。  
## 正常功能：
1：显卡  
2：声卡  （声卡使用我这个磨人配置文件耳机有问题的尝试删除EFI/clover下的config然后将config-id100改名为config）
2：hdmi输出  
3：type-c（全部功能正常）  
4：网卡（有线网卡正常，无线网卡无解，换为BCM9460cs2免驱。）  
6：触摸板正常，手势全部可用。  
7：usb全部正常。  
8：电池电量显示正常。  
9：摄像头正常使用（但是有个奇怪的问题，Facetime打开黑的，再打开一下Photo Booth就变正常，qq视频，微信视频没问题。10.15已经没有此问题）  
10：睡眠正常。  
11：变频正常。  
12：支持原生亮度快捷键。  
13：支持fn+insert睡眠（外接显示器时，此组合键关闭内置显示器，无外接显示器按此组合键就睡眠）。  
14：触摸板手势支持拖移锁定。  
15：支持读卡器（读卡器经过机友测试是走usb的。）  
## 安装中遇到的问题
1：无法抹盘，或者安装失败，报错“-110”。全盘抹掉一次即可。有部分机友遇到。  
2：使用中突然卡死，什么都不能操作。或者睡眠唤醒黑屏。可能是bios设置问题关闭iInter@Software Cuard Extensions下的第一个选项，关闭后win下指纹不可用，如果没这些问题可以不关闭。  
3：安装原版完成后，提示未能完成安装。不用管他直接点重启即可（Restart），其实已经安装成功。目前原因未知，看群里部分戴尔机友有遇到此问题。  
4：安装好后画无法使用触摸板，或者升级后触控板无法使用。你需要在每次更新系统后重建缓存。运行 `Kext Utility.app` 或者在 `终端.app` 输入 `sudo kextcache -i /`，然后重启。  
5：快捷关闭触摸板，打开设置-辅助功能-鼠标与触摸板：启用鼠标键，点一下后面的选项勾选“按下Option键五次来开关鼠标键”。后就可以通过按五次Option键快捷关闭触摸板了。  
6：耳机插上没有声音。请打开ALCPlugFix执行[install双击自动安装.command](https://github.com/daggeryu/DELL-inspiron-5488/blob/master/ALCPlugFix/install双击自动安装.command)
## 原装卡更换图解
详见[network_card](https://github.com/daggeryu/DELL-inspiron-5488/blob/master/network_card.md)
## 更新日志
详见[Update_log](https://github.com/daggeryu/DELL-inspiron-5488/blob/master/Update_log.md)
## 致谢

- [RehabMan](https://github.com/RehabMan) 提供的   [VoodooPS2Controller](https://github.com/RehabMan/OS-X-Voodoo-PS2-Controller)等驱动。    
- [vit9696](https://github.com/vit9696) 提供的 [Lilu](https://github.com/acidanthera/Lilu) ，     [AppleALC](https://github.com/acidanthera/AppleALC)   ，   [WhateverGreen](https://github.com/acidanthera/WhateverGreen)。     
- [Alexandred](https://github.com/alexandred)及其开发团队提供的[VoodooI2C](https://github.com/alexandred/VoodooI2C) 驱动。  
- [冰水大佬](https://github.com/xzhih) 帮助驱动触摸板及修正亮度快捷键（轮询）。
- [Bat.bat](https://github.com/williambj1) 帮助驱动触摸板（中断）。
- **@宪武** 大神指导fn+insert睡眠修正。  
