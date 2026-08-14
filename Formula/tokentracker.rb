class Tokentracker < Formula
  desc "Token usage tracker for AI agent CLIs (Claude Code, Codex, Cursor, Gemini, etc.)"
  homepage "https://github.com/xiufengsun/TokenTracker"
  url "https://registry.npmjs.org/tokentracker-cli/-/tokentracker-cli-0.88.8.tgz"
  sha256 "60daeb54e912e7816e152e9410adb2a4eb2d4504fb51dee974d04ab09841a4f8"
  license "MIT"

  livecheck do
    url "https://registry.npmjs.org/tokentracker-cli/latest"
    regex(/"version"\s*:\s*"([^"]+)"/i)
  end

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "tokentracker", shell_output("#{bin}/tokentracker --help")
  end
end
