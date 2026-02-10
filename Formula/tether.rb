class Tether < Formula
  include Language::Python::Virtualenv

  desc "Mobile emulator automation CLI for AI agents"
  homepage "https://github.com/flimble/tether"
  url "https://github.com/flimble/tether/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "e959241f12dada43abc8cb75241e302cc9234d9207438690f088f71118ceba2e"
  license "MIT"
  head "https://github.com/flimble/tether.git", branch: "main"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "Maestro E2E Test Authoring CLI", shell_output("#{bin}/tether --help")
  end
end
