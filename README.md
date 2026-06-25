# sleuthy-sloth/homebrew-tap

Homebrew tap for [@sleuthy-sloth](https://github.com/sleuthy-sloth) projects.

## Install

```bash
brew tap sleuthy-sloth/tap
brew install opennarrator
brew install f1-cli
```

After install:

```bash
opennarrator convert --demo     # test in 60 seconds
opennarrator convert book.epub  # convert an ebook

f1 schedule          # next 5 races
f1 standings         # championship standings
```

## Available formulae

| Formula | Description |
|---------|-------------|
| `opennarrator` | Open-source audiobook creator -- ebooks to M4B using Kokoro TTS |
| `f1-cli` | Formula 1 data in your terminal -- schedule, results, standings |
