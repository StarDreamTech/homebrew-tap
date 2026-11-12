cask "starclip" do
  version "0.2.6"
  sha256 "20797d6477202665501ad53009c2cf7ee31b914f848f8f1f679e3765e52fbce1"

  url "https://github.com/StarDreamTech/starclip/releases/download/v#{version}/Starclip_#{version}_aarch64.dmg"
  name "Starclip"
  name "星笺"
  desc "Local-first clipboard history and code snippet manager"
  homepage "https://stardreamtech.github.io/projects/starclip/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :macos

  app "Starclip.app"

  caveats <<~EOS
    See the release notes for notarization status and installation instructions:
    https://github.com/StarDreamTech/starclip/releases/tag/v#{version}
  EOS
end
