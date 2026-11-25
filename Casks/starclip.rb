cask "starclip" do
  version "0.2.7"
  sha256 "f36121e450b5c15f7ceb483f048a8757a6eb856d6ca3423f67d0cae729d98d13"

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
