cask "pageparcel" do
  version "1.0.0"
  sha256 "5bdc9d8bebf9e3eab9296823dec865c43b8add5707a209458a4ba8f2e96fe1c1"

  url "https://github.com/theluckystrike/barframe-apps/releases/download/pageparcel-v#{version}/PageParcel-#{version}.dmg",
      verified: "github.com/theluckystrike/barframe-apps/"
  name "PageParcel"
  desc "Plan duplex document packets"
  homepage "https://barframe.com/"

  livecheck do
    url :url
    regex(/^pageparcel[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases
  end

  depends_on macos: :sonoma

  app "PageParcel.app"

  uninstall quit: "com.michaellip.pageparcel"

  zap trash: [
    "~/Library/Application Scripts/com.michaellip.pageparcel",
    "~/Library/Containers/com.michaellip.pageparcel",
  ]
end
