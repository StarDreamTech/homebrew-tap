cask "starpersona" do
  version "0.2.0"
  sha256 "16530324f5f61dcdea07f2a807fab402b961d21a7c2a16747108fd24729144da"

  url "https://github.com/StarDreamTech/StarPersona/releases/download/v#{version}/StarPersona-#{version}-macos-arm64.zip"
  name "StarPersona"
  name "星相"
  desc "Local browser environment and bookmark manager"
  homepage "https://github.com/StarDreamTech/StarPersona"

  depends_on arch: :arm64
  depends_on macos: ">= :big_sur"

  app "StarPersona.app"
end
