class CcBashGuard < Formula
  desc "Invocation policy proxy for AI-agent shell commands"
  homepage "https://github.com/tasuku43/cc-bash-guard"
  license "MIT"

  version "0.1.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.1.6/cc-bash-guard_v0.1.6_macos_arm64.tar.gz"
      sha256 "9a234b9875d21126614538a36a0457a072f04f0aada313a6ebe1cba2877bbbda"
    else
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.1.6/cc-bash-guard_v0.1.6_macos_x64.tar.gz"
      sha256 "453a22ada8a5d8cbc12641d652a30d771700b72c0bc9d43b50be86a53fce7354"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.1.6/cc-bash-guard_v0.1.6_linux_arm64.tar.gz"
      sha256 "b3429e081c2d35c616be8ae446d3d9591f54e94823073d209e251f2832814b9e"
    else
      url "https://github.com/tasuku43/cc-bash-guard/releases/download/v0.1.6/cc-bash-guard_v0.1.6_linux_x64.tar.gz"
      sha256 "2ae8245fb40c0b2841b1e43317dd409849d32077490c5b2370757d61e5f3fc94"
    end
  end

  def install
    bin.install "cc-bash-guard"
  end

  test do
    system "#{bin}/cc-bash-guard", "version"
  end
end
