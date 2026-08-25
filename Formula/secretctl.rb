class Secretctl < Formula
  desc "Agent-first single-binary secret manager for macOS"
  homepage "https://github.com/agent-rt/secretctl"
  version "0.8.1"
  license "Apache-2.0"

  depends_on :macos
  depends_on arch: :arm64

  on_macos do
    on_arm do
      url "https://github.com/agent-rt/homebrew-tap/releases/download/secretctl-v0.8.1/secretctl-0.8.1-aarch64-apple-darwin.tar.gz"
      sha256 "74311ab3d27e4273d33356ccc2e68e61bc97478cdd1cdd1fa522652172900746"
    end
  end

  def install
    bin.install "secretctl"
  end

  test do
    assert_match "secretctl", shell_output("#{bin}/secretctl --version")
  end
end
