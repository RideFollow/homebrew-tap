# RideFollow Homebrew tap

Homebrew formulae for [RideFollow](https://ridefollow.live).

## Install

```sh
brew install ridefollow/tap/ridefollow-cli
ridefollow-cli "https://ridefollow.live/?ride=<token>"
```

`brew install ridefollow/tap/ridefollow-cli` auto-taps this repo; you don't need
a separate `brew tap` first. To upgrade later: `brew upgrade ridefollow-cli`.

The formula is bumped automatically by the
[`publish-cli.yml`](https://github.com/RideFollow/ridefollow-cli) workflow on
every `cli-v*` release.
