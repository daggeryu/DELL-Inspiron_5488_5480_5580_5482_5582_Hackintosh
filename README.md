# DELL-inspiron-5488安装macOS Mojave
## 电脑配置

| 规格     | 详细信息                                     |
| -------- | ---------------------------------------- |
| 电脑型号 | DELL-inspiron-5488             |
| 处理器   | 英特尔 酷睿 i5-8265u处理器             |
| 内存     | 16GB  DDR4 2400MHz                 |
| 硬盘     | 西部数据 NVMe固态硬盘 sn520 256GB                  |
| 集成显卡 | 英特尔 UHD 图形620                            |
| 声卡     | 瑞昱 ALC236                     |
| 网卡     | 博通 DW1560                             |

## 哪些不能正常工作

- 指纹传感器
  - 使用了[USBPorts](EFI/CLOVER/kexts/Other/USBPorts.kext)来禁用它以节省电量
- 声卡
  - 瑞昱alc236通过alc仿冒驱动。拔掉电源，耳机会有杂音，甚至没声。
- 英特尔无线网卡
  - 购买USB网卡或者支持的内置网卡  
## 哪些能够正常工作  
- 显卡
  - 注入ID：3E9b0000驱动。
- 有线网卡
  - 使用[RealtekRTL8100](EFI/CLOVER/kexts/Other/RealtekRTL8100.kext)驱动
- 无线网卡
  - 自带的无线网卡无解，已经更换为DW1560.

### 我的触控板升级系统后无法使用。

你需要在每次更新系统后重建缓存。运行 `Kext Utility.app` 或者在 `终端.app` 输入 `sudo kextcache -i /`，然后重启。  


## 更新日志
 V1.3.0  