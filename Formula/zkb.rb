class Zkb < Formula
  desc "Local knowledge base and agent memory over your own markdown and csv"
  homepage "https://github.com/agent-rt/zkb"
  version "0.0.24"
  license "Apache-2.0"

  depends_on :macos
  depends_on arch: :arm64

  on_macos do
    on_arm do
      url "https://github.com/agent-rt/homebrew-tap/releases/download/zkb-v0.0.24/zkb-0.0.24-aarch64-apple-darwin.tar.gz"
      sha256 "290d5bb0449f902e9b7239195fb15f3cc8b6e0b03fed05ccd94eed059572289c"
    end
  end

  def install
    bin.install "zkb"
  end

  test do
    assert_match "zkb", shell_output("#{bin}/zkb version")
  end
end
