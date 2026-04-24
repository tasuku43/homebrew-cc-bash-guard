class CcBashProxy < Formula
  desc "Policy proxy for CLI invocations used by AI agents and shell hooks"
  homepage "https://github.com/tasuku43/cc-bash-proxy"
  license "MIT"

  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/cc-bash-proxy/releases/download/v0.1.0/cc-bash-proxy_v0.1.0_macos_arm64.tar.gz"
      sha256 "da6843bee69838959d424d2740639ce923a22cda226f46d3c7b60a93016bc94e"
    else
      url "https://github.com/tasuku43/cc-bash-proxy/releases/download/v0.1.0/cc-bash-proxy_v0.1.0_macos_x64.tar.gz"
      sha256 "adfddd2819a18c775850911aa6765ca119326e0b19c4155f58bed7d0c6fdf7fa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/cc-bash-proxy/releases/download/v0.1.0/cc-bash-proxy_v0.1.0_linux_arm64.tar.gz"
      sha256 "99231a4291e59ad5d46db745e500b2e3c2b3d4c9e43c31251c3be483e4ce72e4"
    else
      url "https://github.com/tasuku43/cc-bash-proxy/releases/download/v0.1.0/cc-bash-proxy_v0.1.0_linux_x64.tar.gz"
      sha256 "4b1cf9dd7ca692977f25ae03e49d6f0046ecf302dd93b88afffbe9f50c5a7163"
    end
  end

  def install
    bin.install "cc-bash-proxy"
  end

  test do
    system "#{bin}/cc-bash-proxy", "version"
  end
end
