# mdai-me/homebrew-tap

Homebrew tap for [mdai](https://mdai.me), a desktop Markdown editor. macOS only
(universal binary: Apple Silicon and Intel). On Linux, mdai ships as a Flatpak.

## Install

    brew install --cask mdai-me/tap/mdai

or

    brew tap mdai-me/tap
    brew install --cask mdai

## Update

mdai updates itself (signed updates from dl.mdai.me). You can also run:

    brew upgrade --cask mdai-me/tap/mdai

## Uninstall

    brew uninstall --cask mdai

Remove settings and caches as well (this also deletes your mdai config,
including the license key and trial state, so back it up first):

    brew uninstall --zap --cask mdai

## Notes

The cask downloads the notarized `.dmg` from `https://dl.mdai.me/` and verifies
its SHA-256. mdai is a paid app with a free trial.
