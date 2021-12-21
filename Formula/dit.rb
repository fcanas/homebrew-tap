# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Dit < Formula
  desc "Basic CLI for Reminders on macOS"
  homepage "https://github.com/fcanas/dit"
  url "https://github.com/fcanas/dit/archive/refs/tags/0.0.1.tar.gz"
  version "0.0.1"
  sha256 "bf95244ffaeff5afc0adc0c7810490b98eeb27196b994e168393e5bcf1724b10"
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
