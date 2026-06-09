# frozen_string_literal: true
class Aglet < Formula
  desc "Agent-first aglet runtime CLI (dev / CI / authoring tool)"
  homepage "https://github.com/agent-rt/aglet"
  url "https://github.com/agent-rt/homebrew-tap/releases/download/aglet-v0.3.4/aglet-cli-0.3.4-aarch64-apple-darwin.tar.gz"
  version "0.3.4"
  sha256 "467211fc3ccfb552bb91129b9e57dfe859334c60356d4e03b2919519692d385b"
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
