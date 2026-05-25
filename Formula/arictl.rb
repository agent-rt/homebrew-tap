class Arictl < Formula
  desc "macOS system cleanup tool — scan, preview, and trash caches and build artifacts"
  homepage "https://github.com/agent-rt/arictl"
  version "0.1.0"
  license "MIT"

  depends_on :macos
  depends_on arch: :arm64

  on_macos do
    on_arm do
      url "https://github.com/agent-rt/homebrew-tap/releases/download/arictl-v0.1.0/arictl-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "fd55ada9a948b51018da97be5bd8ea50742fd0c3d78b2eb68563ec16410e184b"
    end
  end

  def install
    bin.install "arictl"
  end

  test do
    assert_match "arictl", shell_output("#{bin}/arictl --help")
  end
end
