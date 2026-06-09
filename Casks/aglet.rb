cask "aglet" do
  version "0.3.3"
  sha256 "b58f8da2e7e7e8df6fc62693a0370e300343047f3c2035900e999ebc2eda03e3"

  url "https://github.com/agent-rt/homebrew-tap/releases/download/aglet-v0.3.3/Aglet.app-0.3.3-aarch64-apple-darwin.tar.gz"
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
