cask "callready" do
  version "1.0.2"
  sha256 "fa1487b21b163b24da04a466f514c1b97030229b1d0edf1d38f9d0f79c3e541e"

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

  uninstall quit: "com.michaellip.callready"

  zap trash: [
    "~/Library/Application Scripts/com.michaellip.callready",
    "~/Library/Containers/com.michaellip.callready",
  ]
end
