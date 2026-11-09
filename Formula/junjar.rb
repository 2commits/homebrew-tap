class Junjar < Formula
  desc "CI/CD-style orchestration platform for AI agents"
  homepage "https://github.com/2commits/junjar"
  license "BUSL-1.1"
  version "0.3.0"

  on_macos do
    # No Intel macOS build; Intel Macs build from source.
    depends_on arch: :arm64

    on_arm do
      # aarch64-apple-darwin
      url "https://github.com/2commits/junjar/releases/download/v0.3.0/junjar-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "cc0e767617eca5eaf9140872d2041da99af26e095281e96741261a8e0d411290"
    end
  end

  on_linux do
    on_intel do
      # x86_64-unknown-linux-gnu
      url "https://github.com/2commits/junjar/releases/download/v0.3.0/junjar-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7d7ba7c5d2d6593f2306dd28d6718c895727adb9ff3585b2ea2368f08b2ae72f"
    end
  end

  def install
    bin.install "junjar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/junjar --version")
  end
end
