cask "ai-term" do
  version "0.25.7"
  sha256 "03688934ce3c37bd13282fdd34e73a9586d09cee299199e1879082dac07994c2"

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
