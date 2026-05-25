cask "aglet" do
  version "0.2.1"
  sha256 "61290d7902f7bb01d99a9d240aa48f9a4d58cbad2d1a0b2329d2daf9a7f5c424"

  url "https://github.com/agent-rt/homebrew-tap/releases/download/aglet-v0.2.1/Aglet.app-0.2.1-aarch64-apple-darwin.tar.gz"
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
