class Mcpctl < Formula
  desc "The MCP control utility for AI agents"
  homepage "https://github.com/agent-rt/mcpctl"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/agent-rt/homebrew-tap/releases/download/mcpctl-v0.1.0/mcpctl-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "ec0776c7d37176bf53c8ffc29d0dea0bf00af33b77ce0d21d6252fe28e2f625c"
    end
    on_intel do
      url "https://github.com/agent-rt/homebrew-tap/releases/download/mcpctl-v0.1.0/mcpctl-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "086a7a0969043460dabef41609805eb290ba8ae77bbd24a790a58b0e79fc8a72"
    end
  end

  def install
    bin.install "mcpctl"
  end

  test do
    assert_match "mcpctl", shell_output("#{bin}/mcpctl --version")
  end
end
