# homebrew-cc-bash-proxy

Homebrew tap for `cc-bash-proxy` stable releases.

## Install

```sh
brew install tasuku43/cc-bash-proxy/cc-bash-proxy
```

## Role in the release pipeline

This repository is part of the `cc-bash-proxy` delivery path, but it is not the
source of truth for release integrity.

Users should treat:

- `tasuku43/cc-bash-proxy` GitHub Releases as the source of truth for binaries
- `checksums.txt` and GitHub artifact attestations as the integrity signals
- this tap as a formula layer that points at those release artifacts

## Update model

Stable `cc-bash-proxy` tags open an automated PR against this repository.
Only those bot-authored release PRs should be auto-merged.
