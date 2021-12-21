# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class MirrorDisplays < Formula
    version "1.2"
    sha256 "3a44b1e65fdbcd15ba93ec1a1af97e205c8d274cb0272a40940add9f62853e2f"
    desc "A Mac app and command-line tool for fiddling with display mirroring: on/off/toggle"
    homepage "https://github.com/fcanas/dit"
    url "https://github.com/fcanas/mirror-displays/releases/download/v#{version}/mirror.zip"
    license "GPL-3.0-only"
  
    depends_on :macos
  
    def install
      system "install -d #{bin}"
      system "install mirror #{bin}"
    end
  
    test do
      system "#{bin}/mirror", "-h"
    end
  end
  