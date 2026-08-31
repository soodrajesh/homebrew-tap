class Macgroom < Formula
  desc "Free CLI for clearing dev-tool caches and project build artifacts"
  homepage "https://github.com/soodrajesh/macgroom-cli"
  url "https://github.com/soodrajesh/macgroom-cli/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "5ada3a7ff7bb4e0edbb026b687c5396227fd9ef7a07a3de3c074f014d3ae60c2"
  license "MIT"
  head "https://github.com/soodrajesh/macgroom-cli.git", branch: "main"

  depends_on :macos
  depends_on xcode: ["15.0", :build]

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/macgroom"
  end

  test do
    assert_match "macgroom", shell_output("#{bin}/macgroom --version")
  end
end
