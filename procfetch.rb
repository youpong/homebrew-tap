class Procfetch < Formula
    desc "🎨 A command-line system information utility written in C++"
    homepage "https://tanmaypatil105.github.io/procfetch/"
    url "https://github.com/TanmayPatil105/procfetch/archive/refs/tags/v0.1.0.tar.gz"
    sha256 "86e2ed8f35b71d63123a4dcc1934190ccbf64457edc0d5bafa56193fda23464c"
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
