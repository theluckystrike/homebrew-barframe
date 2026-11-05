cask "meetnext" do
  version "1.0.0"
  sha256 "f9d75a6d158670c59d43eccc9d8fc19fae1064cb214de1102af45ca47057a649"

  url "https://github.com/theluckystrike/barframe-apps/releases/download/meetnext-v#{version}/MeetNext-#{version}.dmg",
      verified: "github.com/theluckystrike/barframe-apps/"
  name "MeetNext"
  desc "Meeting countdown & timeline"
  homepage "https://barframe.com/"

  livecheck do
    url :url
    regex(/^meetnext[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases
  end

  depends_on macos: :sonoma

  app "MeetNext.app"

  uninstall quit: "com.michaellip.meetnext"

  zap trash: [
    "~/Library/Application Scripts/com.michaellip.meetnext",
    "~/Library/Containers/com.michaellip.meetnext",
  ]
end
