# agent-rt/homebrew-tap

Homebrew tap and binary distribution channel for [agent-rt](https://github.com/agent-rt) products.

## Install

```sh
brew tap agent-rt/tap
brew install <product>
```

Available products:

| Product | Formula | Docs |
|---------|---------|------|
| [synap](https://github.com/agent-rt/synap) | `brew install synap` | `synap docs` |

## Platforms

Current releases target **macOS arm64 (Apple Silicon)** only. Additional
platforms will land as products stabilize.

## Without Homebrew

Each product ships a plain tarball alongside the formula — grab it from the
[Releases](https://github.com/agent-rt/homebrew-tap/releases) page. Release
tags are prefixed with the product name (`synap-v0.1.0`, …) so multiple
products can coexist in one tap.

Example one-liner for `synap`:

```sh
curl -fsSL https://raw.githubusercontent.com/agent-rt/homebrew-tap/main/install.sh | sh
```

## License

Formulas in this tap are MIT-licensed (see individual `Formula/*.rb`
headers where applicable). The binaries they install are governed by each
product's own license — see the `LICENSE` file inside the tarball.
