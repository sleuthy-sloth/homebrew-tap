class F1Cli < Formula
  desc "Formula 1 data in your terminal -- schedule, results, standings, and session times"
  homepage "https://github.com/sleuthy-sloth/f1-cli"
  url "https://github.com/sleuthy-sloth/f1-cli/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "6e5f5c4f7351a259fa89b1aef5c90d3706fafa03662d0af94537133529a43133"
  license "MIT"

  depends_on "node@22"

  def install
    system "npm", "run", "build"
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec/"dist/bin/cli.js" => "f1"
  end

  test do
    system bin/"f1", "--help"
  end
end
