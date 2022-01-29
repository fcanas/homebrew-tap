class Scrape < Formula
  desc "Download HLS Streams"
  homepage "https://github.com/fcanas/scrape"
  url "https://github.com/fcanas/scrape/archive/refs/tags/0.1.1.tar.gz"
  sha256 "33a7a6bfe755da02cbe0121ee6cf048e506004c069ef730e280c029814741e27"
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
