# frozen_string_literal: true
class Aglet < Formula
  desc "Agent-first aglet runtime CLI (dev / CI / authoring tool)"
  homepage "https://github.com/agent-rt/aglet"
  url "https://github.com/agent-rt/homebrew-tap/releases/download/aglet-v0.3.1/aglet-cli-0.3.1-aarch64-apple-darwin.tar.gz"
  version "0.3.1"
  sha256 "a4f52a5cd880cf6d1b0b67243e02d8d5352ead3be876d7631669773bf5c89171"
  license "MIT"

  depends_on :macos
  depends_on arch: :arm64

  def install
    # Tarball has  +  at root; Homebrew
    # auto-cds into the single top-level dir, so we're already in .
    # daemon ships alongside: `aglet dev` / `aglet test` fork it.
    bin.install "aglet"
    bin.install "aglet-daemon"
  end

  test do
    assert_match "aglet", shell_output("#{bin}/aglet --version 2>&1", 0)
  end
end
