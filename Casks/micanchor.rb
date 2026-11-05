cask "micanchor" do
  version "1.0.0"
  sha256 "72e345050095b96494643896ac54bd0fda4b462e86d9ee13e7e10ff8c7963fc7"

  url "https://github.com/theluckystrike/barframe-apps/releases/download/micanchor-v#{version}/MicAnchor-#{version}.dmg",
      verified: "github.com/theluckystrike/barframe-apps/"
  name "MicAnchor"
  desc "Default mic priority keeper"
  homepage "https://barframe.com/"

  livecheck do
    url :url
    regex(/^micanchor[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases
  end

  depends_on macos: :sonoma

  app "MicAnchor.app"

  uninstall quit: "com.michaellip.micanchor"

  zap trash: [
    "~/Library/Application Scripts/com.michaellip.micanchor",
    "~/Library/Containers/com.michaellip.micanchor",
  ]
end
