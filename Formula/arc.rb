class Arc < Formula
  desc "Remote control for Agents — drive another machine over an encrypted relay"
  homepage "https://github.com/agent-rt/arc"
  version "0.4.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/agent-rt/homebrew-tap/releases/download/arc-v0.4.0/arc-0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "5907d5769c54bd8275baafeffb3bdbc449b96d0c59dd52275bff4cf6e9e33511"
    end
    on_intel do
      url "https://github.com/agent-rt/homebrew-tap/releases/download/arc-v0.4.0/arc-0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "52b8b4b64a3776affb0d3722af20873a2c62121c820fbc5e48a1c112f2ebfd79"
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
