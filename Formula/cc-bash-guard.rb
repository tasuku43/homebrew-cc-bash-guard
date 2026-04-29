class CcBashGuard < Formula
  desc "Invocation policy proxy for AI-agent shell commands"
  homepage "https://github.com/tasuku43/cc-bash-guard"
  license "MIT"

  version "0.1.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.1.5/cc-bash-guard_v0.1.5_macos_arm64.tar.gz"
      sha256 "db99e8e01ab710b65a20451bfa92dc8274c4ea7917996f436934c0ce00354fee"
    else
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.1.5/cc-bash-guard_v0.1.5_macos_x64.tar.gz"
      sha256 "f3d29ac3a656dee1d6414fc6113dfca2b8c6203fda08633ad8a0c2b4b7720a73"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.1.5/cc-bash-guard_v0.1.5_linux_arm64.tar.gz"
      sha256 "e3d9c3d6d55c9fdb0a16cd228f5bc38df24439aba0d89ef041e08d140db37685"
    else
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.1.5/cc-bash-guard_v0.1.5_linux_x64.tar.gz"
      sha256 "64651f85a163dfc93ce5a2146fb3cf56f125333769b362882b1eea90f0d1920f"
    end
  end

  def install
    bin.install "cc-bash-guard"
  end

  test do
    system "#{bin}/cc-bash-guard", "version"
  end
end
