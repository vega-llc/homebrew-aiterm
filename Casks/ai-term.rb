cask "ai-term" do
  version "0.25.6"
  sha256 "b263355857c57cf1b3cc487a40ede4d97a97e39b71155a8134ff3c0b08e603b6"

  url "https://aiterm-dl.vega-llc.workers.dev/AITerm-#{version}.dmg",
      verified: "aiterm-dl.vega-llc.workers.dev/"
  name "AITerm"
  desc "Terminal with AI built into the command loop"
  homepage "https://ai-term.com/"

  livecheck do
    url "https://ai-term.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "AITerm.app"

  zap trash: [
    "~/Library/Application Support/AITerm",
    "~/Library/Caches/com.vega.aiterm",
    "~/Library/HTTPStorages/com.vega.aiterm",
    "~/Library/Preferences/com.vega.aiterm.plist",
    "~/Library/Saved Application State/com.vega.aiterm.savedState",
  ]
end
