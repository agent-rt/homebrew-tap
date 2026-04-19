class Synap < Formula
  desc "Local-first, Rust-powered structured memory engine for AI Agents"
  homepage "https://github.com/agent-rt/synap"
  version "0.1.0"
  license :cannot_represent # proprietary; see LICENSE inside the tarball

  on_macos do
    on_arm do
      url "https://github.com/agent-rt/homebrew-tap/releases/download/synap-v0.1.0/synap-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "c38fb6245b6d1d0ce4b865f911a010fb52caea7b6c49dc8e2462f04b56fc7b53"
    end
  end

  def install
    bin.install "synap"
    pkgshare.install "LICENSE", "CHANGELOG.md", "agent.toml.example"
    pkgshare.install "docs"
  end

  def caveats
    <<~EOS
      Quickstart: synap docs quickstart
      Example config: #{opt_pkgshare}/agent.toml.example
      Data directory: ~/.synap/
    EOS
  end

  test do
    assert_match "synap", shell_output("#{bin}/synap --version")
  end
end
