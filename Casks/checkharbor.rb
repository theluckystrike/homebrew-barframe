cask "checkharbor" do
  version "1.0.0"
  sha256 "835fc1cf152285fcfec3d84e722f4f8225383a44b809d691e9cc83e7cf2950dd"

  url "https://github.com/theluckystrike/barframe-apps/releases/download/checkharbor-v#{version}/CheckHarbor-#{version}.dmg",
      verified: "github.com/theluckystrike/barframe-apps/"
  name "CheckHarbor"
  desc "Track builds until recovery"
  homepage "https://barframe.com/"

  livecheck do
    url :url
    regex(/^checkharbor[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases
  end

  depends_on macos: :sonoma

  app "CheckHarbor.app"

  uninstall quit: "com.michaellip.checkharbor"

  zap trash: [
    "~/Library/Application Scripts/com.michaellip.checkharbor",
    "~/Library/Containers/com.michaellip.checkharbor",
  ]
end
