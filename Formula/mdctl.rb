class Mdctl < Formula
  desc "macOS-native CLI converting PDF / HTML / Office / images to Markdown"
  homepage "https://github.com/agent-rt/mdctl"
  version "0.1.2"
  license "MIT"

  depends_on :macos
  depends_on arch: :arm64

  on_macos do
    on_arm do
      url "https://github.com/agent-rt/homebrew-tap/releases/download/mdctl-v0.1.2/mdctl-0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "c55d781885a70c1d31769b459e4a5d285a0fc28fe0edf102e1ec5b9f452f8c44"
    end
  end

  def install
    bin.install "mdctl"
  end

  test do
    assert_match "mdctl", shell_output("#{bin}/mdctl --help")
  end
end
