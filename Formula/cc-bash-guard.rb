class CcBashGuard < Formula
  desc "Invocation policy proxy for AI-agent shell commands"
  homepage "https://github.com/tasuku43/cc-bash-guard"
  license "MIT"

  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.1.0/cc-bash-guard_v0.1.0_macos_arm64.tar.gz"
      sha256 "84923b020ce5d5bf8a072fd24ff511ac95d6686e9dd51cf280a263be951036f0"
    else
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.1.0/cc-bash-guard_v0.1.0_macos_x64.tar.gz"
      sha256 "df95f15720dc1b6831483a1c79ffefe95c85d8c90b445ec4f1a397fd8e4d6b81"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.1.0/cc-bash-guard_v0.1.0_linux_arm64.tar.gz"
      sha256 "90812db1c7c46b4de770f7158733a1fda69a9abbbb847721126f9da7bfe82902"
    else
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.1.0/cc-bash-guard_v0.1.0_linux_x64.tar.gz"
      sha256 "a9ea5c2cca609865f56e27fb68a6777d8d6abfbf7ed3cba77cd8bdd75e595140"
    end
  end

  def install
    bin.install "cc-bash-guard"
  end

  test do
    system "#{bin}/cc-bash-guard", "version"
  end
end
