GITHUB_NAME="TanmayPatil105"
GITHUB_REPO="procfetch"
TAP_NAME="procfetch"
BINARY_NAME="procfetch"
REPO=$(curl -s -L https://api.github.com/repos/$GITHUB_NAME/$GITHUB_REPO)
DESCRIPTION=$(echo $REPO | jq -r  .description)
LICENSE=$(echo $REPO | jq -r  .license.spdx_id)
VERSION=$(curl -s https://api.github.com/repos/$GITHUB_NAME/$GITHUB_REPO/releases/latest | jq -r .tag_name)
SHA256=$(curl -s -L "https://github.com/$GITHUB_NAME/$GITHUB_REPO/archive/refs/tags/$VERSION.tar.gz" | shasum -a 256 | cut -d " " -f 1)

cat > $TAP_NAME.rb <<EOF
class Procfetch < Formula
    desc "$DESCRIPTION"
    homepage "https://tanmaypatil105.github.io/procfetch/"
    url "https://github.com/$GITHUB_NAME/$GITHUB_REPO/archive/refs/tags/$VERSION.tar.gz"
    sha256 "$SHA256"
    license "$LICENSE"
    
    def install
      system "./configure -C brew"
      system "make"
      system "mkdir -p $HOMEBREW_PREFIX/share/procfetch/ascii"
      system "cp ascii/* $HOMEBREW_PREFIX/share/procfetch/ascii"
      bin.install "src/$BINARY_NAME"
    end
  
    test do
      system "$BINARY_NAME -t"
    end
  end
EOF