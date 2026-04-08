class Quantcode < Formula
  desc "AI coding assistant for Australian Government developers"
  homepage "https://code.quantcdn.io"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode/releases/download/v#{version}/quantcode-darwin-arm64.zip"
      sha256 "0757852da657aa1f5752d1311b844a72e09e3f23be73a64a2ff84ef53f56e8a5"
    end

    on_intel do
      url "https://github.com/quantcdn/quantcode/releases/download/v#{version}/quantcode-darwin-x64-baseline.zip"
      sha256 "0757852da657aa1f5752d1311b844a72e09e3f23be73a64a2ff84ef53f56e8a5"
    end
  end

  def install
    bin.install "quantcode"
  end

  test do
    assert_match "quantcode", shell_output("#{bin}/quantcode --version")
  end
end
