class CcBashGuard < Formula
  desc "Invocation policy proxy for AI-agent shell commands"
  homepage "https://github.com/tasuku43/cc-bash-guard"
  license "MIT"

  version "0.2.10"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.10/cc-bash-guard_v0.2.10_macos_arm64.tar.gz"
      sha256 "505511134bf8c5d0e5d22ee3b0bc6fdc85efa1c7c369cc260f4ca3c6ddddb3ef"
    else
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.10/cc-bash-guard_v0.2.10_macos_x64.tar.gz"
      sha256 "e951dea8c2d03cc07c78353348511d45754f524f52fa75e0a06b0ca1518d9749"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.10/cc-bash-guard_v0.2.10_linux_arm64.tar.gz"
      sha256 "3b618c0e57475284d5238664c6cc65048ee4efb8db5d13897032e4b1e21c935d"
    else
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.10/cc-bash-guard_v0.2.10_linux_x64.tar.gz"
      sha256 "4cac35b4a0eb4ef5f0ebfcca846a1b7af58f84480e273c4980ba69b78be919f7"
    end
  end

  def install
    bin.install "cc-bash-guard"
  end

  test do
    system "#{bin}/cc-bash-guard", "version"
  end
end
