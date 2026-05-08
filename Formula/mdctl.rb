class Mdctl < Formula
  desc "macOS-native CLI converting PDF / HTML / Office / images to Markdown"
  homepage "https://github.com/agent-rt/mdctl"
  version "0.1.3"
  license "MIT"

  depends_on :macos
  depends_on arch: :arm64

  on_macos do
    on_arm do
      url "https://github.com/agent-rt/homebrew-tap/releases/download/mdctl-v0.1.3/mdctl-0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "62fac6204b358bbe6a6f5066b9ce90766a1e733ddd174903ca835287c908ff3e"
    end
  end

  def install
    bin.install "mdctl"
  end

  test do
    assert_match "mdctl", shell_output("#{bin}/mdctl --help")
  end
end
