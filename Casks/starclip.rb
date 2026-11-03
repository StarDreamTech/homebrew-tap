cask "starclip" do
  version "0.2.4"
  sha256 "640d2bd02a216ccd15a742cf6c47868390ad874440efede9c7c2d470f4df0ad2"

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
