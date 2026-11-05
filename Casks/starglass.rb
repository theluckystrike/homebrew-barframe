cask "starglass" do
  version "1.0.0"
  sha256 "195189612c15266e015ea186feb37e526cdae569d925a7cb3221223f18bc272a"

  url "https://github.com/theluckystrike/barframe-apps/releases/download/starglass-v#{version}/Starglass-#{version}.dmg",
      verified: "github.com/theluckystrike/barframe-apps/"
  name "Starglass Night Sky Planner"
  desc "Cloud and moon night planner"
  homepage "https://barframe.com/"

  livecheck do
    url :url
    regex(/^starglass[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases
  end

  depends_on macos: :sonoma

  app "Starglass.app"

  uninstall quit: "com.michaellip.starglass"

  zap trash: [
    "~/Library/Application Scripts/com.michaellip.starglass",
    "~/Library/Containers/com.michaellip.starglass",
  ]
end
