class Procfetch < Formula
    desc "null"
    homepage "https://tanmaypatil105.github.io/procfetch/"
    url "https://github.com/TanmayPatil105/procfetch/archive/refs/tags/null.tar.gz"
    sha256 "d5558cd419c8d46bdc958064cb97f963d1ea793866414c025906ec15033512ed"
    license "null"
    
    def install
      system "make"
      system "sudo mkdir -p /usr/share/procfetch/ascii"
      system "sudo cp ascii/* /usr/share/procfetch/ascii/"
      bin.install "src/procfetch"
    end
  
    test do
      system "procfetch -t"
    end
  end
