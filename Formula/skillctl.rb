class Skillctl < Formula
  desc "Profile-driven Agent skill manager and protocol gateway"
  homepage "https://github.com/agent-rt/skillctl"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/agent-rt/homebrew-tap/releases/download/skillctl-v0.1.0/skillctl-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "7435828523f9eeb539fe7bb30e105fdb095962986bf5f293646f1f90b5ef13b2"
    end
    on_intel do
      url "https://github.com/agent-rt/homebrew-tap/releases/download/skillctl-v0.1.0/skillctl-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "24ae99109c1454725cc6cd362f0670806adc9676d0db0d9d76a3f7f363506b9e"
    end
  end

  def install
    bin.install "skillctl"
  end

  test do
    assert_match "skillctl", shell_output("#{bin}/skillctl --version")
  end
end
