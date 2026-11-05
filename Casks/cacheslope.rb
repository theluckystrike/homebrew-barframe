cask "cacheslope" do
  version "1.0.0"
  sha256 "d01d15a05a95efce19cab40bb31e194b835d20fb2a9a01f39298daccb2ea0705"

  url "https://github.com/theluckystrike/barframe-apps/releases/download/cacheslope-v#{version}/CacheSlope-#{version}.dmg",
      verified: "github.com/theluckystrike/barframe-apps/"
  name "CacheSlope"
  desc "Find folders that keep growing"
  homepage "https://barframe.com/"

  livecheck do
    url :url
    regex(/^cacheslope[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases
  end

  depends_on macos: :sonoma

  app "CacheSlope.app"

  uninstall quit: "com.michaellip.cacheslope"

  zap trash: [
    "~/Library/Application Scripts/com.michaellip.cacheslope",
    "~/Library/Containers/com.michaellip.cacheslope",
  ]
end
