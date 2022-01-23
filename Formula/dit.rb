class Dit < Formula
  desc "Basic CLI for Reminders on macOS"
  homepage "https://github.com/fcanas/dit"
  url "https://github.com/fcanas/dit/archive/refs/tags/0.0.2.tar.gz"
  sha256 "39477f86c77d7c47199828f9a622c740f261f1540ce0a0b9744ee454b07d6aa9"
  license "Apache-2.0"

  depends_on :macos
  depends_on :xcode

  def install
    system "swift", "build", "--disable-sandbox", "--configuration", "release", "-Xswiftc", "-suppress-warnings"
    bin.install ".build/release/dit"
  end

  test do
    system "#{bin}/dit", "--help"
  end
end
