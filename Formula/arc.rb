class Arc < Formula
  desc "Remote control for Agents — drive another machine over an encrypted relay"
  homepage "https://github.com/agent-rt/arc"
  version "0.6.1"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/agent-rt/homebrew-tap/releases/download/arc-v0.6.1/arc-0.6.1-aarch64-apple-darwin.tar.gz"
      sha256 "9599eef2de3a216085abed0c9215c79d5e7ed74406e6b216dde15a106b1fcc3c"
    end
    on_intel do
      url "https://github.com/agent-rt/homebrew-tap/releases/download/arc-v0.6.1/arc-0.6.1-x86_64-apple-darwin.tar.gz"
      sha256 "0f0ce4b7f13ddb05eaabf246f83be80261a6b4effee1b33daecabceae2e7e957"
    end
  end

  def install
    bin.install "arc"
  end

  def caveats
    <<~EOS
      arc is the controller (CLI + `arc --mcp` MCP server).
      On the machine you want to drive (Windows):
        winget install agent-rt.arc-runner
        arc-runner install --tailscale
      Paste the printed [targets.win] block into ~/.config/arc/config.toml, then:
        arc -t win shell --cmd ver
      Update later with: arc-runner upgrade
    EOS
  end

  test do
    assert_match "arc", shell_output("#{bin}/arc --version")
  end
end
