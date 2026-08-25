class Secretctl < Formula
  desc "Agent-first single-binary secret manager for macOS"
  homepage "https://github.com/agent-rt/secretctl"
  version "0.10.1"
  license "Apache-2.0"

  depends_on :macos
  depends_on arch: :arm64

  on_macos do
    on_arm do
      url "https://github.com/agent-rt/homebrew-tap/releases/download/secretctl-v0.10.1/secretctl-0.10.1-aarch64-apple-darwin.tar.gz"
      sha256 "23609994608dff2fcc561c1fad3146247377d2fc97583b3e905ef705b49628c4"
    end
  end

  def install
    bin.install "secretctl"
  end

  test do
    assert_match "secretctl", shell_output("#{bin}/secretctl --version")
  end
end
