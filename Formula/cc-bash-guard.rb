class CcBashGuard < Formula
  desc "Invocation policy proxy for AI-agent shell commands"
  homepage "https://github.com/tasuku43/cc-bash-guard"
  license "MIT"

  version "0.2.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.2/cc-bash-guard_v0.2.2_macos_arm64.tar.gz"
      sha256 "af380bd5c987529e1be0dea2e3fdb2c076b4fabf6fdabe5b5cc97b5b312dfda8"
    else
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.2/cc-bash-guard_v0.2.2_macos_x64.tar.gz"
      sha256 "c282faf0304955701dd5dfa9928a68be8921ab515f8223cba780e3115f128c83"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.2/cc-bash-guard_v0.2.2_linux_arm64.tar.gz"
      sha256 "a4bde6f6710bc72283b7454f1836057e677809b01cd6f92b1fd07cf91ae808f6"
    else
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.2/cc-bash-guard_v0.2.2_linux_x64.tar.gz"
      sha256 "5221d6bf5f1504d0694909fa8786387cda22f93ce97e84f54ec2a8fe457fbae0"
    end
  end

  def install
    bin.install "cc-bash-guard"
  end

  test do
    system "#{bin}/cc-bash-guard", "version"
  end
end
