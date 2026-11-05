cask "headroom" do
  version "1.0.0"
  sha256 "0143d73d8c08d7cab1df678c4fbd240037a0964b4e0b8232927a9db0442098f7"

  url "https://github.com/theluckystrike/barframe-apps/releases/download/headroom-v#{version}/Headroom-#{version}.dmg",
      verified: "github.com/theluckystrike/barframe-apps/"
  name "Headroom Agent Memory"
  desc "Memory pressure & swap budget"
  homepage "https://barframe.com/"

  livecheck do
    url :url
    regex(/^headroom[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases
  end

  depends_on macos: :sonoma

  app "Headroom.app"

  uninstall quit: "com.michaellip.headroom"

  zap trash: [
    "~/Library/Application Scripts/com.michaellip.headroom",
    "~/Library/Containers/com.michaellip.headroom",
  ]
end
