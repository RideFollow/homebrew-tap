require "language/node"

class RidefollowCli < Formula
  desc "Follow a live RideFollow bike ride from your terminal"
  homepage "https://ridefollow.live"
  url "https://registry.npmjs.org/ridefollow-cli/-/ridefollow-cli-1.0.3.tgz"
  sha256 "b772f17c4dcace56da16d0aee5662d0feb30381999c3ff9753a8a7851121ee87"
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
