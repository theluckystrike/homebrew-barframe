cask "keyoverlap" do
  version "1.0.0"
  sha256 "4eba844e344a2efe46d7e70854f5aaafba5156044b816341cd25082a6f2bde6a"

  url "https://github.com/theluckystrike/barframe-apps/releases/download/keyoverlap-v#{version}/KeyOverlap-#{version}.dmg",
      verified: "github.com/theluckystrike/barframe-apps/"
  name "KeyOverlap"
  desc "Check shortcut plan conflicts"
  homepage "https://barframe.com/"

  livecheck do
    url :url
    regex(/^keyoverlap[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases
  end

  depends_on macos: :sonoma

  app "KeyOverlap.app"

  uninstall quit: "com.michaellip.keyoverlap"

  zap trash: [
    "~/Library/Application Scripts/com.michaellip.keyoverlap",
    "~/Library/Containers/com.michaellip.keyoverlap",
  ]
end
