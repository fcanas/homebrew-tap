class Scrape < Formula
  desc "Download HLS Streams"
  homepage "https://github.com/fcanas/scrape"
  url "https://github.com/fcanas/scrape/archive/refs/tags/0.1.tar.gz"
  sha256 "cadecf886a2e5da4f2d3d42327ba793d374050ac5a1282f2a233306e7b096c38"
  license "MIT"

  depends_on :macos
  depends_on :xcode

  def install
    system "swift", "build", "--disable-sandbox", "--configuration", "release", "-Xswiftc", "-suppress-warnings"
    bin.install ".build/release/scrape"
  end

  test do
    system "#{bin}/scrape"
  end
end
