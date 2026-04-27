class Memoryctl < Formula
  desc "Persistent agent memory layer (cross-tool, cross-project, cross-session)"
  homepage "https://github.com/agent-rt/memoryctl"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/agent-rt/homebrew-tap/releases/download/memoryctl-v0.1.0/memoryctl-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "6e6400cc1d08aff272f60d82eaaa1e995fd490a6e8582dd6d617d0e977b3429a"
    end
    on_intel do
      url "https://github.com/agent-rt/homebrew-tap/releases/download/memoryctl-v0.1.0/memoryctl-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "e1f6ee16d3e32b6cf23edb56689bb1cdffd8c80457ea0c876d39e65e79f2d521"
    end
  end

  def install
    bin.install "memoryctl"
  end

  test do
    assert_match "memoryctl", shell_output("#{bin}/memoryctl --version")
  end
end
