class Mdctl < Formula
  desc "macOS-native CLI converting PDF / HTML / Office / images to Markdown"
  homepage "https://github.com/agent-rt/mdctl"
  version "0.1.0"
  license "MIT"

  depends_on :macos
  depends_on arch: :arm64

  on_macos do
    on_arm do
      url "https://github.com/agent-rt/homebrew-tap/releases/download/mdctl-v0.1.0/mdctl-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "334d56370042031d1a96886050068f8da4dac28337b86747ae257d68bfc1932a"
    end
  end

  def install
    bin.install "bin/mdctl"
    lib.install "lib/libmdctl.dylib"
    include.install "include/mdctl.h"
  end

  test do
    assert_match "mdctl", shell_output("#{bin}/mdctl --help")
  end
end
