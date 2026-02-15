class AgentMutator < Formula
  desc "Mutation testing CLI built for AI coding agents"
  homepage "https://github.com/flimble/agent-mutator"
  url "https://github.com/flimble/agent-mutator/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "45657e24212d78f09b982e3c825f10088e1d54458a28530181c1f05117f6beac"
  license "MIT"
  head "https://github.com/flimble/agent-mutator.git", branch: "main"
  version "0.2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "Mutation testing for AI agents", shell_output("#{bin}/mutator --help")
  end
end
