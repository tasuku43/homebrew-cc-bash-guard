class CcBashGuard < Formula
  desc "Invocation policy proxy for AI-agent shell commands"
  homepage "https://github.com/tasuku43/cc-bash-guard"
  license "MIT"

  version "0.2.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.8/cc-bash-guard_v0.2.8_macos_arm64.tar.gz"
      sha256 "de08ee9faf298fe5a043e2a59ad8d2a17c0b3ebd4d306c0c59f5e51e99bc9ddd"
    else
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.8/cc-bash-guard_v0.2.8_macos_x64.tar.gz"
      sha256 "7c011b115c4a16b6eb98bbbed5f5d4105ffd439db51f50989debe62c94574a3b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.8/cc-bash-guard_v0.2.8_linux_arm64.tar.gz"
      sha256 "0133fbb60c53bc9d69a5f19d62ecea2fe519aa58409182c6b29e5bacc76b66a5"
    else
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.8/cc-bash-guard_v0.2.8_linux_x64.tar.gz"
      sha256 "13d2ed5689e4dbf4d0c42cbbcbf3e630fe3cfd6d8408038f21e28525789957df"
    end
  end

  def install
    bin.install "cc-bash-guard"
  end

  test do
    system "#{bin}/cc-bash-guard", "version"
  end
end
