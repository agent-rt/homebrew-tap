# frozen_string_literal: true
class Aglet < Formula
  desc "Agent-first aglet runtime CLI (dev / CI / authoring tool)"
  homepage "https://github.com/agent-rt/aglet"
  url "https://github.com/agent-rt/homebrew-tap/releases/download/aglet-v0.3.2/aglet-cli-0.3.2-aarch64-apple-darwin.tar.gz"
  version "0.3.2"
  sha256 "a75b86b81ab06675e681bcb6b8c20efed0037201e81875e0a712cbcfaecad882"
  license "MIT"

  depends_on :macos
  depends_on arch: :arm64

  def install
    # Tarball has  at root; Homebrew auto-cds into the single
    # top-level dir, so we're already in . dev/test runtime is fully
    # in-proc (libaglet linked into the CLI) — no separate daemon binary.
    bin.install "aglet"
  end

  test do
    assert_match "aglet", shell_output("#{bin}/aglet --version 2>&1", 0)
  end
end
