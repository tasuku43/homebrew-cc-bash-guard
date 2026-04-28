class CcBashGuard < Formula
  desc "Invocation policy proxy for AI-agent shell commands"
  homepage "https://github.com/tasuku43/cc-bash-guard"
  license "MIT"

  version "0.1.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.1.4/cc-bash-guard_v0.1.4_macos_arm64.tar.gz"
      sha256 "8a1efa3bbecf175bc1a592557e60953b698b8fb79a35174e7ac6cc129a1c35f4"
    else
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.1.4/cc-bash-guard_v0.1.4_macos_x64.tar.gz"
      sha256 "70e94eb8016371a152c15ac7e3454fed66a5b97e8577b1c54a3640d923c23024"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.1.4/cc-bash-guard_v0.1.4_linux_arm64.tar.gz"
      sha256 "290e236903ebdbb9d128b3aedb921d94ff1fc33ceb006b3ebfaf2a4d0ddc7f35"
    else
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.1.4/cc-bash-guard_v0.1.4_linux_x64.tar.gz"
      sha256 "a5a902a47eaaf7696469da96835ac798bff7d472148b610fa6725bec43cfc166"
    end
  end

  def install
    bin.install "cc-bash-guard"
  end

  test do
    system "#{bin}/cc-bash-guard", "version"
  end
end
