cask "aglet" do
  version "0.3.0"
  sha256 "116aaefeea8f6cbd79a25f4e487a66f8e656ed7d007179c3f0ba5dfb02e92022"

  url "https://github.com/agent-rt/homebrew-tap/releases/download/aglet-v0.3.0/Aglet.app-0.3.0-aarch64-apple-darwin.tar.gz"
  name "Aglet"
  desc "Agent-first aglet runtime (macOS GUI host)"
  homepage "https://github.com/agent-rt/aglet"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Aglet.app"
  # CLI 不再内嵌 .app；用户独立装 `brew install agent-rt/tap/aglet`

  zap trash: [
    "~/.aglet",
    "~/Library/Caches/dev.aglet.app",
    "~/Library/Application Support/dev.aglet.app",
    "~/Library/Preferences/dev.aglet.app.plist",
  ]
end
