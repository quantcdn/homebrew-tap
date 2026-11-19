class Quantcode < Formula
  desc "AI coding assistant for Australian Government developers"
  homepage "https://code.quantcdn.io"
  version "1.4.3-quant.82"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.82/quantcode-darwin-arm64.zip"
      sha256 "79925be93d34f136046ec9a3ffdbbb9d5be8cbceb7f6b60797912863acf6c8d9"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.82/quantcode-darwin-x64.zip"
      sha256 "c741019e2f84b208f13ed4b2db9fde08c3a0f06f572d13d99ed2b35f8bfb1c82"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.82/quantcode-linux-arm64.tar.gz"
      sha256 "7c9853812eb007b468c34e3399ac4636463e13f1fef96b87e71756d5ae32f597"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.82/quantcode-linux-x64.tar.gz"
      sha256 "5963efb83f4e7b2ca8fa3922873b2cc01b70f760e925305b8df1e4aa66edf2bb"
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
