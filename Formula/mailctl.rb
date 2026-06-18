class Mailctl < Formula
  desc "Agent-first command-line email client for Gmail and Outlook/Hotmail"
  homepage "https://github.com/agent-rt/mailctl"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/agent-rt/homebrew-tap/releases/download/mailctl-v0.1.0/mailctl-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "f5c03fc593b13fb6fe2cc5d0e68bb897ecc41ece38d33279f5a922f3b90dc62d"
    end
    on_intel do
      url "https://github.com/agent-rt/homebrew-tap/releases/download/mailctl-v0.1.0/mailctl-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "0d94e37153a699e9bcee16843f6beac19f8fe2b22edaf2a565d415f048827973"
    end
  end

  def install
    bin.install "mailctl"
  end

  test do
    assert_match "mailctl", shell_output("#{bin}/mailctl --version")
  end
end
