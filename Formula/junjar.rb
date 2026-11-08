class Junjar < Formula
  desc "CI/CD-style orchestration platform for AI agents"
  homepage "https://github.com/2commits/junjar"
  license "BUSL-1.1"
  version "0.2.3"

  on_macos do
    on_arm do
      # aarch64-apple-darwin
      url "https://github.com/2commits/junjar/releases/download/v0.2.3/junjar-v0.2.3-aarch64-apple-darwin.tar.gz"
      sha256 "2911db5356310fd6155fb66f448117f1731ecabd235d5179f25469200d26f90e"
    end

    on_intel do
      # x86_64-apple-darwin
      url "https://github.com/2commits/junjar/releases/download/v0.2.3/junjar-v0.2.3-x86_64-apple-darwin.tar.gz"
      sha256 "acd058cd0128e4fcb73a43704ab542e02c3f074762323e0bd75d6f6015db58a3"
    end
  end

  on_linux do
    on_intel do
      # x86_64-unknown-linux-gnu
      url "https://github.com/2commits/junjar/releases/download/v0.2.3/junjar-v0.2.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0df5f6ba031f212b6a5f00f134bac25640bee48c8d0143953ac710055f700903"
    end
  end

  def install
    bin.install "junjar"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/junjar --version")
  end
end
