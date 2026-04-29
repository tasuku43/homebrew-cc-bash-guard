class CcBashGuard < Formula
  desc "Invocation policy proxy for AI-agent shell commands"
  homepage "https://github.com/tasuku43/cc-bash-guard"
  license "MIT"

  version "0.1.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.1.7/cc-bash-guard_v0.1.7_macos_arm64.tar.gz"
      sha256 "ecb07336d3a03ced5ae11daa3fdac834ae4e76072dc7a7a3cd7c0f4f2bb7cdb0"
    else
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.1.7/cc-bash-guard_v0.1.7_macos_x64.tar.gz"
      sha256 "166bcf9db728b7f89b86db8e297a01a0f9d340eaa562f54d9c24278c217de3a3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.1.7/cc-bash-guard_v0.1.7_linux_arm64.tar.gz"
      sha256 "1e98380fb8854fb4111ba860aa2e89b4de06b0b5bd442970665e97722ac3082a"
    else
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.1.7/cc-bash-guard_v0.1.7_linux_x64.tar.gz"
      sha256 "c5710b143e17b14a5fe3a868c3fa19519daeb3af4fe83df1c2bbc5c5525c77e9"
    end
  end

  def install
    bin.install "cc-bash-guard"
  end

  test do
    system "#{bin}/cc-bash-guard", "version"
  end
end
