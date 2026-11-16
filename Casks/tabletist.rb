cask "tabletist" do
  version "0.7.0"
  sha256 "2d27a512e82caa0be248b0eff138a7121bdfb6b5f6f92c3dbbb8d41ea7642300"

  url "https://github.com/igor-alexandrov/tabletist/releases/download/v#{version}/tabletist-v#{version}-macos-universal.dmg"
  name "Tabletist"
  desc "Native database client for PostgreSQL, MySQL, SQLite and BigQuery"
  homepage "https://igor.works/tabletist/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "Tabletist.app"

  zap trash: [
    "~/.tabletist",
    "~/Library/Application Support/dev.tabletist.Tabletist",
    "~/Library/Caches/dev.tabletist.Tabletist",
    "~/Library/Preferences/dev.tabletist.Tabletist.plist",
    "~/Library/Saved Application State/dev.tabletist.Tabletist.savedState",
  ]
end
