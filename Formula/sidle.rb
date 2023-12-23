class Sidle < Formula
  desc "Wordle CLI Assistant"
  homepage "https://github.com/fcanas/sidle"
  url "https://github.com/fcanas/sidle/archive/refs/tags/0.3.tar.gz"
  sha256 "0d2f8f3b188c8d77c0bf068b813215cbfb4126819cb9a68c55c53bc51ba925a0"
  license "MIT"

  depends_on :macos
  depends_on :xcode

  def install
    system "swift", "build", "--disable-sandbox", "--configuration", "release", "-Xswiftc", "-suppress-warnings"
    bin.install ".build/release/sidle"
  end

  test do
    system "#{bin}/sidle", "--help"
  end
end
