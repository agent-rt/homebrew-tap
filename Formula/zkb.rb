class Zkb < Formula
  desc "Local knowledge base and agent memory over your own markdown and csv"
  homepage "https://github.com/agent-rt/zkb"
  version "0.0.14"
  license "Apache-2.0"

  depends_on :macos
  depends_on arch: :arm64

  on_macos do
    on_arm do
      url "https://github.com/agent-rt/homebrew-tap/releases/download/zkb-v0.0.14/zkb-0.0.14-aarch64-apple-darwin.tar.gz"
      sha256 "80f18573fb8d951539a2844e15820a0b3c5bd55c43ecb37b81710c806c5b0d7b"
    end
  end

  def install
    bin.install "zkb"
  end

  test do
    assert_match "zkb", shell_output("#{bin}/zkb version")
  end
end
