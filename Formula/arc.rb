class Arc < Formula
  desc "Remote control for Agents — drive another machine over an encrypted relay"
  homepage "https://github.com/agent-rt/arc"
  version "0.7.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/agent-rt/homebrew-tap/releases/download/arc-v0.7.0/arc-0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "95de501be9799a547ff57814dbfb21808d8113b37fbbb881644921e513c190e1"
    end
    on_intel do
      url "https://github.com/agent-rt/homebrew-tap/releases/download/arc-v0.7.0/arc-0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "385aaddb1310ef615f7621800707496944780f9a423705ec2f51ece883fbb0b6"
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
