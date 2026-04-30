class CcBashGuard < Formula
  desc "Invocation policy proxy for AI-agent shell commands"
  homepage "https://github.com/tasuku43/cc-bash-guard"
  license "MIT"

  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.0/cc-bash-guard_v0.2.0_macos_arm64.tar.gz"
      sha256 "1c1761aac61c559bd7cf5655c88ed94faaf69d020e60f18b745f1fcf13eea3f3"
    else
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.0/cc-bash-guard_v0.2.0_macos_x64.tar.gz"
      sha256 "c59e4283420411df2c271ebe559dd04a8e065ac8b8b6cf8e4f655372370d0d6f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.0/cc-bash-guard_v0.2.0_linux_arm64.tar.gz"
      sha256 "dabc17acd8f516f3a79ad6f24b710d3166a0c63277e215268223867f52ace0ab"
    else
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.0/cc-bash-guard_v0.2.0_linux_x64.tar.gz"
      sha256 "1d98371096cf27491a3e8b2d2450ec0bdeef34d74f8e967c904776fecb8514ca"
    end
  end

  def install
    bin.install "cc-bash-guard"
  end

  test do
    system "#{bin}/cc-bash-guard", "version"
  end
end
