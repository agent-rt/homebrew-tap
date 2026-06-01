class Mobctl < Formula
  desc "Agent-first CLI to bring mobile simulators and Android devices to a ready state"
  homepage "https://github.com/agent-rt/mobctl"
  version "0.1.0"
  license "MIT"

  depends_on :macos
  depends_on arch: :arm64

  on_macos do
    on_arm do
      url "https://github.com/agent-rt/homebrew-tap/releases/download/mobctl-v0.1.0/mobctl-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "9d4eda7ce4a6f7d8a6c5eec3a135ec08bdb57310913102d79a2b8326956df189"
    end
  end

  def install
    bin.install "mobctl"
  end

  test do
    assert_match "mobctl", shell_output("#{bin}/mobctl --help")
  end
end
