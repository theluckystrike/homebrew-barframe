cask "nativeledger" do
  version "1.0.0"
  sha256 "cd8d2952f1fbb190c42b21afbad8df7245a767061837baab2c896dd9d4a6311b"

  url "https://github.com/theluckystrike/barframe-apps/releases/download/nativeledger-v#{version}/NativeLedger-#{version}.dmg",
      verified: "github.com/theluckystrike/barframe-apps/"
  name "NativeLedger"
  desc "Automatic app update ledger"
  homepage "https://barframe.com/"

  livecheck do
    url :url
    regex(/^nativeledger[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases
  end

  depends_on macos: :sonoma

  app "NativeLedger.app"

  uninstall quit: "com.michaellip.nativeledger"

  zap trash: [
    "~/Library/Application Scripts/com.michaellip.nativeledger",
    "~/Library/Containers/com.michaellip.nativeledger",
  ]
end
