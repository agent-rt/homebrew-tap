# frozen_string_literal: true
class Aglet < Formula
  desc "Agent-first aglet runtime CLI (dev / CI / authoring tool)"
  homepage "https://github.com/agent-rt/aglet"
  url "https://github.com/agent-rt/homebrew-tap/releases/download/aglet-v0.2.0/aglet-cli-0.2.0-aarch64-apple-darwin.tar.gz"
  version "0.2.0"
  sha256 "ce637483cc4174c1b396f8cdd7d2d7b7a9f797c34bef36e019e31f86a8a9c19c"
  license "MIT"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "bin/aglet"
  end

  test do
    assert_match "aglet", shell_output("#{bin}/aglet --version 2>&1", 0)
  end
end
