class Docket < Formula
  desc "Shows a timeline overlay to keep you on schedule"
  homepage "https://github.com/fcanas/docket"
  url "https://github.com/fcanas/docket/archive/refs/tags/0.1.tar.gz"
  sha256 "3154de81a5c56b476d73e34a69112c1c13e4537b3735169a6940a0e910c7f109"
  license "Apache-2.0"

  depends_on :macos
  depends_on :xcode

  def install
    system "swift", "build", "--disable-sandbox", "--configuration", "release", "-Xswiftc", "-suppress-warnings"
    bin.install ".build/release/docket"
  end

  test do
    system "#{bin}/docket", "--help"
  end
end
