class Arc < Formula
  desc "Remote control for Agents — drive another machine over an encrypted relay"
  homepage "https://github.com/agent-rt/arc"
  version "0.2.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/agent-rt/homebrew-tap/releases/download/arc-v0.2.0/arc-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "5ea71c134607cc7edb8b9a9159fb721c8771ea06559f250b37a47554477a6a4f"
    end
    on_intel do
      url "https://github.com/agent-rt/homebrew-tap/releases/download/arc-v0.2.0/arc-0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "f629cbd7c442f1c12fa8b475ef84071edfd30b3e940c4010d93bdd8cf4716b3d"
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
        arc-runner install --listen <tailnet-ip>:8787 --trust-tailnet --allow you@example.com
      Paste the printed [targets.win] block into ~/.config/arc/config.toml, then:
        arc -t win shell --cmd ver
    EOS
  end

  test do
    assert_match "arc", shell_output("#{bin}/arc --version")
  end
end
