# Homebrew tap

Homebrew casks for [Tabletist](https://igor.works/tabletist/), a fast,
native database client for PostgreSQL, MySQL, SQLite and BigQuery.

```bash
brew install --cask igor-alexandrov/tabletist/tabletist
```

Tabletist updates itself (Settings › Updates), so `brew upgrade` leaves it
to the app; `brew upgrade --greedy` updates it through Homebrew instead.
`brew uninstall --zap tabletist` also removes its settings, connections and
logs. Saved passwords stay in your keychain under `dev.tabletist.Tabletist`.

`Casks/tabletist.rb` is rendered on each release by the
[release workflow](https://github.com/igor-alexandrov/tabletist/blob/main/.github/workflows/release.yml)
from `packaging/homebrew/tabletist.rb.in` in the Tabletist repository.
Change the cask there: an edit made here is replaced by the next release.
