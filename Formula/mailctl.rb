class Mailctl < Formula
  desc "Agent-first command-line email client for Gmail and Outlook/Hotmail"
  homepage "https://github.com/agent-rt/mailctl"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/agent-rt/homebrew-tap/releases/download/mailctl-v0.1.1/mailctl-0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "45707a002a72ebc17ef076365a4a93730d47acb4ceddf61c513c34272546550f"
    end
    on_intel do
      url "https://github.com/agent-rt/homebrew-tap/releases/download/mailctl-v0.1.1/mailctl-0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "20fd525f92a4a069a291dc714a99bbe5a0d75a0feb550e39aa97be95e997cdaf"
    end
  end

  def install
    bin.install "mailctl"
  end

  test do
    assert_match "mailctl", shell_output("#{bin}/mailctl --version")
  end
end
