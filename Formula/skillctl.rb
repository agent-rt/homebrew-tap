class Skillctl < Formula
  desc "Profile-driven Agent skill manager and protocol gateway"
  homepage "https://github.com/agent-rt/skillctl"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/agent-rt/homebrew-tap/releases/download/skillctl-v0.1.1/skillctl-0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "0bbb725f4647bcd1c1fe511733ab3c9d19c0150a0175ddf0694d3ab52fd9acd0"
    end
    on_intel do
      url "https://github.com/agent-rt/homebrew-tap/releases/download/skillctl-v0.1.1/skillctl-0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "e953834fda1ea85035f301ab42f51c564b4bf87e598263a42f546c03d70269a3"
    end
  end

  def install
    bin.install "skillctl"
  end

  test do
    assert_match "skillctl", shell_output("#{bin}/skillctl --version")
  end
end
