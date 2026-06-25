class F1Cli < Formula
  desc "Formula 1 data in your terminal - schedule, results, standings, and session times"
  homepage "https://github.com/sleuthy-sloth/f1-cli"
  url "https://github.com/sleuthy-sloth/f1-cli/archive/refs/heads/main.tar.gz"
  version "0.1.0"
  sha256 "88334622b99f426b6f550812ba570871a99587691dcefa0c8b44b6fb04feb632"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args(prefix: false)
    system "npm", "run", "build"
    bin.install_symlink libexec/"bin/f1"
  end

  test do
    assert_match "Formula 1 data", shell_output("#{bin}/f1 --help")
  end
end
