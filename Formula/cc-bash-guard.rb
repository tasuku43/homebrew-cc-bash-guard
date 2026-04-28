class CcBashGuard < Formula
  desc "Invocation policy proxy for AI-agent shell commands"
  homepage "https://github.com/tasuku43/cc-bash-guard"
  license "MIT"

  version "0.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.1.2/cc-bash-guard_v0.1.2_macos_arm64.tar.gz"
      sha256 "76f5f668320afc2378f9799f16a7d934e20bc49ceae2f7ab8de69389aed9cea8"
    else
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.1.2/cc-bash-guard_v0.1.2_macos_x64.tar.gz"
      sha256 "725743982a81240fb580602fe8eea8c0032bbb3f3664a30a6a587d3358a73c06"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.1.2/cc-bash-guard_v0.1.2_linux_arm64.tar.gz"
      sha256 "3c7eb097a934513357e2f7ab003c8b2e8caa2b83da3997f67ee9b8c015b9e4f7"
    else
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.1.2/cc-bash-guard_v0.1.2_linux_x64.tar.gz"
      sha256 "25ddbbc8c0fec695b26c52cbd8218999f6a507e141aa91995eb8522674a89289"
    end
  end

  def install
    bin.install "cc-bash-guard"
  end

  test do
    system "#{bin}/cc-bash-guard", "version"
  end
end
