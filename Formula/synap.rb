class Synap < Formula
  desc "Local-first, Rust-powered structured memory engine for AI Agents"
  homepage "https://github.com/agent-rt/synap"
  version "0.1.1"
  license :cannot_represent # proprietary; see LICENSE inside the tarball

  on_macos do
    on_arm do
      url "https://github.com/agent-rt/homebrew-tap/releases/download/synap-v0.1.1/synap-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "a031bc158b0dcd9275a0ded2646c79cd0a32037636c8ea48c7fea9f8ff63f907"
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
