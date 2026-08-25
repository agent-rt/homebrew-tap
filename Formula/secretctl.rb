class Secretctl < Formula
  desc "Agent-first single-binary secret manager for macOS"
  homepage "https://github.com/agent-rt/secretctl"
  version "0.9.0"
  license "Apache-2.0"

  depends_on :macos
  depends_on arch: :arm64

  on_macos do
    on_arm do
      url "https://github.com/agent-rt/homebrew-tap/releases/download/secretctl-v0.9.0/secretctl-0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "c6c06101d2b0fdcdbbc5b73f49732484f322ce7ab9e6ee35ba27e291bf4c1ca1"
    end
  end

  def install
    bin.install "secretctl"
  end

  test do
    assert_match "secretctl", shell_output("#{bin}/secretctl --version")
  end
end
