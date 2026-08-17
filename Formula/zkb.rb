class Zkb < Formula
  desc "Local knowledge base and agent memory over your own markdown and csv"
  homepage "https://github.com/agent-rt/zkb"
  version "0.0.6"
  license "Apache-2.0"

  depends_on :macos
  depends_on arch: :arm64

  on_macos do
    on_arm do
      url "https://github.com/agent-rt/homebrew-tap/releases/download/zkb-v0.0.6/zkb-0.0.6-aarch64-apple-darwin.tar.gz"
      sha256 "932f838a86c74533ae5b375b6dc0f95fa964ea9778f5f59dec6aa00ed428bb1e"
    end
  end

  def install
    bin.install "zkb"
  end

  test do
    assert_match "zkb", shell_output("#{bin}/zkb version")
  end
end
