cask "costbar" do
  version "1.0.0"
  sha256 "d1e5b287cddefe4f30e0f8937eda026468eef7ce10081409e8a77e234f7d2b23"

  url "https://github.com/theluckystrike/barframe-apps/releases/download/costbar-v#{version}/CostBar-#{version}.dmg",
      verified: "github.com/theluckystrike/barframe-apps/"
  name "CostBar"
  desc "AI API cost & budget monitor"
  homepage "https://barframe.com/"

  livecheck do
    url :url
    regex(/^costbar[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases
  end

  depends_on macos: :sonoma

  app "CostBar.app"

  uninstall quit: "com.michaellip.costbar"

  zap trash: [
    "~/Library/Application Scripts/com.michaellip.costbar",
    "~/Library/Containers/com.michaellip.costbar",
  ]
end
