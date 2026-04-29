class CcBashGuard < Formula
  desc "Invocation policy proxy for AI-agent shell commands"
  homepage "https://github.com/tasuku43/cc-bash-guard"
  license "MIT"

  version "0.1.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.1.9/cc-bash-guard_v0.1.9_macos_arm64.tar.gz"
      sha256 "a3fb360f83e1f8d987be929d112828e6276a38663a39db30a54bd782caf7e00a"
    else
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.1.9/cc-bash-guard_v0.1.9_macos_x64.tar.gz"
      sha256 "126c6ae85bcfb07341de7377d1e2db647b45a66bf2466e30d1d53d8244fe9130"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.1.9/cc-bash-guard_v0.1.9_linux_arm64.tar.gz"
      sha256 "84e0a1af6358588acdbfa6f009ad739cd6db5381fa9198ff91ffc1dde7d51a75"
    else
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.1.9/cc-bash-guard_v0.1.9_linux_x64.tar.gz"
      sha256 "f4af2216fe03765f849a625cbe5343d010b37c8e7defe04032da64ee638a151e"
    end
  end

  def install
    bin.install "cc-bash-guard"
  end

  test do
    system "#{bin}/cc-bash-guard", "version"
  end
end
