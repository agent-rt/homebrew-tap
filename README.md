# agent-rt/homebrew-tap

Homebrew tap and binary distribution channel for [agent-rt](https://github.com/agent-rt) products.

## Install

```sh
brew tap agent-rt/tap
brew install <product>
```

Available products:

| Product                                          | Formula                 | Platforms                                   |
|--------------------------------------------------|-------------------------|---------------------------------------------|
| [synap](https://github.com/agent-rt/synap)       | `brew install synap`    | macOS arm64                                 |
| [mcpctl](https://github.com/agent-rt/mcpctl)     | `brew install mcpctl`   | macOS arm64 / x86_64, Linux x86_64          |
| [acpctl](https://github.com/agent-rt/acpctl)     | `brew install acpctl`   | macOS arm64 / x86_64, Linux x86_64          |

## Platforms

Per-product tarballs are uploaded to each release tag. Platform coverage
varies by product — see the table above. Homebrew currently only installs
the macOS binaries; Linux users can grab the plain tarball (below) or
`cargo install`.

## Without Homebrew

Each product ships plain tarballs alongside the formula — grab them from
the [Releases](https://github.com/agent-rt/homebrew-tap/releases) page.
Release tags are prefixed with the product name (`synap-v0.1.0`,
`mcpctl-v0.1.0`, `acpctl-v0.1.0`, …) so multiple products coexist in one
tap.

`synap` has a convenience installer script (macOS arm64 only):

```sh
curl -fsSL https://raw.githubusercontent.com/agent-rt/homebrew-tap/main/install.sh | sh
```

For `mcpctl` and `acpctl`, use Homebrew or download from the per-product
release page:

- <https://github.com/agent-rt/mcpctl/releases>
- <https://github.com/agent-rt/acpctl/releases>

Or build from source:

```sh
cargo install --locked --git https://github.com/agent-rt/mcpctl
cargo install --locked --git https://github.com/agent-rt/acpctl
```

## How formulas get updated

Each product's own repository has a release workflow
(`.github/workflows/release.yml`) that, on every pushed `v*` tag:

1. Builds release binaries for all supported targets.
2. Uploads tarballs + SHA256 files to the product's own release **and**
   to a mirrored release in this tap repo (tag: `<product>-v<version>`).
3. Regenerates `Formula/<product>.rb` in this tap repo with the new
   version and SHA256s, then commits + pushes via the `agent-rt-bot`
   identity.

Never hand-edit `Formula/*.rb` — it will be overwritten on the next
release.

## License

Formulas in this tap are MIT-licensed. The binaries they install are
governed by each product's own license — see the `LICENSE` file inside
the tarball, or the source repository.
