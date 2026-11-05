cask "envtrellis" do
  version "1.0.0"
  sha256 "cb91a4514417b944ba3ef2fa44c6db1d3ae895e5ef99061492d5d1379273f1fb"

  url "https://github.com/theluckystrike/barframe-apps/releases/download/envtrellis-v#{version}/EnvTrellis-#{version}.dmg",
      verified: "github.com/theluckystrike/barframe-apps/"
  name "EnvTrellis"
  desc "Check environment readiness"
  homepage "https://barframe.com/"

  livecheck do
    url :url
    regex(/^envtrellis[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases
  end

  depends_on macos: :sonoma

  app "EnvTrellis.app"

  uninstall quit: "com.michaellip.envtrellis"

  zap trash: [
    "~/Library/Application Scripts/com.michaellip.envtrellis",
    "~/Library/Containers/com.michaellip.envtrellis",
  ]
end
