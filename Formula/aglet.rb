# frozen_string_literal: true
class Aglet < Formula
  desc "Agent-first aglet runtime CLI (dev / CI / authoring tool)"
  homepage "https://github.com/agent-rt/aglet"
  url "https://github.com/agent-rt/homebrew-tap/releases/download/aglet-v0.3.0/aglet-cli-0.3.0-aarch64-apple-darwin.tar.gz"
  version "0.3.0"
  sha256 "938fe23ca3f9afaee9fa292ec5003d386ba8a52ffa3abea09bd88d6aacde8f58"
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
