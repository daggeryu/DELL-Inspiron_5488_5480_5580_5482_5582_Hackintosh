# DELL-inspiron-5488安装macOS Mojave
## 电脑配置

| 规格     | 详细信息                                     |
| -------- | ---------------------------------------- |
| 电脑型号 | DELL-inspiron-5488             |
| 处理器   | 英特尔 酷睿 i5-8265u处理器             |
| 内存     | 16GB  DDR4 2400MHz                 |
| 硬盘     | 西部数据 NVMe固态硬盘 sn520 256GB                  |
| 集成显卡 | 英特尔图形卡 UHD 620                            |
| 声卡     | 瑞昱 ALC236                     |
| 网卡     | 博通 BCM94360cs2                             |

### 我的触控板升级系统后无法使用。

你需要在每次更新系统后重建缓存。运行 `Kext Utility.app` 或者在 `终端.app` 输入 `sudo kextcache -i /`，然后重启。  


## [更新日志](https://github.com/daggeryu/DELL-inspiron-5488/blob/master/Update_log.md)
