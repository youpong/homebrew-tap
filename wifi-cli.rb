class WifiCli < Formula
    desc "null"
    homepage "https://github.com/TanmayPatil105/wifi-cli"
    url "https://github.com/TanmayPatil105/wifi-cli/archive/refs/tags/null.tar.gz"
    sha256 "d5558cd419c8d46bdc958064cb97f963d1ea793866414c025906ec15033512ed"
    license "null"
  
  
    def install
      system "./configure"
      bin.install "src/wifi"
    end
  
    test do
      system "#{bin}/wifi -h"
    end
  end
