class AgentMutator < Formula
  desc "Mutation testing CLI built for AI coding agents"
  homepage "https://github.com/flimble/agent-mutator"
  url "https://github.com/flimble/agent-mutator/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "0300241b46aab9c80a02c494da4c6f7a01f23b09a6e4792c37c68a7c3bab9816"
  license "MIT"
  head "https://github.com/flimble/agent-mutator.git", branch: "main"
  version "0.2.1"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "Mutation testing for AI agents", shell_output("#{bin}/mutator --help")
  end
end
