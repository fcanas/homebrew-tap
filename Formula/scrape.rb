class Scrape < Formula
  desc "Download HLS Streams"
  homepage "https://github.com/fcanas/scrape"
  url "https://github.com/fcanas/scrape/archive/refs/tags/0.2.tar.gz"
  sha256 "b3dff6008bfa0b8122da850a82b9995b261d6871b7e2e75fdffa85b8b18a18c0"
  license "MIT"

  depends_on :macos
  depends_on :xcode

  def install
    system "swift", "build", "--disable-sandbox", "--configuration", "release", "-Xswiftc", "-suppress-warnings"
    bin.install ".build/release/scrape"
  end

  test do
    system "#{bin}/scrape", "-h"
  end
end
