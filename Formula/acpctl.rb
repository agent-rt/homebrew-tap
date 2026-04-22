class Acpctl < Formula
  desc "Agent-facing CLI for ACP (Agent Client Protocol) agents"
  homepage "https://github.com/agent-rt/acpctl"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/agent-rt/homebrew-tap/releases/download/acpctl-v0.1.0/acpctl-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "64ead3ffb30f46ca0092a3cd52efc6556ecdb4459ae6abc82d5b0e163587a110"
    end
    on_intel do
      url "https://github.com/agent-rt/homebrew-tap/releases/download/acpctl-v0.1.0/acpctl-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "7dd319152c5566c3cde8dcc7d8ad015e430664875b60db46053cca5e74dd7c5d"
    end
  end

  def install
    bin.install "acpctl"
  end

  test do
    assert_match "acpctl", shell_output("#{bin}/acpctl --version")
  end
end
