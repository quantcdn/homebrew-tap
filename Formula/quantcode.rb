class Quantcode < Formula
  desc "AI coding assistant for Australian Government developers"
  homepage "https://code.quantcdn.io"
  version "1.3.17-quant.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v#{version}/quantcode-darwin-arm64.zip"
      sha256 "f9d8c8cdebebca628fbe5c6d89f634e1f4e566730f1d721e5563333e1abd3f1f"
    end

    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v#{version}/quantcode-darwin-x64-baseline.zip"
      sha256 "f9d8c8cdebebca628fbe5c6d89f634e1f4e566730f1d721e5563333e1abd3f1f"
    end
  end

  def install
    bin.install "quantcode"
  end

  test do
    assert_match "quantcode", shell_output("#{bin}/quantcode --version")
  end
end
