# frozen_string_literal: true
class Aglet < Formula
  desc "Agent-first aglet runtime CLI (dev / CI / authoring tool)"
  homepage "https://github.com/agent-rt/aglet"
  url "https://github.com/agent-rt/homebrew-tap/releases/download/aglet-v0.2.2/aglet-cli-0.2.2-aarch64-apple-darwin.tar.gz"
  version "0.2.2"
  sha256 "cc56151bbd5a71a23c058b53329420d6a4c5ad96164b1bc508688dfe1aeab790"
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
