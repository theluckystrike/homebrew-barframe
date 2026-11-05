cask "permitpeek" do
  version "1.0.0"
  sha256 "3f8dc46b46cb08028679185fab68863fcfa7ecf1e24f45458a1b0f6330d94327"

  url "https://github.com/theluckystrike/barframe-apps/releases/download/permitpeek-v#{version}/PermitPeek-#{version}.dmg",
      verified: "github.com/theluckystrike/barframe-apps/"
  name "PermitPeek"
  desc "See app permission changes"
  homepage "https://barframe.com/"

  livecheck do
    url :url
    regex(/^permitpeek[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases
  end

  depends_on macos: :sonoma

  app "PermitPeek.app"

  uninstall quit: "com.michaellip.permitpeek"

  zap trash: [
    "~/Library/Application Scripts/com.michaellip.permitpeek",
    "~/Library/Containers/com.michaellip.permitpeek",
  ]
end
