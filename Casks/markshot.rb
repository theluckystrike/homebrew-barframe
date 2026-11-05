cask "markshot" do
  version "1.0.0"
  sha256 "4d65a5227513f2cddf3b4fb1c3774541b4d6dfe1e6f451feb27c70fb45cb6b9c"

  url "https://github.com/theluckystrike/barframe-apps/releases/download/markshot-v#{version}/MarkShot-#{version}.dmg",
      verified: "github.com/theluckystrike/barframe-apps/"
  name "MarkShot Screenshot Markup"
  desc "Arrows, annotations and steps"
  homepage "https://barframe.com/"

  livecheck do
    url :url
    regex(/^markshot[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases
  end

  depends_on macos: :sonoma

  app "MarkShot.app"

  uninstall quit: "com.michaellip.markshot"

  zap trash: [
    "~/Library/Application Scripts/com.michaellip.markshot",
    "~/Library/Containers/com.michaellip.markshot",
  ]
end
