# 星空系列 · Homebrew Tap

星空系列应用维护的 Homebrew 安装源。下方保留星笺的独立安装说明，星镜截图工具见「星镜 Starshot」一节。星笺提供本地剪贴历史与代码收藏，软件源码：[StarDreamTech/starclip](https://github.com/StarDreamTech/starclip)。

## 安装

需要已安装 [Homebrew](https://brew.sh/)，目前仅支持 **Apple Silicon Mac（M 系列芯片），macOS 11 或以上**。

```sh
brew install --cask stardreamtech/tap/starclip
```

Homebrew 如提示信任此第三方安装源，请先核对仓库为 `StarDreamTech/homebrew-tap` 和 Cask 内容。

当前提供 [v0.1.0-alpha.2 开发预览版](https://github.com/StarDreamTech/starclip/releases/tag/v0.1.0-alpha.2)，应用内版本号为 0.1.0。它只修复 alpha.1 的应用打包签名结构，功能保持早期版本，不包含仍在开发中的 0.2.0 新功能。下载文件固定 SHA-256 校验；这是星笺维护的自有 Tap，不代表 Homebrew 官方主仓收录。

该预览包的本地 ad-hoc 签名完整性已经验证，但没有 Apple Developer 签名与公证，macOS 可能阻止首次打开；Homebrew 安装不会绕过系统安全检查。请在确认来源后按 macOS 提示处理，或等待后续正式签名版本。

如果 `/Applications/Starclip.app` 已经存在，请不要用 `--force` 覆盖正在使用的版本，尤其不要用预览包降级打开新版数据。已有应用可继续使用，待更高版本发布后再迁移到 Homebrew 管理。

## 更新与卸载

维护者发布并更新此 Tap 后，退出星笺再执行：

```sh
brew update
brew upgrade --cask stardreamtech/tap/starclip
```

卸载程序：

```sh
brew uninstall --cask stardreamtech/tap/starclip
```

此 Cask 不设置删除数据的 `zap` 或卸载脚本。普通升级、卸载只管理应用文件；不会主动删除剪贴历史、偏好、自定义数据目录或备份。数据迁移能力取决于所安装的应用版本，勿跨版本降级。

## 维护安装描述

1. 先在软件仓库发布可公开下载、已核验的安装包，保留原有 Release 附件。
2. 更新 `Casks/starclip.rb` 的版本、固定下载地址、SHA-256 和预览说明；有新 CPU 架构时再加入对应产物。
3. 运行 `brew style --cask stardreamtech/tap/starclip`、`brew audit --cask --strict --online stardreamtech/tap/starclip` 和 `brew fetch --cask stardreamtech/tap/starclip`，核对实际安装内容。当前 alpha 发布会触发 online audit 的 GitHub prerelease 提示；如实记录，不把它改标为稳定版。
4. 提交并推送此仓库，用户执行 `brew update` 后获得新版本定义。

Tap 使用 MIT 许可证。软件本身的许可和功能范围以源代码仓库及对应版本发布说明为准。

## 星镜 Starshot

星镜是独立的本地截图、标注、敏感信息遮盖、置顶贴图和图片美化工具，不提供长期剪贴历史。源码：[StarDreamTech/starshot](https://github.com/StarDreamTech/starshot)。

提供 [v0.3.2](https://github.com/StarDreamTech/starshot/releases/tag/v0.3.2)，支持 **Apple Silicon Mac、macOS 12 Monterey 及以上**：

```sh
brew install --cask stardreamtech/tap/starshot
```

该包为 ad-hoc 签名，尚未 Apple 公证，首次启动可能受系统拦截；Cask 不绕过 quarantine 或系统安全检查。安装前请查看发布说明；已有手动安装的 `Starshot.app` 时，不要用 `--force` 覆盖，尤其不要降级打开较新版恢复点。

星镜支持应用内手动检查更新，因此 Cask 标记 `auto_updates true`。0.3.2 提供竖向/横向长截图、主动自动滚动、累计预览，以及托盘、快捷键设置与分享预览改进；长截图复杂页面和双平台完整原生采集仍待验收，具体限制见发布说明。截图后可在选区下方直接标注、复制、保存和贴图，需要时再打开完整编辑页。通过 Homebrew 升级时需包含 `--greedy`：

```sh
brew update
brew upgrade --cask --greedy stardreamtech/tap/starshot
brew uninstall --cask stardreamtech/tap/starshot
```

升级前保存或备份当前编辑并退出星镜。Cask 仅管理应用，没有卸载脚本或 `zap`，不主动删除本机恢复点。应用使用 MIT 许可，OCR模型保留自身许可与来源。当前Cask只含macOS包；Windows安装包见星镜Release。

## 星匣 StarVault

星匣保存和检索 AI 聊天记录，支持增量备份、按需复制图片/文件与 Skill 迁移，提供桌面端、CLI 和 MCP。软件源码：[StarDreamTech/starvault](https://github.com/StarDreamTech/starvault)。

```sh
brew install stardreamtech/tap/starvault          # CLI、MCP、Skill：macOS / Linux
brew install --cask stardreamtech/tap/starvault   # 桌面端：Apple Silicon macOS
```

如新版 Homebrew 提示未信任包，请先检查 Formula / Cask，再仅信任对应产品：

```sh
brew trust --formula stardreamtech/tap/starvault
brew trust --cask stardreamtech/tap/starvault
```

桌面 Cask 同时依赖 CLI 和 Python，应用内置后端代码与星匣图标。应用为 ad-hoc 签名，尚未 Apple 公证；安装说明以 [v0.1.3 Release](https://github.com/StarDreamTech/starvault/releases/tag/v0.1.3) 为准。卸载不删除聊天备份、图片或 Skill；软件代码仓库与用户的私有聊天备份仓库独立。已有手动安装的 `StarVault.app` 时，先保留副本并移出安装位置，再交给 Homebrew 管理。

星匣 0.1.3 将设置分类移到左侧，右侧内容独立滚动；“分享软件”提供中英文文案与六张产品介绍图，可复制文案/图片或保存 PNG。素材为固定原创示例，与本地聊天档案独立。
