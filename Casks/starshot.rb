cask "starshot" do
  version "0.3.2"
  sha256 "c1ebc39e9cae4cafbb5c08c307f4ff2aca07bb802ae8caf392496b8227d68eb4"

  url "https://github.com/cpython666/starshot/releases/download/v#{version}/Starshot_#{version}_aarch64.dmg"
  name "Starshot"
  name "星镜"
  desc "Local-first screenshot, annotation and image pinning tool"
  homepage "https://github.com/cpython666/starshot"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :monterey

  app "Starshot.app"

  caveats <<~EOS
    This is Starshot 0.3.2 for Apple Silicon Macs.
    It is not Apple-notarized; macOS may block the first launch.
    See the release notes before installing: https://github.com/cpython666/starshot/releases/tag/v0.3.2
  EOS
end
