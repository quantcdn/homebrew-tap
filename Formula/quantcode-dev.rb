class QuantcodeDev < Formula
  desc "AI coding assistant for Australian Government developers (dev channel)"
  homepage "https://code.quantcdn.io"
  version "0.0.0-dev.20260902.g50cbe5e"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/latest-dev/quantcode-dev-darwin-arm64.zip"
      sha256 "5fa031783c07ac4128f870daa92bab836d5afd9f1e75191df2c69676e71e668a"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/latest-dev/quantcode-dev-darwin-x64.zip"
      sha256 "6987c821f3c3ae9e5351ea6a49f502de73a258dc264f92bb42a67c259cae8431"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/latest-dev/quantcode-dev-linux-arm64.tar.gz"
      sha256 "cf71860e8e54f27a803a44627f9660630e7d5069dcccbf706447cf691f6c82e4"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/latest-dev/quantcode-dev-linux-x64.tar.gz"
      sha256 "2a31cb700fa689d0f14fcc0b7569aa2645a6798b51f85336f4c60e2d190e96d6"
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
