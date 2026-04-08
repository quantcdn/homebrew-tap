class Quantcode < Formula
  desc "AI coding assistant for Australian Government developers"
  homepage "https://code.quantcdn.io"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v#{version}/quantcode-darwin-arm64.zip"
      sha256 "c781f29711f5e07a6cbb66cad60d938a9f2ca1dbfa57f2df690a0724cdbe70d9"
    end

    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v#{version}/quantcode-darwin-x64-baseline.zip"
      sha256 "c781f29711f5e07a6cbb66cad60d938a9f2ca1dbfa57f2df690a0724cdbe70d9"
    end
  end

  def install
    bin.install "quantcode"
  end

  test do
    assert_match "quantcode", shell_output("#{bin}/quantcode --version")
  end
end
