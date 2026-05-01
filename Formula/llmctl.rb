class Llmctl < Formula
  desc "Fast, pipe-friendly CLI for testing OpenAI-compatible and Anthropic LLM endpoints"
  homepage "https://github.com/agent-rt/llmctl"
  version "0.3.1"
  license "Apache-2.0"

  depends_on :macos
  depends_on arch: :arm64

  on_macos do
    on_arm do
      url "https://github.com/agent-rt/homebrew-tap/releases/download/llmctl-v0.3.1/llmctl-0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "4e569c251573dc2a4d637332e65a364cc59f5439c11ea425fb030d2de94097b7"
    end
  end

  def install
    bin.install "llmctl"
  end

  test do
    assert_match "llmctl", shell_output("#{bin}/llmctl --version")
  end
end
