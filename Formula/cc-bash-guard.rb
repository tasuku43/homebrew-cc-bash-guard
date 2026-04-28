class CcBashGuard < Formula
  desc "Invocation policy proxy for AI-agent shell commands"
  homepage "https://github.com/tasuku43/cc-bash-guard"
  license "MIT"

  version "0.1.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.1.3/cc-bash-guard_v0.1.3_macos_arm64.tar.gz"
      sha256 "24ad4cde0c09acced0fa069b22fff322919779a315290b6e8f3a6eda548762d7"
    else
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.1.3/cc-bash-guard_v0.1.3_macos_x64.tar.gz"
      sha256 "d266e0f1c00451b13d08cb8ed63595a8292b2f7d0d9b539d47a0a73d73af06ca"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.1.3/cc-bash-guard_v0.1.3_linux_arm64.tar.gz"
      sha256 "7bfc75f39832457aa240f9aef23bbd863c4d2184a83e7b9b31e8bf611a66ad1e"
    else
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.1.3/cc-bash-guard_v0.1.3_linux_x64.tar.gz"
      sha256 "15d7712b2509f30643674a0d9dfba6e04986440be53538dde51f5a60ca29ceee"
    end
  end

  def install
    bin.install "cc-bash-guard"
  end

  test do
    system "#{bin}/cc-bash-guard", "version"
  end
end
