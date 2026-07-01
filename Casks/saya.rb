cask "saya" do
  version "0.0.3"
  sha256 "711a6c874f38aeb2c8a9f88a8d8db641c31c1d5fc1dc0d9ffef5affb2852bfe7"

  url "https://github.com/agent-rt/homebrew-tap/releases/download/saya-v0.0.3/Saya-v0.0.3-universal.dmg"
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
