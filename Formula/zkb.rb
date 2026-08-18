class Zkb < Formula
  desc "Local knowledge base and agent memory over your own markdown and csv"
  homepage "https://github.com/agent-rt/zkb"
  version "0.0.19"
  license "Apache-2.0"

  depends_on :macos
  depends_on arch: :arm64

  on_macos do
    on_arm do
      url "https://github.com/agent-rt/homebrew-tap/releases/download/zkb-v0.0.19/zkb-0.0.19-aarch64-apple-darwin.tar.gz"
      sha256 "4729914d69a3050764915d48a1236765ffa5c8cd1e8747f952cc68a45bfed005"
    end
  end

  def install
    bin.install "zkb"
  end

  test do
    assert_match "zkb", shell_output("#{bin}/zkb version")
  end
end
