cask "remora" do
  version "0.3.0"
  sha256 "0a20bf113f5ee7d0cd59a02641cf5891945730a87882d5c4c8a3d88aae38f956"

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
