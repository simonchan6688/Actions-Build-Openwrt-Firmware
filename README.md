# Actions-Lean-OpenWrt

- 基于[coolsnowwolf/lede](https://github.com/coolsnowwolf/lede)编译.
- 自定义文件 “files 大法”是把你自定义的配置编译到固件里。这样升级或恢复出厂设置都不需要保留配置，缺省值就是自定义的配置。
- 如你现在的network设置编译进固件：首先提取路由固件下的`\etc\config\network` 然后在项目根目录下创建files目录并`push` 到 `\files\etc\config\network `，最后编译出来的固件就是现在设置的network。
- 通过修改`diypart1.sh`文件修改`feeds.conf.default`配置。已添加helloworld、OAF、jd-dailybonus。#我不知道怎么自动加到config里面去，仅限于本项目下已存在的.config才有哦！
- 通过修改`diypart2.sh`文件可以自定义默认IP，登陆密码等。现在的默认IP为`192.168.2.1`,密码为'10.'，不需要更改的加`#`注释就可以。
- 自定义编译的方法可以搭配使用，自己需要的服务一般不会随意变化，可以在 `make menuconfig` 选好（新手参考[OpenWrt MenuConfig设置和LuCI插件选项说明](https://mtom.ml/827.html)）后执行 `./scripts/diffconfig.sh > seed.config` 复制一下这个`seed.config`的文本内容到项目根目录的`.config`文件中（建议自命名），这样就不用每次都SSH连接到 Actions生成编译配置，真正一键编译。
- 你可以在本地生成.config文件然后上传到本项目下，然后修改`.github/workflows/build-openwrt.yml`中`xxx.config`为你的自命名xxx.config文件。
- 另外如果，使用“files 大法”仓库最好设为私有，否则你的配置信息，如宽带账号等会公开在网上。
- 如果需要可以编写多个`workflows`文件对应`xxx.config`，开启多流程同时编译。
- 点击Star即可开始编译。
- 大约2个小时左右再回来看看有没有完成编译。
- 修改xxx.config文件后会自动进行编译哦。
