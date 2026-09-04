cask "remora" do
  version "0.3.2"
  sha256 "33665b736e28c5280fbc648c350452c717d578e8d477a790ef1ae429f15c091e"

  url "https://github.com/adilrc/Remora/releases/download/v#{version}/Remora-#{version}.zip"
  name "Remora"
  desc "Performance HUD that attaches to the frontmost window"
  homepage "https://github.com/adilrc/Remora"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Remora.app"

  uninstall quit: "com.remora.app"

  zap trash: [
    "~/.config/remora",
    "~/Library/Preferences/com.remora.app.plist",
  ]
end
