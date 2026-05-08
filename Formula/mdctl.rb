class Mdctl < Formula
  desc "macOS-native CLI converting PDF / HTML / Office / images to Markdown"
  homepage "https://github.com/agent-rt/mdctl"
  version "0.1.1"
  license "MIT"

  depends_on :macos
  depends_on arch: :arm64

  on_macos do
    on_arm do
      url "https://github.com/agent-rt/homebrew-tap/releases/download/mdctl-v0.1.1/mdctl-0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "2ae5732135a8900551faa32a29db533fe8defed0822b692a3e879859de4cb2dc"
    end
  end

  def install
    bin.install "mdctl"
  end

  test do
    assert_match "mdctl", shell_output("#{bin}/mdctl --help")
  end
end
