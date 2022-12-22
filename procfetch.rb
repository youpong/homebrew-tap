class Procfetch < Formula
    desc "A command-line system information utility written in C++"
    homepage ""
    url "https://github.com/TanmayPatil105/procfetch/archive/refs/tags/v0.0.2.tar.gz"
    sha256 "073f02c6823b5597580e528029d3f2b0e071cad483c6576f1437c7c1072d40cd"
    license ""
  
    depends_on "cmake" => :build
  
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
