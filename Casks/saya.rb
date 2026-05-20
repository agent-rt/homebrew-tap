cask "saya" do
  version "0.0.1"
  sha256 "aabe0c4ef0c5d920e235dc2c806ce840bf6be8267a47725bb09920a26d21f5f0"

  url "https://github.com/agent-rt/homebrew-tap/releases/download/saya-v0.0.1/Saya-v0.0.1-arm64.dmg"
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
