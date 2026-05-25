# frozen_string_literal: true
class Aglet < Formula
  desc "Agent-first aglet runtime CLI (dev / CI / authoring tool)"
  homepage "https://github.com/agent-rt/aglet"
  url "https://github.com/agent-rt/homebrew-tap/releases/download/aglet-v0.2.1/aglet-cli-0.2.1-aarch64-apple-darwin.tar.gz"
  version "0.2.1"
  sha256 "77d47c61b0932caa20bca7d98297f438d70df28ba37fe72d5dab9bdb197d7caa"
  license "MIT"

  depends_on :macos
  depends_on arch: :arm64

  def install
    # Tarball has  at root; Homebrew auto-cds into the
    # single top-level dir, so we're already in  here.
    bin.install "aglet"
  end

  test do
    assert_match "aglet", shell_output("#{bin}/aglet --version 2>&1", 0)
  end
end
