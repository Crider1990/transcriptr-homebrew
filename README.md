# Transcriptr Homebrew Tap

Homebrew tap for installing Transcriptr on macOS.

## Install

```bash
brew tap Crider1990/transcriptr-homebrew
brew trust Crider1990/transcriptr-homebrew
brew install --cask Crider1990/transcriptr-homebrew/transcriptr
```

After tapping the repository, this shorter install command also works:

```bash
brew install --cask transcriptr
```

If Homebrew asks you to trust only the cask instead of the whole tap:

```bash
brew trust --cask Crider1990/transcriptr-homebrew/transcriptr
```

Transcriptr stores recordings and transcripts under `~/Meeting-Transcripts`.
