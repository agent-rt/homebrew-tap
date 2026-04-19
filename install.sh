#!/usr/bin/env sh
# Synap installer — macOS arm64 only for 0.1.x.
#
# Usage:
#   curl -fsSL https://raw.githubusercontent.com/agent-rt/homebrew-tap/main/install.sh | sh
#
# Or, preferred:
#   brew tap agent-rt/tap
#   brew install synap
#
# Optional:
#   SYNAP_VERSION=v0.1.0             pin a specific release (default: latest)
#   SYNAP_INSTALL_DIR=/usr/local/bin target directory (default: /usr/local/bin)

set -eu

TAP_REPO="agent-rt/homebrew-tap"
PRODUCT="synap"
INSTALL_DIR="${SYNAP_INSTALL_DIR:-/usr/local/bin}"

info() { printf '\033[1;34m==>\033[0m %s\n' "$*"; }
warn() { printf '\033[1;33m!!\033[0m %s\n' "$*" >&2; }
die()  { printf '\033[1;31mxx\033[0m %s\n' "$*" >&2; exit 1; }

os="$(uname -s)"
arch="$(uname -m)"
if [ "$os" != "Darwin" ] || [ "$arch" != "arm64" ]; then
    die "Synap 0.1.x ships macOS arm64 (Apple Silicon) only. Got: $os $arch"
fi
target="aarch64-apple-darwin"

# Resolve version: SYNAP_VERSION pin, else "latest" for this product.
if [ -n "${SYNAP_VERSION:-}" ]; then
    tag="$SYNAP_VERSION"
else
    info "Resolving latest ${PRODUCT} release from ${TAP_REPO} …"
    # Tap repo hosts multiple products with prefixed tags (synap-v*, foo-v*, …).
    # Filter for ours.
    tag="$(curl -fsSL "https://api.github.com/repos/${TAP_REPO}/releases?per_page=50" \
        | grep '"tag_name"' \
        | sed 's/.*: *"\(.*\)".*/\1/' \
        | grep "^${PRODUCT}-v" \
        | head -n1 \
        | sed "s/^${PRODUCT}-//")"
    [ -n "$tag" ] || die "Could not find any ${PRODUCT}-v* release in ${TAP_REPO}."
fi

rel_tag="${PRODUCT}-${tag}"
asset="${PRODUCT}-${tag}-${target}.tar.gz"
url="https://github.com/${TAP_REPO}/releases/download/${rel_tag}/${asset}"

tmp="$(mktemp -d)"
trap 'rm -rf "$tmp"' EXIT

info "Downloading $asset …"
curl -fL --progress-bar -o "$tmp/$asset" "$url" \
    || die "Download failed: $url"

info "Extracting …"
tar -xzf "$tmp/$asset" -C "$tmp" || die "Tarball extraction failed."

extracted="$tmp/${PRODUCT}-${tag}-${target}"
[ -x "$extracted/synap" ] || die "Archive did not contain a 'synap' binary at expected path."

info "Installing to $INSTALL_DIR (may prompt for sudo) …"
if [ -w "$INSTALL_DIR" ]; then
    mv "$extracted/synap" "$INSTALL_DIR/synap"
else
    sudo mv "$extracted/synap" "$INSTALL_DIR/synap"
fi

info "Installed: $("$INSTALL_DIR/synap" --version 2>/dev/null || echo 'synap')"
info "Docs:       synap docs"
info "Quickstart: synap docs quickstart"

case ":$PATH:" in
    *":$INSTALL_DIR:"*) ;;
    *) warn "$INSTALL_DIR is not on your PATH. Add it to your shell rc." ;;
esac
