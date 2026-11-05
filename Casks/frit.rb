cask "frit" do
  version "1.3.1"
  sha256 "b40b0df0e2d090e942d25ae050a982a77eb4e7fc6fd2ade4c35d0eb7bbfdf545"

  url "https://github.com/theluckystrike/frit/releases/download/v#{version}/Frit-#{version}.dmg",
      verified: "github.com/theluckystrike/frit/"
  name "Frit"
  desc "Glaze recipe book for potters"
  homepage "https://frit-app.pages.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Frit.app"

  uninstall quit: "com.michaellip.frit"

  zap trash: [
    "~/Library/Application Scripts/com.michaellip.frit",
    "~/Library/Containers/com.michaellip.frit",
  ]
end
