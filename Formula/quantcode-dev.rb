class QuantcodeDev < Formula
  desc "AI coding assistant for Australian Government developers (dev channel)"
  homepage "https://code.quantcdn.io"
  version "0.0.0-dev.20261119.gec9442e"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/dev-20261119.gec9442e/quantcode-dev-darwin-arm64.zip"
      sha256 "73b793d4da7904fab47df48c2e9a5c94fb5003a551d1ac6211d6366817cc21a2"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/dev-20261119.gec9442e/quantcode-dev-darwin-x64.zip"
      sha256 "4e49c82ca5652535392cdfee4708a440ed71677e23b8848c0bd83a7bc71104d4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/dev-20261119.gec9442e/quantcode-dev-linux-arm64.tar.gz"
      sha256 "3c4fe837141215b7ff568467a75526d1d8e79c263064af3369060922c0ff39ca"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/dev-20261119.gec9442e/quantcode-dev-linux-x64.tar.gz"
      sha256 "d80dc7f3d39e66aff91922e3ec2bd58964678992893b0ec72a6860e78620b946"
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
