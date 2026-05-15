cask "corelet" do
  version "0.0.1"
  sha256 "e0c66aac9e29bedce2a7f49c3d76820fde60b9a6bda34b0680786dea3998b51d"

  url "https://github.com/agent-rt/homebrew-tap/releases/download/corelet-v0.0.1/corelet-0.0.1-aarch64-apple-darwin.tar.gz"
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
