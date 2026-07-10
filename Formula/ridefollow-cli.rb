require "language/node"

class RidefollowCli < Formula
  desc "Follow a live RideFollow bike ride from your terminal"
  homepage "https://ridefollow.live"
  url "https://registry.npmjs.org/ridefollow-cli/-/ridefollow-cli-1.0.2.tgz"
  sha256 "d0040a18ba584160a675ba23d8344a546f5ebe2bbd0b22dad8e07bf9369de20a"
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
