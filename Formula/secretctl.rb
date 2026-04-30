class Secretctl < Formula
  desc "Agent-first single-binary secret manager for macOS"
  homepage "https://github.com/agent-rt/secretctl"
  version "0.5.1"
  license "Apache-2.0"

  depends_on :macos
  depends_on arch: :arm64

  on_macos do
    on_arm do
      url "https://github.com/agent-rt/homebrew-tap/releases/download/secretctl-v0.5.1/secretctl-0.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "9623f56f57b14162a931fee92c31649cf5ded06a7678c8782fb6e28b1b93933d"
    end
  end

  def install
    bin.install "secretctl"
  end

  test do
    assert_match "secretctl", shell_output("#{bin}/secretctl --version")
  end
end
