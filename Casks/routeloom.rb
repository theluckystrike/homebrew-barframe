cask "routeloom" do
  version "1.0.0"
  sha256 "6370f1d74b39b03205d71aee6b00da7d57992f1278ab462dd7170cdfbc21f992"

  url "https://github.com/theluckystrike/barframe-apps/releases/download/routeloom-v#{version}/RouteLoom-#{version}.dmg",
      verified: "github.com/theluckystrike/barframe-apps/"
  name "RouteLoom Connection Report"
  desc "Compare connection failures"
  homepage "https://barframe.com/"

  livecheck do
    url :url
    regex(/^routeloom[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases
  end

  depends_on macos: :sonoma

  app "RouteLoom.app"

  uninstall quit: "com.michaellip.routeloom"

  zap trash: [
    "~/Library/Application Scripts/com.michaellip.routeloom",
    "~/Library/Containers/com.michaellip.routeloom",
  ]
end
