class CcBashGuard < Formula
  desc "Invocation policy proxy for AI-agent shell commands"
  homepage "https://github.com/tasuku43/cc-bash-guard"
  license "MIT"

  version "0.2.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.3/cc-bash-guard_v0.2.3_macos_arm64.tar.gz"
      sha256 "5c20712fcd095f800f81285dc6e43d432909c7e7cddae3f5ad3b600ef0a8c08c"
    else
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.3/cc-bash-guard_v0.2.3_macos_x64.tar.gz"
      sha256 "29cdcc36833d0cc406aa486f40264d9008f12063512bb9b0041474d6e17b438e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.3/cc-bash-guard_v0.2.3_linux_arm64.tar.gz"
      sha256 "d0ecac603f62eae1187503ac54737861b790327db819292d2a4ecfde58e31c82"
    else
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.3/cc-bash-guard_v0.2.3_linux_x64.tar.gz"
      sha256 "c5b8c5d5c92333eaccb58a3fb64201e0f3ea007f867daaa21bd7b0f8a49730f5"
    end
  end

  def install
    bin.install "cc-bash-guard"
  end

  test do
    system "#{bin}/cc-bash-guard", "version"
  end
end
