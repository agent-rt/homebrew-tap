class Mailctl < Formula
  desc "Agent-first command-line email client for Gmail and Outlook/Hotmail"
  homepage "https://github.com/agent-rt/mailctl"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/agent-rt/homebrew-tap/releases/download/mailctl-v0.1.3/mailctl-0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "e1fd2f3f0e24ab58cf2ffc33123f74da1b46f509ad09b9e511aebff9590742dc"
    end
    on_intel do
      url "https://github.com/agent-rt/homebrew-tap/releases/download/mailctl-v0.1.3/mailctl-0.1.3-x86_64-apple-darwin.tar.gz"
      sha256 "b548aa349000a9704ed2ca479366baedb6cd64a3599ecd357559c4b2e19a7624"
    end
  end

  def install
    bin.install "mailctl"
  end

  test do
    assert_match "mailctl", shell_output("#{bin}/mailctl --version")
  end
end
