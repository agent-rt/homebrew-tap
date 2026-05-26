class Llmctl < Formula
  desc "Fast, pipe-friendly CLI for testing OpenAI-compatible and Anthropic LLM endpoints"
  homepage "https://github.com/agent-rt/llmctl"
  version "0.3.3"
  license "Apache-2.0"

  depends_on :macos
  depends_on arch: :arm64

  on_macos do
    on_arm do
      url "https://github.com/agent-rt/homebrew-tap/releases/download/llmctl-v0.3.3/llmctl-0.3.3-aarch64-apple-darwin.tar.gz"
      sha256 "3d4aa41c879aace67b85620ab73fa4a7aa380061bec829c385a81aede7954005"
    end
  end

  def install
    bin.install "llmctl"
  end

  test do
    assert_match "llmctl", shell_output("#{bin}/llmctl --version")
  end
end
