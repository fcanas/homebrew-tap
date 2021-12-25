# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Dit < Formula
  desc "Basic CLI for Reminders on macOS"
  homepage "https://github.com/fcanas/dit"
  url "https://github.com/fcanas/dit/archive/refs/tags/0.0.2.tar.gz"
  version "0.0.1"
  sha256 "39477f86c77d7c47199828f9a622c740f261f1540ce0a0b9744ee454b07d6aa9"
  license "Apache-2.0"

  depends_on :xcode

  def install
    system "swift build --disable-sandbox --configuration release -Xswiftc -suppress-warnings"
    system "install -d #{bin}"
    system "install .build/release/dit #{bin}"
  end

  test do
    system "#{bin}/dit", "--help"
  end
end
