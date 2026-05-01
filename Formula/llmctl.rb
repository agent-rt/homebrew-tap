class Llmctl < Formula
  desc "Fast, pipe-friendly CLI for testing OpenAI-compatible and Anthropic LLM endpoints"
  homepage "https://github.com/agent-rt/llmctl"
  version "0.2.0"
  license "Apache-2.0"

  depends_on :macos
  depends_on arch: :arm64

  on_macos do
    on_arm do
      url "https://github.com/agent-rt/homebrew-tap/releases/download/llmctl-v0.2.0/llmctl-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "62b990cd4187464a69aa560ccd5dbcccbf4e5f6d57a183de5659d2f474c1a2f6"
    end
  end

  def install
    bin.install "llmctl"
  end

  test do
    assert_match "llmctl", shell_output("#{bin}/llmctl --version")
  end
end
