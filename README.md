# cjk-fonts-action

修改自 [hms5232/install-CNS11643-fonts-action](https://github.com/hms5232/install-CNS11643-fonts-action) 项目。

Github Action 自动安装中文字体方案。目前会安装 [Source Han Serif 字体 2.002R 版本](https://github.com/adobe-fonts/source-han-serif/) 中的

[Language Specific OTFs Simplified Chinese (简体中文)](https://github.com/adobe-fonts/source-han-serif/releases/download/2.002R/09_SourceHanSerifSC.zip)

感谢这两个开源项目。

## 使用方式

```yaml
steps:
  - uses: dhmemi/cjk-fonts-action@v1  
```

如需显示 action name:

```yaml
steps:
  - name: Install CNS11643 fonts
    uses: dhmemi/cjk-fonts-action@v1  
```

与上游项目相同，本 action 也使用 [wget](https://www.gnu.org/software/wget/) 作为下载字体的工具，

可以传入 wget 的相应参数。供高级玩家使用。

```yaml
steps:
  - uses: dhmemi/cjk-fonts-action@v1  
    with:
      download-flag: '-nv'
```

如不传入 `download-flag` 参数，则使用默认参数 `-nv`。

参数是通过直接替换命令字符串的子串传入命令的，请谨慎传入参数。

## 开源许可

上游项目作者：hms5232

本项目与上游项目一致地依据 [Apache 2.0 License](LICENSE) 开源。

请依据 Source Han Serif [使用许可](https://github.com/adobe-fonts/source-han-sans/blob/master/LICENSE.txt) 使用本工具所下载的字体文件，

本项目不对用户进行的任何违反 Source Han Serif 使用许可的行为负责。

