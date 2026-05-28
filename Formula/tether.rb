class Tether < Formula
  include Language::Python::Virtualenv

  desc "Mobile emulator automation CLI for AI agents"
  homepage "https://github.com/flimble/tether"
  url "https://github.com/flimble/tether/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "65ea3f2edd00388674ea60c6da95a3d8bf61368fd6b91b51c44a40976c35958d"
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
