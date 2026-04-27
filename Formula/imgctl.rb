class Imgctl < Formula
  desc "Agent-first image processing CLI (TSV/JSON output, structured errors)"
  homepage "https://github.com/agent-rt/imgctl"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/agent-rt/homebrew-tap/releases/download/imgctl-v0.1.0/imgctl-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "e98950b3e32b26034233f40c5c24c13a35bba3a375643c01e1a71007ebe8d646"
    end
    on_intel do
      url "https://github.com/agent-rt/homebrew-tap/releases/download/imgctl-v0.1.0/imgctl-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "775805c9bfab3e0a891fc7d510bd6255c3b1143a7930596ae387b8817c7a13e2"
    end
  end

  def install
    bin.install "imgctl"
  end

  test do
    assert_match "imgctl", shell_output("#{bin}/imgctl --version")
  end
end
