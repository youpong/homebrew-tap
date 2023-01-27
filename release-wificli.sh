GITHUB_NAME="TanmayPatil105"
GITHUB_REPO="wifi-cli"
TAP_NAME="wifi-cli"
BINARY_NAME="wifi"
REPO=$(curl -s -L https://api.github.com/repos/$GITHUB_NAME/$GITHUB_REPO)
DESCRIPTION=$(echo $REPO | jq -r  .description)
LICENSE=$(echo $REPO | jq -r  .license.spdx_id)
VERSION=$(curl -s https://api.github.com/repos/$GITHUB_NAME/$GITHUB_REPO/releases/latest | jq -r .tag_name)
SHA256=$(curl -s -L "https://github.com/$GITHUB_NAME/$GITHUB_REPO/archive/refs/tags/$VERSION.tar.gz" | shasum -a 256 | cut -d " " -f 1)

cat > $TAP_NAME.rb <<EOF
class WifiCli < Formula
    desc "$DESCRIPTION"
    homepage "https://github.com/$GITHUB_NAME/$GITHUB_REPO"
    url "https://github.com/$GITHUB_NAME/$GITHUB_REPO/archive/refs/tags/$VERSION.tar.gz"
    sha256 "$SHA256"
    license "$LICENSE"
  
  
    def install
      system "./configure"
      bin.install "src/$BINARY_NAME"
    end
  
    test do
      system "#{bin}/$BINARY_NAME -h"
    end
  end
EOF