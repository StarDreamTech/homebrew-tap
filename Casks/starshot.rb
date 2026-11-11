cask "starshot" do
  version "0.3.3"
  sha256 "8dffe0a59ba1d30ede0f5e82d57795b409ad66ceeb17d36de6637477483ef9a6"

  url "https://github.com/StarDreamTech/starshot/releases/download/v#{version}/Starshot_#{version}_aarch64.dmg"
  name "Starshot"
  name "星镜"
  desc "Local-first screenshot, annotation and image pinning tool"
  homepage "https://github.com/StarDreamTech/starshot"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :monterey

  app "Starshot.app"

  caveats <<~EOS
    This is Starshot 0.3.3 for Apple Silicon Macs.
    It is not Apple-notarized; macOS may block the first launch.
    See the release notes before installing: https://github.com/StarDreamTech/starshot/releases/tag/v0.3.3
  EOS
end
