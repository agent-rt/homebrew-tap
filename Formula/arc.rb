class Arc < Formula
  desc "Remote control for Agents — drive another machine over an encrypted relay"
  homepage "https://github.com/agent-rt/arc"
  version "0.1.0"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/agent-rt/homebrew-tap/releases/download/arc-v0.1.0/arc-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "ba614c26fffc80652739aea2726851405f15b035a28a6a409a7ea6747bbf6fd6"
    end
    on_intel do
      url "https://github.com/agent-rt/homebrew-tap/releases/download/arc-v0.1.0/arc-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "5d5cf601699f991dedca3ffe585db0b20c6f2a295f8f686f927a557ffe62fe2f"
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
