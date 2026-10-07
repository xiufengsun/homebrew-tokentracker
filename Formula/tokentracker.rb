class Tokentracker < Formula
  desc "Token usage tracker for AI agent CLIs (Claude Code, Codex, Cursor, Gemini, etc.)"
  homepage "https://github.com/xiufengsun/TokenTracker"
  url "https://registry.npmjs.org/tokentracker-cli/-/tokentracker-cli-1.1.13.tgz"
  sha256 "b6d03f774336ead27aa0a6947ba91b88be3904f9133aa19587eb63b8eb42ba62"
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
