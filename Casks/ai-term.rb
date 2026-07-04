cask "ai-term" do
  version "0.13.0"
  sha256 "bf52115c056bc41524f4a86658898c953e62ff6ffd2e7325e3c02ffbab0c45f7"

  url "https://ai-term.com/AITerm-#{version}.dmg"
  name "AITerm"
  desc "Terminal with AI built into the command loop"
  homepage "https://ai-term.com/"

  livecheck do
    url "https://ai-term.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :ventura
  depends_on arch: :arm64

  app "AITerm.app"

  zap trash: [
    "~/Library/Application Support/AITerm",
    "~/Library/Caches/com.vega.aiterm",
    "~/Library/HTTPStorages/com.vega.aiterm",
    "~/Library/Preferences/com.vega.aiterm.plist",
    "~/Library/Saved Application State/com.vega.aiterm.savedState",
  ]
end
