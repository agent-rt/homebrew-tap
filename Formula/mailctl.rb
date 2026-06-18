class Mailctl < Formula
  desc "Agent-first command-line email client for Gmail and Outlook/Hotmail"
  homepage "https://github.com/agent-rt/mailctl"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/agent-rt/homebrew-tap/releases/download/mailctl-v0.1.2/mailctl-0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "54040d193a204e6aa0d2f9f94628a0f5cc6a2027a7f28d819107ffa7698c420d"
    end
    on_intel do
      url "https://github.com/agent-rt/homebrew-tap/releases/download/mailctl-v0.1.2/mailctl-0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "fc835f85a1b816ac98b71b7deb3a53957c54ed1190791d37d1f2dc4877f58a39"
    end
  end

  def install
    bin.install "mailctl"
  end

  test do
    assert_match "mailctl", shell_output("#{bin}/mailctl --version")
  end
end
