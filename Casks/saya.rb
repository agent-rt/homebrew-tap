cask "saya" do
  version "0.0.2"
  sha256 "257f99d672407eed28a1a76c9b57acb5f509045aa647dde44eb3d2f3a2ce9749"

  url "https://github.com/agent-rt/homebrew-tap/releases/download/saya-v0.0.2/Saya-v0.0.2-arm64.dmg"
  name "Saya"
  desc "Local AI launcher with semantic clipboard history"
  homepage "https://github.com/agent-rt/saya"

  depends_on macos: ">= :sequoia"
  depends_on arch: :arm64

  app "Saya.app"

  zap trash: [
    "~/Library/Application Support/Saya",
    "~/Library/Caches/Saya",
    "~/Library/Preferences/app.saya.plist",
  ]
end
