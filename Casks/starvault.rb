cask "starvault" do
  version "0.1.4"
  sha256 "1ea39bd8bf97d55f1885e01a3ec002d6e7e20ff0576ced89ce7983d2f67580a7"

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
    This release is ad-hoc signed and has not been notarized by Apple.
    See the release notes for installation instructions:
    https://github.com/cpython666/starvault/releases/tag/v#{version}
  EOS
end
