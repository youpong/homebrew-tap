class Procfetch < Formula
    desc "🎨 A command-line system information utility written in C++"
    homepage "https://tanmaypatil105.github.io/procfetch/"
    url "https://github.com/TanmayPatil105/procfetch/archive/refs/tags/v0.0.3.tar.gz"
    sha256 "4900b77a4a2210d9c07eb21ee6727cb4e5ce5fdcfc143e6781847a3b30816693"
    license "GPL-3.0"
    
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
