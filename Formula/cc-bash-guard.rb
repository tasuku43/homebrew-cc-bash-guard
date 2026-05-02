class CcBashGuard < Formula
  desc "Invocation policy proxy for AI-agent shell commands"
  homepage "https://github.com/tasuku43/cc-bash-guard"
  license "MIT"

  version "0.2.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.9/cc-bash-guard_v0.2.9_macos_arm64.tar.gz"
      sha256 "5d7045ab593b8ac070158b0967fceae336b320c3e1b9c819ec55c14596fd70af"
    else
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.9/cc-bash-guard_v0.2.9_macos_x64.tar.gz"
      sha256 "025b7b9f0ce784948ac9e3d2aa49b68f302e4ee4af5ebefc914ea64721428d81"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.9/cc-bash-guard_v0.2.9_linux_arm64.tar.gz"
      sha256 "e7ad2e6b58c12b73fac6fdd5681718540e227c229223b636ca9c5d0a7520c1d2"
    else
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.9/cc-bash-guard_v0.2.9_linux_x64.tar.gz"
      sha256 "38daa1ff16c1ecbce08f06f0490bf7797cfd125179b1d5f5661b3451f65c73d9"
    end
  end

  def install
    bin.install "cc-bash-guard"
  end

  test do
    system "#{bin}/cc-bash-guard", "version"
  end
end
