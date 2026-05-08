class Mdctl < Formula
  desc "macOS-native CLI converting PDF / HTML / Office / images to Markdown"
  homepage "https://github.com/agent-rt/mdctl"
  version "0.1.0"
  license "MIT"

  depends_on :macos
  depends_on arch: :arm64

  on_macos do
    on_arm do
      url "https://github.com/agent-rt/homebrew-tap/releases/download/mdctl-v0.1.0/mdctl-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "81e018af857a822f3216df53055a2f1b4ce64223c095e874dee9934846acd31b"
    end
  end

  def install
    bin.install "mdctl"
  end

  test do
    assert_match "mdctl", shell_output("#{bin}/mdctl --help")
  end
end
