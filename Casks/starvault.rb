cask "starvault" do
  version "0.1.1"
  sha256 "983c119026b167ad7a450297a6381613143119ccef5d14b699e774c661d08d05"

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
