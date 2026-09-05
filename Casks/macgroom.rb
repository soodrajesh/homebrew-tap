cask "macgroom" do
  version "1.2.4"
  sha256 "c3c9ef722372d94bc4715d8cc5ed6522e583b57587047d8f340b725ed32fc0a6"

  url "https://github.com/soodrajesh/macgroom-support/releases/download/v#{version}/MacGroom.dmg"
  name "MacGroom"
  desc "Finds AI model caches, dev-tool clutter, and other disk-space hogs"
  homepage "https://gogenops.com/mac-apps/macgroom/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "MacGroom.app"

  zap trash: [
    "~/Library/Caches/com.macgroom.disksweeper",
    "~/Library/Preferences/com.macgroom.disksweeper.plist",
    "~/Library/Saved Application State/com.macgroom.disksweeper.savedState",
  ]
end
