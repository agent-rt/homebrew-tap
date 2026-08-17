class Zkb < Formula
  desc "Local knowledge base and agent memory over your own markdown and csv"
  homepage "https://github.com/agent-rt/zkb"
  version "0.0.5"
  license "Apache-2.0"

  depends_on :macos
  depends_on arch: :arm64

  on_macos do
    on_arm do
      url "https://github.com/agent-rt/homebrew-tap/releases/download/zkb-v0.0.5/zkb-0.0.5-aarch64-apple-darwin.tar.gz"
      sha256 "065a76a8c5fa7cb03dbaa67aa9b3c1cb031c40c04dcda0b18918e076d67d5fae"
    end
  end

  def install
    bin.install "zkb"
  end

  test do
    assert_match "zkb", shell_output("#{bin}/zkb version")
  end
end
