cask "aglet" do
  version "0.3.1"
  sha256 "af58c17d80531c4ccfb2b3d125866f4c0c948896887ad443d36681a0cd225437"

  url "https://github.com/agent-rt/homebrew-tap/releases/download/aglet-v0.3.1/Aglet.app-0.3.1-aarch64-apple-darwin.tar.gz"
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
