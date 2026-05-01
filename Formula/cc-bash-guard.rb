class CcBashGuard < Formula
  desc "Invocation policy proxy for AI-agent shell commands"
  homepage "https://github.com/tasuku43/cc-bash-guard"
  license "MIT"

  version "0.2.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.7/cc-bash-guard_v0.2.7_macos_arm64.tar.gz"
      sha256 "f13c42acfb827b897d271952661698dcb91f8dcc520c04b9e115356164d0dab8"
    else
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.7/cc-bash-guard_v0.2.7_macos_x64.tar.gz"
      sha256 "82c9f339e5b933c4f262a7378f3c7bc47a0b4646e68dc66d16d9ddfbe95398dd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.7/cc-bash-guard_v0.2.7_linux_arm64.tar.gz"
      sha256 "a60676377fd02b1fe2276d8fa5b0e3e6b2d44218f4a37400aee5566f61fea8be"
    else
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.7/cc-bash-guard_v0.2.7_linux_x64.tar.gz"
      sha256 "4e0f3fac798f25b19977b7e6a317a201f52dd7fb44a461a582448006cec79eca"
    end
  end

  def install
    bin.install "cc-bash-guard"
  end

  test do
    system "#{bin}/cc-bash-guard", "version"
  end
end
