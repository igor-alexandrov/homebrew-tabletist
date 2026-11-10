class Tabletist < Formula
  desc "Native database client for PostgreSQL, MySQL, SQLite and BigQuery"
  homepage "https://igor.works/tabletist/"
  url "https://github.com/igor-alexandrov/tabletist/releases/download/v0.6.1/tabletist-v0.6.1-source.tar.gz"
  sha256 "a560adfd425941440fb69df884c9ac11d71c643bea76dadf9ce6422be958317c"
  license "MIT"
  head "https://github.com/igor-alexandrov/tabletist.git", branch: "main"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on "rust" => :build

  # The window opens on Wayland or X11 and draws with OpenGL; winit and glow
  # load these libraries when it starts.
  on_linux do
    depends_on "pkgconf" => :build
    depends_on "libx11"
    depends_on "libxkbcommon"
    depends_on "mesa"
    depends_on "wayland"
  end

  def install
    system "cargo", "install", *std_cargo_args
  end

  def caveats
    <<~EOS
      This formula builds the tabletist program from source. On macOS, the
      cask installs Tabletist.app instead, signed and notarized:
        brew install --cask igor-alexandrov/tabletist/tabletist
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tabletist --version")
  end
end
