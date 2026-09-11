cask "macgroom" do
  version "1.2.6"
  sha256 "243354a9d58a2f48f077c3153d2076206486f3a22034d1df9180e8b5af298271"

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
