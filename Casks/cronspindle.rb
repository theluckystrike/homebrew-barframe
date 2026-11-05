cask "cronspindle" do
  version "1.0.0"
  sha256 "10f7258beb9ee95cd4adb7cc1e0dffdc5a4814da663f64f749973862df31d01e"

  url "https://github.com/theluckystrike/barframe-apps/releases/download/cronspindle-v#{version}/CronSpindle-#{version}.dmg",
      verified: "github.com/theluckystrike/barframe-apps/"
  name "CronSpindle"
  desc "Find schedule collisions"
  homepage "https://barframe.com/"

  livecheck do
    url :url
    regex(/^cronspindle[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases
  end

  depends_on macos: :sonoma

  app "CronSpindle.app"

  uninstall quit: "com.michaellip.cronspindle"

  zap trash: [
    "~/Library/Application Scripts/com.michaellip.cronspindle",
    "~/Library/Containers/com.michaellip.cronspindle",
  ]
end
