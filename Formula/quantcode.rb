class Quantcode < Formula
  desc "AI coding assistant for Australian Government developers"
  homepage "https://code.quantcdn.io"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode/releases/download/v#{version}/quantcode-darwin-arm64.zip"
      sha256 "PLACEHOLDER"
    end

    on_intel do
      url "https://github.com/quantcdn/quantcode/releases/download/v#{version}/quantcode-darwin-x64-baseline.zip"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "quantcode"
  end

  test do
    assert_match "quantcode", shell_output("#{bin}/quantcode --version")
  end
end
