class Sidle < Formula
  desc "Wordle CLI Assistant"
  homepage "https://github.com/fcanas/sidle"
  url "https://github.com/fcanas/sidle/archive/refs/tags/0.2.tar.gz"
  version "0.2"
  sha256 "10d07e5dc39c0a5812eb8f30a7617235b2fe1365f83584aad43910817b0014d6"
  license "MIT"

  depends_on :xcode

  def install
    system "swift", "build", "--disable-sandbox", "--configuration", "release", "-Xswiftc", "-suppress-warnings"
    bin.install ".build/release/sidle"
  end
  
  test do
    system "#{bin}/dit", "--help"
  end
end
