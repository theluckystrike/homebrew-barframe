cask "hushkey" do
  version "1.0.0"
  sha256 "b8b1fa0a2a0b1d8274e6781f4a93ad6a252eb49cb802e6a68ffb7205bb6155f5"

  url "https://github.com/theluckystrike/barframe-apps/releases/download/hushkey-v#{version}/HushKey-#{version}.dmg",
      verified: "github.com/theluckystrike/barframe-apps/"
  name "HushKey Mic Mute Hotkey"
  desc "Hold to talk, release to mute"
  homepage "https://barframe.com/"

  livecheck do
    url :url
    regex(/^hushkey[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases
  end

  depends_on macos: :sonoma

  app "HushKey.app"

  uninstall quit: "com.michaellip.hushkey"

  zap trash: [
    "~/Library/Application Scripts/com.michaellip.hushkey",
    "~/Library/Containers/com.michaellip.hushkey",
  ]
end
