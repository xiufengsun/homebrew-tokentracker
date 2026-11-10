cask "tokentracker" do
  version "1.5.17"
  sha256 "b48cab4069b4f7e27f4155bce22206501435c5220ccf94cae54b4e37c8e43c33"

  url "https://github.com/xiufengsun/TokenTracker/releases/download/v#{version}/TokenTrackerBar.dmg"
  name "TokenTracker"
  desc "Local-first AI token usage tracker menu bar app"
  homepage "https://github.com/xiufengsun/TokenTracker"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "TokenTracker.app"

  zap trash: [
    "~/Library/Application Support/TokenTrackerBar",
    "~/Library/Caches/me.rynn.TokenTrackerBar",
    "~/Library/Preferences/me.rynn.TokenTrackerBar.plist",
    "~/Library/Saved Application State/me.rynn.TokenTrackerBar.savedState",
    "~/.tokentracker",
  ]
end
