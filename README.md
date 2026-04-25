# homebrew-cc-bash-guard

Homebrew tap for `cc-bash-guard` stable releases.

## Install

```sh
brew install tasuku43/cc-bash-guard/cc-bash-guard
```

## Role in the release pipeline

This repository is part of the `cc-bash-guard` delivery path, but it is not the
source of truth for release integrity.

Users should treat:

- `tasuku43/cc-bash-guard` GitHub Releases as the source of truth for binaries
- `checksums.txt` and GitHub artifact attestations as the integrity signals
- this tap as a formula layer that points at those release artifacts

## Update model

Stable `cc-bash-guard` tags open an automated PR against this repository.
Only those bot-authored release PRs should be auto-merged.
