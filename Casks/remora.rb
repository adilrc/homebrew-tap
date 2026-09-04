cask "remora" do
  version "0.2.0"
  sha256 "c7b3eada4ca040052b04fab70620806db22274e2391dd823a378dc276798b9e8"

  url "https://github.com/adilrc/Remora/releases/download/v#{version}/Remora-#{version}.zip"
  name "Remora"
  desc "Performance HUD that attaches to the frontmost window"
  homepage "https://github.com/adilrc/Remora"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Remora.app"

  uninstall quit: "com.remora.app"

  zap trash: [
    "~/.config/remora",
    "~/Library/Preferences/com.remora.app.plist",
  ]
end
