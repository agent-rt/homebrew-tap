class Arc < Formula
  desc "Remote control for Agents — drive another machine over an encrypted relay"
  homepage "https://github.com/agent-rt/arc"
  version "0.8.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/agent-rt/homebrew-tap/releases/download/arc-v0.8.0/arc-0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "96241ef3ce1740e46256c60d95342d2d40aab8417369465e3dcf4dd6b4d83f4f"
    end
    on_intel do
      url "https://github.com/agent-rt/homebrew-tap/releases/download/arc-v0.8.0/arc-0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "51138200551c89d3921b57540b1af61b565b9be4b64e49d9dd2081a46543c2bd"
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
