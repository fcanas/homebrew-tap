class Sidle < Formula
  desc "Wordle CLI Assistant"
  homepage "https://github.com/fcanas/sidle"
  url "https://github.com/fcanas/sidle/archive/refs/tags/0.1.tar.gz"
  version "0.1"
  sha256 "0d159bbf024769b7e49e875bd89109c1ba06d7e132941d66aee0d363510397f7"
  license "MIT"

  depends_on :xcode

  def install
    system "swift", "build", "--disable-sandbox", "--configuration", "release", "-Xswiftc", "-suppress-warnings"
    bin.install ".build/release/sidle"
  end
end
