class CcBashGuard < Formula
  desc "Invocation policy proxy for AI-agent shell commands"
  homepage "https://github.com/tasuku43/cc-bash-guard"
  license "MIT"

  version "0.1.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.1.8/cc-bash-guard_v0.1.8_macos_arm64.tar.gz"
      sha256 "b8244972d1f492bd410b0b8faddfdf087d70104592e6f3dfb305b04b07f49baa"
    else
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.1.8/cc-bash-guard_v0.1.8_macos_x64.tar.gz"
      sha256 "590c448bd30c0bbd75546ed5c4469366412d9d8b16126c8ecda8a51ef7609050"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.1.8/cc-bash-guard_v0.1.8_linux_arm64.tar.gz"
      sha256 "a03082e9866d3d03a2c4dd98c69bae5ce67881b712d987ae5c2eccd93fd39877"
    else
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.1.8/cc-bash-guard_v0.1.8_linux_x64.tar.gz"
      sha256 "0976e42e676cae17c7c8b4544352870a80a8140c360e6bb60615def32176480a"
    end
  end

  def install
    bin.install "cc-bash-guard"
  end

  test do
    system "#{bin}/cc-bash-guard", "version"
  end
end
