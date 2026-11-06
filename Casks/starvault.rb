cask "starvault" do
  version "0.1.0"
  sha256 "ebc1025c64b7c6fbc1ff3f2e5a76312ecd58ad6cbc1e674977e4881f489cadbf"

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
