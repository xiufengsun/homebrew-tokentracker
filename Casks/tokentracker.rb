cask "tokentracker" do
  version "1.1.9"
  sha256 "6e5dfe656e75e85fbb6f69247f9575b4f8e1fe942e77391de59f2ee017d2f982"

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
