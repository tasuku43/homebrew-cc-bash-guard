class CcBashGuard < Formula
  desc "Invocation policy proxy for AI-agent shell commands"
  homepage "https://github.com/tasuku43/cc-bash-guard"
  license "MIT"

  version "0.2.12"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.12/cc-bash-guard_v0.2.12_macos_arm64.tar.gz"
      sha256 "4e069efbafaf11dde2a77dad60ac20e8799cc2f86433575e0c97b1025b9fdb6a"
    else
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.12/cc-bash-guard_v0.2.12_macos_x64.tar.gz"
      sha256 "4a32a92362184f79518b759e0731bebbfa79e733077bd500f14011451e969b82"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.12/cc-bash-guard_v0.2.12_linux_arm64.tar.gz"
      sha256 "17cd03d5edf77490d7395faccf3e5289ae0dd5b078a4b5288e899f3942c5d2ed"
    else
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.2.12/cc-bash-guard_v0.2.12_linux_x64.tar.gz"
      sha256 "ea2fdebe83a16a88cc543442695af82677c0cfafbee648e344449dd9c1fafeba"
    end
  end

  def install
    bin.install "cc-bash-guard"
  end

  test do
    system "#{bin}/cc-bash-guard", "version"
  end
end
