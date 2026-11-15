cask "tokentracker" do
  version "1.5.21"
  sha256 "bea33cfda0c1ef604f7dc2c82205440884a6bf8ca6d0f6fb356cd61ab14a3b4a"

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
