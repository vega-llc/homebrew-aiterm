cask "ai-term" do
  version "0.22.3"
  sha256 "6787507c055ee155710a1970df194b7c0a1aaf9e15a514e7ce10486a615dfd0d"

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
