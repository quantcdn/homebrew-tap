class Quantcode < Formula
  desc "AI coding assistant for Australian Government developers"
  homepage "https://code.quantcdn.io"
  version "1.4.3-quant.24"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.24/quantcode-darwin-arm64.zip"
      sha256 "42427fcce4032713bdc5f7104903f605412d93000c7a8a205ed1e77be034ed48"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.24/quantcode-linux-arm64.tar.gz"
      sha256 "34d901863acbf3a33dbb0359690e94b6397c2843a7635edf469f2bb14a69b659"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.24/quantcode-linux-x64.tar.gz"
      sha256 "b070063a759bb05ef79dd1df61f98969f86c259284a66e41a5d1491b50694f99"
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
