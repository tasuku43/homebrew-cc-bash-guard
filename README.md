# homebrew-cmdproxy

Homebrew tap for `cmdproxy` stable releases.

## Role in the release pipeline

This repository is part of the `cmdproxy` delivery path, but it is not the
source of truth for release integrity.

Users should treat:

- `tasuku43/cmdproxy` GitHub Releases as the source of truth for binaries
- `checksums.txt` and GitHub artifact attestations as the integrity signals
- this tap as a formula layer that points at those release artifacts

## Update model

Stable `cmdproxy` tags open an automated PR against this repository.
Only those bot-authored release PRs should be auto-merged.
