class Tether < Formula
  include Language::Python::Virtualenv

  desc "Mobile emulator automation CLI for AI agents"
  homepage "https://github.com/flimble/tether"
  url "https://github.com/flimble/tether/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "3a723ce9a0ee3bb95b13526fb5b6a04de72524f1effab29b7a2da1ed6ba5f751"
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
