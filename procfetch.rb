class Procfetch < Formula
    desc "🎨 A command-line system information utility written in C++"
    homepage "https://tanmaypatil105.github.io/procfetch/"
    url "https://github.com/TanmayPatil105/procfetch/archive/refs/tags/v0.1.5.tar.gz"
    sha256 "88894f2610487e96300ea8ac6d31d9a3106e0628dbf39d7d49e32269ea699f95"
    license "GPL-3.0"
    
    def install
      system "./configure"
      system "make"
      system "sudo mkdir -p /usr/share/procfetch/ascii"
      system "sudo cp ascii/* /usr/share/procfetch/ascii/"
      bin.install "src/procfetch"
    end
  
    test do
      system "procfetch -t"
    end
  end
