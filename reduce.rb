class Reduce < Formula
    desc "A command line URL shortener using reduced.to API"
    homepage ""
    url "https://github.com/TanmayPatil105/reduce/archive/refs/tags/v0.0.5.tar.gz"
    sha256 "3e159af0c04b690d1dc7d6a8de34c74799cd5c7bcf8840eba05587a0570e8998"
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
