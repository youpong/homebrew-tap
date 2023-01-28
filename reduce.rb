class Reduce < Formula
    desc "null"
    homepage ""
    url "https://github.com/TanmayPatil105/reduce/archive/refs/tags/null.tar.gz"
    sha256 "d5558cd419c8d46bdc958064cb97f963d1ea793866414c025906ec15033512ed"
    license "null"

    depends_on "go" => :build

    def install
      system "make"
      bin.install "reduce"
    end

    test do
      system "#{bin}/reduce -h"
    end
  end
