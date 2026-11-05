cask "portsense" do
  version "1.0.0"
  sha256 "7ca6e045fec32296e250e20988a59c5ecbcb0fa036160f49d9a2bbdbd5238bf9"

  url "https://github.com/theluckystrike/barframe-apps/releases/download/portsense-v#{version}/PortSense-#{version}.dmg",
      verified: "github.com/theluckystrike/barframe-apps/"
  name "PortSense"
  desc "Charger wattage & USB devices"
  homepage "https://barframe.com/"

  livecheck do
    url :url
    regex(/^portsense[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases
  end

  depends_on macos: :sonoma

  app "PortSense.app"

  uninstall quit: "com.michaellip.portsense"

  zap trash: [
    "~/Library/Application Scripts/com.michaellip.portsense",
    "~/Library/Containers/com.michaellip.portsense",
  ]
end
