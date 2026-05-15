cask "corelet" do
  version "0.0.1"
  sha256 "81748dc66991abf30a983781e220f01eda6904cf92ba9b7ba5929efaff5c545a"

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
