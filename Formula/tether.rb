class Tether < Formula
  include Language::Python::Virtualenv

  desc "Mobile emulator automation CLI for AI agents"
  homepage "https://github.com/flimble/tether"
  url "https://github.com/flimble/tether/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "2900664a26f684a76eadf96909d357bd69141e18f7d90d36d031604d96a88c0d"
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
