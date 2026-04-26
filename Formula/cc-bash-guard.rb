class CcBashGuard < Formula
  desc "Invocation policy proxy for AI-agent shell commands"
  homepage "https://github.com/tasuku43/cc-bash-guard"
  license "MIT"

  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.1.1/cc-bash-guard_v0.1.1_macos_arm64.tar.gz"
      sha256 "66e887d37ed17f70ac0a65f2af0b6af0a7ea22c771fa43a1b47f062dfac40164"
    else
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.1.1/cc-bash-guard_v0.1.1_macos_x64.tar.gz"
      sha256 "7a7a6845f476b7f172d934dfc73cec69a4d2fc262a95e6f1891166c3475cac46"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.1.1/cc-bash-guard_v0.1.1_linux_arm64.tar.gz"
      sha256 "fe9f92f892c19c269e58da983181db3d505186245290b7fdd1723365a92feb7e"
    else
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.1.1/cc-bash-guard_v0.1.1_linux_x64.tar.gz"
      sha256 "834738b6a64d9e845170b31f5e1e62ea099934210efc0e33d920f058f1946298"
    end
  end

  def install
    bin.install "cc-bash-guard"
  end

  test do
    system "#{bin}/cc-bash-guard", "version"
  end
end
