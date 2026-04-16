class Quantcode < Formula
  desc "AI coding assistant for Australian Government developers"
  homepage "https://code.quantcdn.io"
  version "1.4.3-quant.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.5/quantcode-darwin-arm64.zip"
      sha256 "cde4a70bb250130799ea9da49942cd151d8009822edf29d4317faacf69193e26"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.5/quantcode-linux-arm64.tar.gz"
      sha256 "154b160555af8b8f209ac605666aee4633648ccafc6dda2cbeb6a78f3a4dba7a"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.5/quantcode-linux-x64.tar.gz"
      sha256 "08714a1da2371022d30699be95282d3d094bb33f6a174409af12a2b617b30399"
    end
  end

  def install
    bin.install "quantcode"
    bin.install_symlink bin/"quantcode" => "qcode"
  end

  test do
    assert_match "quantcode", shell_output("#{bin}/quantcode --version")
  end
end
