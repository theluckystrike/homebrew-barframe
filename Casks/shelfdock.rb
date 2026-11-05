cask "shelfdock" do
  version "1.0.0"
  sha256 "607bd5d44abd04d5f4227d9fa84809c3c609e7be9b6011c0e52a0c1679cd4931"

  url "https://github.com/theluckystrike/barframe-apps/releases/download/shelfdrop-v#{version}/ShelfDock-#{version}.dmg",
      verified: "github.com/theluckystrike/barframe-apps/"
  name "ShelfDock"
  desc "Drag & drop file staging"
  homepage "https://barframe.com/"

  livecheck do
    url :url
    regex(/^shelfdrop[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases
  end

  depends_on macos: :sonoma

  app "ShelfDock.app"

  uninstall quit: "com.michaellip.shelfdock"

  zap trash: [
    "~/Library/Application Scripts/com.michaellip.shelfdock",
    "~/Library/Containers/com.michaellip.shelfdock",
  ]
end
