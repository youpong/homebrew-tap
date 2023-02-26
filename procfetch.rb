class Procfetch < Formula
    desc "🎨 A command-line system information utility written in C++"
    homepage "https://tanmaypatil105.github.io/procfetch/"
    url "https://github.com/TanmayPatil105/procfetch/archive/refs/tags/v0.2.1.tar.gz"
    sha256 "8a67ff24f974ddea52de268b593a1ef8c825160bf941af01de4942fb043d2fe2"
    license "GPL-3.0"
    
    def install
      system "./configure", "--prefix=#{prefix}"
      system "make", "install"
    end
  
    test do
      system "procfetch -t"
    end
  end
