class AgentCrx < Formula
  desc "Chrome extension CDP inspector for AI agents"
  homepage "https://github.com/flimble/agent-crx"
  url "https://registry.npmjs.org/@flimble/agent-crx/-/agent-crx-0.2.0.tgz"
  sha256 "84858550a935f9bb98d9c9c8f33b600707d2498142c9bebe2a7451402bf8509d"
  license "MIT"

  depends_on "node@22"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match "CDP inspector", shell_output("#{bin}/agent-crx --help")
  end
end
