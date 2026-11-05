cask "revpulse" do
  version "1.0.0"
  sha256 "be8ca55a14657cf3fe2d81b016bcb2e16f5477ae5810f5e492eab423ef9008bf"

  url "https://github.com/theluckystrike/barframe-apps/releases/download/revpulse-v#{version}/RevPulse-#{version}.dmg",
      verified: "github.com/theluckystrike/barframe-apps/"
  name "RevPulse Revenue at a Glance"
  desc "Net payments in your menu bar"
  homepage "https://barframe.com/"

  livecheck do
    url :url
    regex(/^revpulse[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases
  end

  depends_on macos: :sonoma

  app "RevPulse.app"

  uninstall quit: "com.michaellip.revpulse"

  zap trash: [
    "~/Library/Application Scripts/com.michaellip.revpulse",
    "~/Library/Containers/com.michaellip.revpulse",
  ]
end
