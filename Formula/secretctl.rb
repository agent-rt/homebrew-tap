class Secretctl < Formula
  desc "Agent-first single-binary secret manager for macOS"
  homepage "https://github.com/agent-rt/secretctl"
  version "0.4.0"
  license "Apache-2.0"

  depends_on :macos
  depends_on arch: :arm64

  on_macos do
    on_arm do
      url "https://github.com/agent-rt/homebrew-tap/releases/download/secretctl-v0.4.0/secretctl-0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "40b36432284896053db79e6bf85f211615027c11ce60f577ce2c294c157b0bec"
    end
  end

  def install
    bin.install "secretctl"
  end

  test do
    assert_match "secretctl", shell_output("#{bin}/secretctl --version")
  end
end
