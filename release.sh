GITHUB_NAME="TanmayPatil105"
GITHUB_REPO="reduce"
TAP_NAME="reduce"
BINARY_NAME="reduce"
LICENSE=$(curl -s -L https://api.github.com/repos/$GITHUB_NAME/$GITHUB_REPO | jq -r  .license.spdx_id)
VERSION=$(curl -s https://api.github.com/repos/$GITHUB_NAME/$GITHUB_REPO/releases/latest | jq -r .tag_name)
SHA256=$(curl -s -L "https://github.com/$GITHUB_NAME/$GITHUB_REPO/archive/refs/tags/$VERSION.tar.gz" | shasum -a 256 | cut -d " " -f 1)

cat > $TAP_NAME.rb <<EOF
class Reduce < Formula
    desc "A command line URL shortener using reduced.to API"
    homepage ""
    url "https://github.com/$GITHUB_NAME/$GITHUB_REPO/archive/refs/tags/$VERSION.tar.gz"
    sha256 "$SHA256"
    license "$LICENSE"

    depends_on "go" => :build

    def install
      system "make"
      bin.install "$BINARY_NAME"
    end

    test do
      system "#{bin}/$BINARY_NAME -h"
    end
  end
EOF