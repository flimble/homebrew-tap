class AgentMutator < Formula
  desc "Mutation testing CLI built for AI coding agents"
  homepage "https://github.com/flimble/agent-mutator"
  url "https://github.com/flimble/agent-mutator/archive/refs/tags/v0.1.0.tar.gz"
  sha256 ""
  license "MIT"
  head "https://github.com/flimble/agent-mutator.git", branch: "main"
  version "0.1.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "Mutation testing for AI agents", shell_output("#{bin}/mutator --help")
  end
end
