class AgentCrx < Formula
  desc "Chrome extension CDP inspector for AI agents"
  homepage "https://github.com/flimble/agent-crx"
  url "https://github.com/flimble/agent-crx/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "80a20aa03dc2378dc3bdfa075c34febdacbfffd491578bbf7ab05d151adad8a4"
  license "MIT"
  head "https://github.com/flimble/agent-crx.git", branch: "main"

  depends_on "node@22"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match "CDP inspector", shell_output("#{bin}/agent-crx --help")
  end
end
