class CcBashGuard < Formula
  desc "Invocation policy proxy for AI-agent shell commands"
  homepage "https://github.com/tasuku43/cc-bash-guard"
  license "MIT"

  version "0.2.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.6/cc-bash-guard_v0.2.6_macos_arm64.tar.gz"
      sha256 "7f7551a049da20a64c059f6e451c89ad5bd1ffbff8064619c19ec8d002b9aaa4"
    else
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.6/cc-bash-guard_v0.2.6_macos_x64.tar.gz"
      sha256 "53f81d5ee994dfa04ce07cf12e4b4c9bc452abe2488afaf3ba461f72c5799bb7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.6/cc-bash-guard_v0.2.6_linux_arm64.tar.gz"
      sha256 "a9dd0067b41ca0184f4f285947bfb803ca50d204c08fc68d471484890cbae02b"
    else
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.6/cc-bash-guard_v0.2.6_linux_x64.tar.gz"
      sha256 "55c6a5cf8c9d073cbc5df08687c7e758a6b3f5faf2a322f4ee8dd26dc537a343"
    end
  end

  def install
    bin.install "cc-bash-guard"
  end

  test do
    system "#{bin}/cc-bash-guard", "version"
  end
end
