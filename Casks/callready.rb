cask "callready" do
  version "1.0.1"
  sha256 "e83e3790fe3a581ed232088a8e4da3a8861093a04ac2745b3187ab2246660828"

  url "https://github.com/theluckystrike/barframe-apps/releases/download/callready-v#{version}/CallReady-#{version}.dmg",
      verified: "github.com/theluckystrike/barframe-apps/"
  name "CallReady"
  desc "Next call, mic guard and mute key"
  homepage "https://barframe.com/"

  livecheck do
    url :url
    regex(/^callready[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases
  end

  depends_on macos: :sonoma

  app "CallReady.app"

  uninstall quit: "com.michaellip.micanchor"

  zap trash: [
    "~/Library/Application Scripts/com.michaellip.micanchor",
    "~/Library/Containers/com.michaellip.micanchor",
  ]
end
