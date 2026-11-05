cask "hashdock" do
  version "1.0.0"
  sha256 "59bc7a537632bd94ae8b43227300d7da258d822cae6999f5fcd6ba7f88bee262"

  url "https://github.com/theluckystrike/barframe-apps/releases/download/hashdock-v#{version}/HashDock-#{version}.dmg",
      verified: "github.com/theluckystrike/barframe-apps/"
  name "HashDock"
  desc "Verify every delivery copy"
  homepage "https://barframe.com/"

  livecheck do
    url :url
    regex(/^hashdock[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases
  end

  depends_on macos: :sonoma

  app "HashDock.app"

  uninstall quit: "com.michaellip.hashdock"

  zap trash: [
    "~/Library/Application Scripts/com.michaellip.hashdock",
    "~/Library/Containers/com.michaellip.hashdock",
  ]
end
