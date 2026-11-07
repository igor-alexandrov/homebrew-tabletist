cask "tabletist" do
  version "0.5.0"
  sha256 "6758e1ca55f01a0eec9e6c66088e02ad6b28ac0890d606981df60673971fe6a9"

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
