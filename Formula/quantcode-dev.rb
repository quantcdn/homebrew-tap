class QuantcodeDev < Formula
  desc "AI coding assistant for Australian Government developers (dev channel)"
  homepage "https://code.quantcdn.io"
  version "0.0.0-dev.20261113.ga98d5f7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/latest-dev/quantcode-dev-darwin-arm64.zip"
      sha256 "43610c6fd98e9c42d9e7b3abb590bec43bd6e85724696f3863e10d98268e1e06"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/latest-dev/quantcode-dev-darwin-x64.zip"
      sha256 "f8fafc97b4571a904f99f55c001ddd3b1d44d89ffbb336dc0204cd074a2ebfc7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/latest-dev/quantcode-dev-linux-arm64.tar.gz"
      sha256 "4179bec39d12295e1cc74957c2c791f1337ad338f6f6f035878c5ec439212d4c"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/latest-dev/quantcode-dev-linux-x64.tar.gz"
      sha256 "f9ee6b59ffed2164bcf900a4c6b6efe5179c10c287f3cc90f7c0f00c76260e13"
    end
  end

  def install
    bin.install "quantcode-dev"
    bin.install_symlink bin/"quantcode-dev" => "qcode-dev"
  end

  test do
    assert_match "quantcode", shell_output("#{bin}/quantcode-dev --version")
  end
end
