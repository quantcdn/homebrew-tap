class Quantcode < Formula
  desc "AI coding assistant for Australian Government developers"
  homepage "https://code.quantcdn.io"
  version "1.4.3-quant.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.15/quantcode-darwin-arm64.zip"
      sha256 "f320dc4be87cdaeccb19b42ef405dc3b04ecbf7dfc1b918a2edadb61df70ebb1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.15/quantcode-linux-arm64.tar.gz"
      sha256 "d3f5df92e41ded030857bbfdcc030765a09716b6a0ace52f74079799b13446de"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.15/quantcode-linux-x64.tar.gz"
      sha256 "8fe7556900806cb6136f1aad02aa130e8774463212acf6c9753ed77e2bb1f003"
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
