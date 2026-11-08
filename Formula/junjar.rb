class Junjar < Formula
  desc "CI/CD-style orchestration platform for AI agents"
  homepage "https://github.com/2commits/junjar"
  license "BUSL-1.1"
  version "0.2.5"

  on_macos do
    # No Intel macOS build; Intel Macs build from source.
    depends_on arch: :arm64

    on_arm do
      # aarch64-apple-darwin
      url "https://github.com/2commits/junjar/releases/download/v0.2.5/junjar-v0.2.5-aarch64-apple-darwin.tar.gz"
      sha256 "30da36f300071e8fbb778c3bc4d7a03f928b4bc497214eff3ebf34080dbd8fc2"
    end
  end

  on_linux do
    on_intel do
      # x86_64-unknown-linux-gnu
      url "https://github.com/2commits/junjar/releases/download/v0.2.5/junjar-v0.2.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b9e69ef0585f4138ed6ff957db723b3d1aab656f176ba5e7b819f413bf6320be"
    end
  end

  def install
    bin.install "junjar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/junjar --version")
  end
end
