class CcBashGuard < Formula
  desc "Invocation policy proxy for AI-agent shell commands"
  homepage "https://github.com/tasuku43/cc-bash-guard"
  license "MIT"

  version "0.2.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.5/cc-bash-guard_v0.2.5_macos_arm64.tar.gz"
      sha256 "664f65ee73e37c5038074e8091774c567342623c267887ce70317d28eb8326fb"
    else
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.5/cc-bash-guard_v0.2.5_macos_x64.tar.gz"
      sha256 "6a77a9e589b6b0847423ff363145f1022111a5d2b9b07e677b4a26ca80fd4d39"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.5/cc-bash-guard_v0.2.5_linux_arm64.tar.gz"
      sha256 "7aff6a2dd84d295d5e1761f186d8c863ebd14d267d87484a0791ceff03885300"
    else
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.5/cc-bash-guard_v0.2.5_linux_x64.tar.gz"
      sha256 "6000d7ac002af301d6d9559f608081a5e9a5a32e58ad01b774a97aadf0ae5378"
    end
  end

  def install
    bin.install "cc-bash-guard"
  end

  test do
    system "#{bin}/cc-bash-guard", "version"
  end
end
