class CcBashGuard < Formula
  desc "Invocation policy proxy for AI-agent shell commands"
  homepage "https://github.com/tasuku43/cc-bash-guard"
  license "MIT"

  version "0.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.1/cc-bash-guard_v0.2.1_macos_arm64.tar.gz"
      sha256 "de37844f67e6b82b6f18095da3b70ebba7cf9853a42fff5195d84593feea67ab"
    else
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.1/cc-bash-guard_v0.2.1_macos_x64.tar.gz"
      sha256 "08c9f4d4500904ffe49b4f3be9c3ae0794c8f0a5fbb5dedaa7c79ccf6ed48809"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.1/cc-bash-guard_v0.2.1_linux_arm64.tar.gz"
      sha256 "4e62ecb08c9a3266417d455de385fbc7065bb2b3a32a80db6496eb98100af09c"
    else
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.1/cc-bash-guard_v0.2.1_linux_x64.tar.gz"
      sha256 "80956b5897c1be2dc59bf0245feb02cf5594b214193b6d3d2a4620f08a9c34ed"
    end
  end

  def install
    bin.install "cc-bash-guard"
  end

  test do
    system "#{bin}/cc-bash-guard", "version"
  end
end
