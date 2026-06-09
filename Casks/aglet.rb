cask "aglet" do
  version "0.3.2"
  sha256 "4eaecf231720f52f22493c24d454e538e10395d6fd6571a39a6833e334afc21b"

  url "https://github.com/agent-rt/homebrew-tap/releases/download/aglet-v0.3.2/Aglet.app-0.3.2-aarch64-apple-darwin.tar.gz"
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
