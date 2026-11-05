cask "columnlatch" do
  version "1.0.0"
  sha256 "51b2207e9a28b819716914dd7c910359514eb27621abdb144c25b1d7243021a7"

  url "https://github.com/theluckystrike/barframe-apps/releases/download/columnlatch-v#{version}/ColumnLatch-#{version}.dmg",
      verified: "github.com/theluckystrike/barframe-apps/"
  name "ColumnLatch"
  desc "Check recurring CSV imports"
  homepage "https://barframe.com/"

  livecheck do
    url :url
    regex(/^columnlatch[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases
  end

  depends_on macos: :sonoma

  app "ColumnLatch.app"

  uninstall quit: "com.michaellip.columnlatch"

  zap trash: [
    "~/Library/Application Scripts/com.michaellip.columnlatch",
    "~/Library/Containers/com.michaellip.columnlatch",
  ]
end
