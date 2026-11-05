cask "quotapace" do
  version "1.0.0"
  sha256 "2d7d31fb5c5608b3f9ba754d80610d3e54d56e221dafe1a79c7676e6053ac3de"

  url "https://github.com/theluckystrike/barframe-apps/releases/download/quotapace-v#{version}/QuotaPace-#{version}.dmg",
      verified: "github.com/theluckystrike/barframe-apps/"
  name "QuotaPace"
  desc "Token pace & usage limits"
  homepage "https://barframe.com/"

  livecheck do
    url :url
    regex(/^quotapace[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases
  end

  depends_on macos: :sonoma

  app "QuotaPace.app"

  uninstall quit: "com.michaellip.quotapace"

  zap trash: [
    "~/Library/Application Scripts/com.michaellip.quotapace",
    "~/Library/Containers/com.michaellip.quotapace",
  ]
end
