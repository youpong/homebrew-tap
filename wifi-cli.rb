class WifiCli < Formula
    desc "📶 Wifi through command line"
    homepage "https://github.com/TanmayPatil105/wifi-cli"
    url "https://github.com/TanmayPatil105/wifi-cli/archive/refs/tags/v0.0.2.tar.gz"
    sha256 "3a63c49ac9bf4e5bb4df7cf40d6061ca274016dd6776246993301fdada18a2cb"
    license "GPL-3.0"
  
    def install
      system "./configure"
      bin.install "src/wifi"
    end
  
    test do
      system "#{bin}/wifi -h"
    end
  end
