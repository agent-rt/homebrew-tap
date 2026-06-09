cask "aglet" do
  version "0.3.4"
  sha256 "118c0b23b61c8484692f396e692ef27bc74968b2b574608b24cda9cb8cac228d"

  url "https://github.com/agent-rt/homebrew-tap/releases/download/aglet-v0.3.4/Aglet.app-0.3.4-aarch64-apple-darwin.tar.gz"
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
