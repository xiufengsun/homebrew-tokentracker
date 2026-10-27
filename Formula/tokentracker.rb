class Tokentracker < Formula
  desc "Token usage tracker for AI agent CLIs (Claude Code, Codex, Cursor, Gemini, etc.)"
  homepage "https://github.com/xiufengsun/TokenTracker"
  url "https://registry.npmjs.org/tokentracker-cli/-/tokentracker-cli-1.4.13.tgz"
  sha256 "b33480cfc9acd174cf7aa4e12233298ebbe25c34fe6e909c5c7ff51b0f113aab"
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
