cask "aglet" do
  version "0.2.0"
  sha256 "409898583e3a01153111bc823a74aa083d9da528c403b0f1d9bbf428a181870e"

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
