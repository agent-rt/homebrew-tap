class Llmctl < Formula
  desc "Fast, pipe-friendly CLI for testing OpenAI-compatible and Anthropic LLM endpoints"
  homepage "https://github.com/agent-rt/llmctl"
  version "0.3.2"
  license "Apache-2.0"

  depends_on :macos
  depends_on arch: :arm64

  on_macos do
    on_arm do
      url "https://github.com/agent-rt/homebrew-tap/releases/download/llmctl-v0.3.2/llmctl-0.3.2-aarch64-apple-darwin.tar.gz"
      sha256 "56a8b627ddbd342c8c9e501d05190212ce77000fe330e1d931927a0aa7b64464"
    end
  end

  def install
    bin.install "llmctl"
  end

  test do
    assert_match "llmctl", shell_output("#{bin}/llmctl --version")
  end
end
