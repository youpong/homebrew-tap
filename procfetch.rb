class Procfetch < Formula
    desc "🎨 A command-line system information utility written in C++"
    homepage "https://tanmaypatil105.github.io/procfetch/"
    url "https://github.com/TanmayPatil105/procfetch/archive/refs/tags/v0.2.0.tar.gz"
    sha256 "8c8721a51440d70bb30b031f2a55ee27a82494e71de5c8d9be70ab586c1b9ed5"
    license "GPL-3.0"
    
    def install
      system "./configure"
      system "make"
      system "sudo mkdir -p /usr/share/procfetch/ascii"
      system "sudo cp ascii/* /usr/share/procfetch/ascii"
      bin.install "src/procfetch"
    end
  
    test do
      system "procfetch -t"
    end
  end
