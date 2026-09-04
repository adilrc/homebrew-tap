cask "remora" do
  version "0.3.1"
  sha256 "c7e42db42f116b50b1f491784966ad03b20b9b8d0edb7c47302816f9e8fdbc5d"

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
