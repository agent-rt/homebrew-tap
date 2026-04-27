class Memctl < Formula
  desc "Persistent agent memory layer (cross-tool, cross-project, cross-session)"
  homepage "https://github.com/agent-rt/memctl"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/agent-rt/homebrew-tap/releases/download/memctl-v0.2.0/memctl-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "3e4d3361d6f44da5e55e6787793c80102f376cfd1c9690cb138dadce92a63d45"
    end
    on_intel do
      url "https://github.com/agent-rt/homebrew-tap/releases/download/memctl-v0.2.0/memctl-0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "d2149365a1336cacdabaf37cb82a79a8e7155dde8c20e791d74cc230cb8e4967"
    end
  end

  def install
    bin.install "memctl"
  end

  test do
    assert_match "memctl", shell_output("#{bin}/memctl --version")
  end
end
