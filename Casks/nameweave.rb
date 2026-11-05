cask "nameweave" do
  version "1.0.0"
  sha256 "e4317310772cd5df7993860a69d1bbabbf3a525f15a80fbd0ceb28c4d0edf7aa"

  url "https://github.com/theluckystrike/barframe-apps/releases/download/nameweave-v#{version}/NameWeave-#{version}.dmg",
      verified: "github.com/theluckystrike/barframe-apps/"
  name "NameWeave"
  desc "Check filename portability"
  homepage "https://barframe.com/"

  livecheck do
    url :url
    regex(/^nameweave[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases
  end

  depends_on macos: :sonoma

  app "NameWeave.app"

  uninstall quit: "com.michaellip.nameweave"

  zap trash: [
    "~/Library/Application Scripts/com.michaellip.nameweave",
    "~/Library/Containers/com.michaellip.nameweave",
  ]
end
