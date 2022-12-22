class Reduce < Formula
    desc "A command line URL shortener using reduced.to API"
    homepage ""
    url "https://github.com/TanmayPatil105/reduce/archive/refs/tags/v0.0.4.tar.gz"
    sha256 "7044c3a8ca684ab7f51c8fea0d1cd3fa96084a8fd7573c2657ba055d12d668c0"
    license "MIT"

    depends_on "go" => :build

    def install
      system "make"
      bin.install "reduce"
    end

    test do
      system "#{bin}/reduce -h"
    end
  end 