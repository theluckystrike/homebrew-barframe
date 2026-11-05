cask "stepquay" do
  version "1.0.0"
  sha256 "149883e9dfbe277fbe9b905800b874547d68c726b3100c1b6a41407e22bf9586"

  url "https://github.com/theluckystrike/barframe-apps/releases/download/stepquay-v#{version}/StepQuay-#{version}.dmg",
      verified: "github.com/theluckystrike/barframe-apps/"
  name "StepQuay"
  desc "Resume your next small task"
  homepage "https://barframe.com/"

  livecheck do
    url :url
    regex(/^stepquay[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases
  end

  depends_on macos: :sonoma

  app "StepQuay.app"

  uninstall quit: "com.michaellip.stepquay"

  zap trash: [
    "~/Library/Application Scripts/com.michaellip.stepquay",
    "~/Library/Containers/com.michaellip.stepquay",
  ]
end
