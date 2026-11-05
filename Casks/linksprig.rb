cask "linksprig" do
  version "1.0.0"
  sha256 "bc63d2c3f89925fca2ee10e9b8947cdd2d44e952ec0c1a58248f600c0a3d65a6"

  url "https://github.com/theluckystrike/barframe-apps/releases/download/linksprig-v#{version}/LinkSprig-#{version}.dmg",
      verified: "github.com/theluckystrike/barframe-apps/"
  name "LinkSprig"
  desc "Preview broken document links"
  homepage "https://barframe.com/"

  livecheck do
    url :url
    regex(/^linksprig[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases
  end

  depends_on macos: :sonoma

  app "LinkSprig.app"

  uninstall quit: "com.michaellip.linksprig"

  zap trash: [
    "~/Library/Application Scripts/com.michaellip.linksprig",
    "~/Library/Containers/com.michaellip.linksprig",
  ]
end
