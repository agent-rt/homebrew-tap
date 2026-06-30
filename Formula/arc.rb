class Arc < Formula
  desc "Remote control for Agents — drive another machine over an encrypted relay"
  homepage "https://github.com/agent-rt/arc"
  version "0.3.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/agent-rt/homebrew-tap/releases/download/arc-v0.3.0/arc-0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "2396b85d50d0cb7db2bbb310e2c87946f6095469bcc78a0eebb6495e8da5a6da"
    end
    on_intel do
      url "https://github.com/agent-rt/homebrew-tap/releases/download/arc-v0.3.0/arc-0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "eec79707f2813c9953fe4a7a4785eabe3b93e7c1b07b4305e49e538f7f18b9de"
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
