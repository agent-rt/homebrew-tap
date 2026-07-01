cask "saya" do
  version "0.0.4"
  sha256 "b464add0776752f23304c70d512e80e5cb9eef2d692388b2a01a0312139309dc"

  url "https://github.com/agent-rt/homebrew-tap/releases/download/saya-v0.0.4/Saya-v0.0.4-universal.dmg"
  name "Saya"
  desc "Local AI launcher with semantic clipboard history"
  homepage "https://github.com/agent-rt/saya"

  depends_on macos: :sequoia

  app "Saya.app"

  zap trash: [
    "~/Library/Application Support/Saya",
    "~/Library/Caches/Saya",
    "~/Library/Preferences/app.saya.plist",
  ]
end
