class Tether < Formula
  include Language::Python::Virtualenv

  desc "Mobile emulator automation CLI for AI agents"
  homepage "https://github.com/flimble/tether"
  url "https://github.com/flimble/tether/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "e270ca6e6a60c0513a1eab5001dcb5908e0de3427bd94d1536a41d00a5f0aafa"
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
