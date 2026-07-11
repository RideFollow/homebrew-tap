# Homebrew formula for the RideFollow terminal client.
#
# This is the seed/source-of-truth copy. The publish workflow
# (.github/workflows/publish-cli.yml) bumps `url` + `sha256` on every release
# and pushes the result to the Homebrew tap so `brew upgrade` just works.
#
#   brew install ridefollow/tap/ridefollow-cli      # once the tap is published
#
# Or straight from this file, without a tap:
#   brew install --formula ./cli/Formula/ridefollow-cli.rb
require "language/node"

class RidefollowCli < Formula
  desc "Follow a live RideFollow bike ride from your terminal"
  homepage "https://ridefollow.live"
  url "https://registry.npmjs.org/ridefollow-cli/-/ridefollow-cli-1.0.5.tgz"
  sha256 "4d12d477164e11c31cac55a14b7d4b9bb13655fbd86dc15a82d465889eea34e8"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ridefollow-cli --version")
    assert_match "follow a live RideFollow", shell_output("#{bin}/ridefollow-cli --help")
  end
end
