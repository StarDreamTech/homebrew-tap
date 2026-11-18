# StarDreamTech Homebrew tap

[简体中文](README.md) | [English](README.en.md)

Install StarDreamTech apps from this third-party tap. Inspect the formula or cask and the upstream release before installing. The casks pin their download and SHA-256; Homebrew installation does not bypass macOS security checks. The version in each recipe is authoritative.

| Product | Install | Requirements / purpose |
| --- | --- | --- |
| [Starclip](Casks/starclip.rb) | `brew install --cask stardreamtech/tap/starclip` | Local clipboard history and code collections; Apple Silicon Mac |
| [Starshot](Casks/starshot.rb) | `brew install --cask stardreamtech/tap/starshot` | Screenshots, annotations, redaction and pins; Apple Silicon, macOS 12+ |
| [StarVault CLI](Formula/starvault.rb) | `brew install stardreamtech/tap/starvault` | Chat archive CLI, MCP and Skill; macOS or Linux |
| [StarVault desktop](Casks/starvault.rb) | `brew install --cask stardreamtech/tap/starvault` | Chat archives, incremental backups and optional attachments; Apple Silicon Mac |

## Updates and removal
Save your work and quit the app first. Update Homebrew's recipe index, then upgrade the relevant product:
```sh
brew update
brew upgrade --cask stardreamtech/tap/starclip
brew upgrade --cask --greedy stardreamtech/tap/starshot
```
Starshot also supports in-app updates, so Homebrew requires `--greedy` to include it. Run `brew uninstall --cask stardreamtech/tap/PRODUCT` for a desktop app, substituting its actual name. These casks do not use `zap` or an uninstall script to remove your clipboard history, recovery points, chat archives, images or skills. Do not force an overwrite of an existing manual install, or open newer data in a downgraded version.

## Product notes
- **Starclip:** [source and releases](https://github.com/StarDreamTech/StarClip/releases). The early 0.1.0 alpha.2 corrected the packaging signature structure; it was not a feature upgrade. Verify the current cask before installing.
- **Starshot:** [source and releases](https://github.com/StarDreamTech/StarShot/releases). Platform validation and signing limitations are documented for each build. The Homebrew package is for macOS; obtain Windows installers from releases. OCR models retain their own licenses.
- **StarVault:** [source and releases](https://github.com/StarDreamTech/StarVault/releases). The desktop cask depends on the CLI and Python. Application source is separate from the user's private archive repository. Back up and move a manually installed app before switching to Homebrew management. The sharing illustrations are fixed examples, not data from your archive.

## Maintaining recipes
Publish and verify upstream artifacts before updating a recipe. Keep previous release assets accessible; update the version, fixed URL, checksum and architecture together. For example:
```sh
brew style --cask stardreamtech/tap/starclip
brew audit --cask --strict --online stardreamtech/tap/starclip
brew fetch --cask stardreamtech/tap/starclip
```
Record prerelease warnings accurately. After the updated recipe is published, users receive it with `brew update`. The tap is MIT-licensed; each app and its bundled resources keep their own licenses.
