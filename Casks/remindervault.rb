cask "remindervault" do
  version "1.0.0"
  sha256 "261bd08df03037e65e875c163af582f5b532a4ad76de469d7ee186a88e6a5be5"

  url "https://github.com/theluckystrike/barframe-apps/releases/download/remindervault-v#{version}/ReminderVault-#{version}.dmg",
      verified: "github.com/theluckystrike/barframe-apps/"
  name "ReminderVault"
  desc "Markdown tasks and reminders"
  homepage "https://barframe.com/"

  livecheck do
    url :url
    regex(/^remindervault[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases
  end

  depends_on macos: :sonoma

  app "ReminderVault.app"

  uninstall quit: "com.michaellip.remindervault"

  zap trash: [
    "~/Library/Application Scripts/com.michaellip.remindervault",
    "~/Library/Containers/com.michaellip.remindervault",
  ]
end
