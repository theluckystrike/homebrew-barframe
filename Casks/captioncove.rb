cask "captioncove" do
  version "1.0.0"
  sha256 "ad275c9662fc3b22c4e43b46cb79d6f56f66fa8bb61c3b63a535a4043800fcb1"

  url "https://github.com/theluckystrike/barframe-apps/releases/download/captioncove-v#{version}/CaptionCove-#{version}.dmg",
      verified: "github.com/theluckystrike/barframe-apps/"
  name "CaptionCove"
  desc "Check subtitle delivery parity"
  homepage "https://barframe.com/"

  livecheck do
    url :url
    regex(/^captioncove[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases
  end

  depends_on macos: :sonoma

  app "CaptionCove.app"

  uninstall quit: "com.michaellip.captioncove"

  zap trash: [
    "~/Library/Application Scripts/com.michaellip.captioncove",
    "~/Library/Containers/com.michaellip.captioncove",
  ]
end
