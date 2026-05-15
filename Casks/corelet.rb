cask "corelet" do
  version "0.0.2"
  sha256 "cee6a4760087ec14a3facb5b56a07700370ef6e28b513b430ea6d9e27cf65cc0"

  url "https://github.com/agent-rt/homebrew-tap/releases/download/corelet-v0.0.2/corelet-0.0.2-aarch64-apple-darwin.tar.gz"
  name "Corelet"
  desc "Agent-first miniapp runtime (macOS host + CLI)"
  homepage "https://github.com/agent-rt/corelet"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Corelet.app"
  # CLI 内嵌 .app 的 Resources/bin/，cask binary 自动 symlink 到 brew prefix/bin
  binary "#{appdir}/Corelet.app/Contents/Resources/bin/corelet"

  zap trash: [
    "~/.corelet",
    "~/Library/LaunchAgents/app.agentsan.corelet.scheduler.plist",
    "~/Library/LaunchAgents/app.agentsan.corelet.dispatcher.plist",
    "~/Library/Caches/app.agentsan.corelet",
  ]
end
