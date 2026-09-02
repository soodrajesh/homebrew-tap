class Macgroom < Formula
  desc "Free CLI for clearing dev-tool caches and project build artifacts"
  homepage "https://github.com/soodrajesh/macgroom-cli"
  url "https://github.com/soodrajesh/macgroom-cli/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "0a6048ef673cd7e78557e62d9f528d4221649f4eb7875fcc9e3af024b9c9beee"
  license "MIT"
  head "https://github.com/soodrajesh/macgroom-cli.git", branch: "main"

  depends_on :macos
  # Deliberately no `depends_on xcode:` — the Swift toolchain that ships
  # with Xcode Command Line Tools alone is sufficient for `swift build`;
  # verified live that requiring full Xcode.app here was wrong and just
  # blocked installs unnecessarily.
  uses_from_macos "swift"

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/macgroom"
  end

  test do
    assert_match "macgroom", shell_output("#{bin}/macgroom --version")
  end
end
