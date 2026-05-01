class Llmctl < Formula
  desc "Fast, pipe-friendly CLI for testing OpenAI-compatible and Anthropic LLM endpoints"
  homepage "https://github.com/agent-rt/llmctl"
  version "0.3.0"
  license "Apache-2.0"

  depends_on :macos
  depends_on arch: :arm64

  on_macos do
    on_arm do
      url "https://github.com/agent-rt/homebrew-tap/releases/download/llmctl-v0.3.0/llmctl-0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "feb1b755a72b01da6639d76e6cd64daa126a66b5cc97670c89bd578e8417c179"
    end
  end

  def install
    bin.install "llmctl"
  end

  test do
    assert_match "llmctl", shell_output("#{bin}/llmctl --version")
  end
end
