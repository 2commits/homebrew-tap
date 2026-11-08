class Junjar < Formula
  desc "CI/CD-style orchestration platform for AI agents"
  homepage "https://github.com/2commits/junjar"
  license "BUSL-1.1"
  version "0.1.0"

  on_macos do
    on_arm do
      # aarch64-apple-darwin
      url "https://github.com/2commits/junjar/releases/download/v#{version}/junjar-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end

    on_intel do
      # x86_64-apple-darwin
      url "https://github.com/2commits/junjar/releases/download/v#{version}/junjar-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    on_intel do
      # x86_64-unknown-linux-gnu
      url "https://github.com/2commits/junjar/releases/download/v#{version}/junjar-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "junjar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/junjar --version")
  end
end
