class CcBashGuard < Formula
  desc "Invocation policy proxy for AI-agent shell commands"
  homepage "https://github.com/tasuku43/cc-bash-guard"
  license "MIT"

  version "0.2.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.4/cc-bash-guard_v0.2.4_macos_arm64.tar.gz"
      sha256 "519788aa6ff72b5e4b7f70c5748e7df7343cf80c4c5fea9d465fef3a7f98b6ba"
    else
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.4/cc-bash-guard_v0.2.4_macos_x64.tar.gz"
      sha256 "9648cf645369bcf59030840175bf4527df269e98e9c9b72c2805e97b330b2288"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.4/cc-bash-guard_v0.2.4_linux_arm64.tar.gz"
      sha256 "44ef98987f06f7f6dfd5d67afbced4453b9a04014e0c6842332d1a418d462708"
    else
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.4/cc-bash-guard_v0.2.4_linux_x64.tar.gz"
      sha256 "204a81335eef194e89efd76373d046fd2759e1212448bbc18fa090293b84a998"
    end
  end

  def install
    bin.install "cc-bash-guard"
  end

  test do
    system "#{bin}/cc-bash-guard", "version"
  end
end
