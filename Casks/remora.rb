cask "remora" do
  version "0.1.0"
  sha256 "e33fd2778f060d7ff05eccfa4e933fab80137dfda323116ebc55f1e0bb79c741"

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
