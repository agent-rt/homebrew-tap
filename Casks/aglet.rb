cask "aglet" do
  version "0.2.0"
  sha256 "a2ddf9f5b0db3b7b4ad41ef2c0ddd1f5cd36e284aa3b44bf8d085459aab533ef"

  url "https://github.com/agent-rt/homebrew-tap/releases/download/aglet-v0.2.0/Aglet.app-0.2.0-aarch64-apple-darwin.tar.gz"
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
