class Procfetch < Formula
    desc "🎨 A command-line system information utility written in C++"
    homepage "https://tanmaypatil105.github.io/procfetch/"
    url "https://github.com/TanmayPatil105/procfetch/archive/refs/tags/v0.1.2.tar.gz"
    sha256 "7788bcbb666337499ed00088b66948e74aed6cb743030d82eb2dd1a65569d710"
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
