class CcBashGuard < Formula
  desc "Invocation policy proxy for AI-agent shell commands"
  homepage "https://github.com/tasuku43/cc-bash-guard"
  license "MIT"

  version "0.2.11"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.11/cc-bash-guard_v0.2.11_macos_arm64.tar.gz"
      sha256 "0b6d49264c0944d4f33c638f4470ab3811eab6b34159314b8aeb1a42ad0c68e7"
    else
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.11/cc-bash-guard_v0.2.11_macos_x64.tar.gz"
      sha256 "fa0d0ec949441b3342910faa2a55c9332fe75c3e0194ae43bb0f0a12b16e6605"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.11/cc-bash-guard_v0.2.11_linux_arm64.tar.gz"
      sha256 "bc67e1397af29fe4b2b726c3f51bdc9be00dfa4e4cefef65277887469e82cdf0"
    else
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.11/cc-bash-guard_v0.2.11_linux_x64.tar.gz"
      sha256 "6d98609a17f5414db4a7e84942172eedebdc6b184be3f644bbb9fb325db6f917"
    end
  end

  def install
    bin.install "cc-bash-guard"
  end

  test do
    system "#{bin}/cc-bash-guard", "version"
  end
end
