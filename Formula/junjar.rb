class Junjar < Formula
  desc "CI/CD-style orchestration platform for AI agents"
  homepage "https://github.com/2commits/junjar"
  license "BUSL-1.1"
  version "0.2.4"

  on_macos do
    on_arm do
      # aarch64-apple-darwin
      url "https://github.com/2commits/junjar/releases/download/v0.2.4/junjar-v0.2.4-aarch64-apple-darwin.tar.gz"
      sha256 "7cef059f95cd7376d71674656fcf7cfb7ca38f7116ff18cf98bd1191bc934262"
    end

    on_intel do
      # x86_64-apple-darwin
      url "https://github.com/2commits/junjar/releases/download/v0.2.4/junjar-v0.2.4-x86_64-apple-darwin.tar.gz"
      sha256 "9b128b3a261a606b586810de86f475382a0ad15781d86be1b7ea6f8ba3bffa3b"
    end
  end

  on_linux do
    on_intel do
      # x86_64-unknown-linux-gnu
      url "https://github.com/2commits/junjar/releases/download/v0.2.4/junjar-v0.2.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ac076319e6350c9543fc166c6f32ab498666824dad62290fed87301e8c1aa5c2"
    end
  end

  def install
    bin.install "junjar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/junjar --version")
  end
end
