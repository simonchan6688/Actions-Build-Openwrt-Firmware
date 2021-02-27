# Actions-Build-Openwrt-Firmware

- 基于[coolsnowwolf/lede](https://github.com/coolsnowwolf/lede)编译.
- 通过修改`diypart2.sh`文件可以自设置默认IP，登陆密码等。文件设置默认IP为`192.168.3.1`,密码为'10000.'，不需要更改的加`#`注释掉。
- 通过修改`diypart1.sh`文件修改`feeds.conf.default`配置。#Lean项目更新后自带jd-dailybonus，需要在脚本内注释掉。
- 本项目下的xxx.config已添加helloworld、OAF、jd-dailybonus。
- 自定义编译的方法可以搭配使用，可以在 `make menuconfig` 选好（新手参考[OpenWrt MenuConfig设置和LuCI插件选项说明](https://mtom.ml/827.html)）后执行 `./scripts/diffconfig.sh > seed.config` 复制一下这个`seed.config`的文本内容到项目根目录的`.config`文件中（建议自命名），这样就不用每次都SSH连接到 Actions生成编译配置，真正一键编译。
- 你可以在本地生成xxx.config文件然后上传到本项目下，然后修改`.github/workflows/xxx.yml`中`xxx.config`为你的自命名xxx.config文件。
- 如果需要，可以编写多个`workflows`文件对应`xxx.config`，开启多流程同时编译。
- 点击Star即可开始编译。
- 设置为每月1号16号自动拉取源码并编译。
- 编译完成会自动生成releases，最多保存最近6个tag
