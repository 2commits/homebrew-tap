class Junjar < Formula
  desc "CI/CD-style orchestration platform for AI agents"
  homepage "https://github.com/2commits/junjar"
  license "BUSL-1.1"

  on_macos do
    # No Intel macOS build; Intel Macs build from source.
    depends_on arch: :arm64

    on_arm do
      # aarch64-apple-darwin
      url "https://github.com/2commits/junjar/releases/download/v0.3.1/junjar-v0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "7bb94dd5f0cf164281c08da8b63cac6664cc5ceb76a4d563e7d17b720eeea00f"
    end
  end

  on_linux do
    on_intel do
      # x86_64-unknown-linux-gnu
      url "https://github.com/2commits/junjar/releases/download/v0.8.0/junjar-v0.8.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cd56883c5781d022864eda362b20b4039d18af3112a3976773a46716f9a2efac"
    end
  end

  def install
    bin.install "junjar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/junjar --version")
  end
end
