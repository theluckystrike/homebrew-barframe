cask "relaynook" do
  version "1.0.0"
  sha256 "05683626db29cf05f1df9a8ca407e6061c086799f5d464be9f810d5c9163e3d3"

  url "https://github.com/theluckystrike/barframe-apps/releases/download/relaynook-v#{version}/RelayNook-#{version}.dmg",
      verified: "github.com/theluckystrike/barframe-apps/"
  name "RelayNook"
  desc "Coding agent alerts & hooks"
  homepage "https://barframe.com/"

  livecheck do
    url :url
    regex(/^relaynook[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases
  end

  depends_on macos: :sonoma

  app "RelayNook.app"

  uninstall quit: "com.michaellip.relaynook"

  zap trash: [
    "~/Library/Application Scripts/com.michaellip.relaynook",
    "~/Library/Containers/com.michaellip.relaynook",
  ]
end
