cask "starclip" do
  version "0.2.5"
  sha256 "7094d2c0b34cd1f8943e9fc42ad049198cb42ac82828ca81a3efe93eb4d775b2"

  url "https://github.com/cpython666/starclip/releases/download/v#{version}/Starclip_#{version}_aarch64.dmg"
  name "Starclip"
  name "星笺"
  desc "Local-first clipboard history and code snippet manager"
  homepage "https://github.com/cpython666/starclip"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :macos

  app "Starclip.app"

  caveats <<~EOS
    See the release notes for notarization status and installation instructions:
    https://github.com/cpython666/starclip/releases/tag/v#{version}
  EOS
end
