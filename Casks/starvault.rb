cask "starvault" do
  version "0.1.3"
  sha256 "8e8203464ef25f4372586c062938e52602267ff1621c9859b5a5c431a3200073"

  url "https://github.com/cpython666/starvault/releases/download/v#{version}/StarVault-#{version}-macos-arm64.zip"
  name "StarVault"
  name "星匣"
  desc "Local AI conversation archive reader with optional attachment migration"
  homepage "https://github.com/cpython666/starvault"

  depends_on arch: :arm64
  depends_on formula: "cpython666/tap/starvault"
  depends_on :macos

  app "StarVault.app"

  caveats <<~EOS
    This first release is ad-hoc signed and has not been notarized by Apple.
    See the release notes for installation instructions:
    https://github.com/cpython666/starvault/releases/tag/v#{version}
  EOS
end
