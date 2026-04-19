class Quantcode < Formula
  desc "AI coding assistant for Australian Government developers"
  homepage "https://code.quantcdn.io"
  version "1.4.3-quant.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.6/quantcode-darwin-arm64.zip"
      sha256 "a72e394b043bbdc58a30fe4594d3032c73c5599c711f98d31af8695ea1539af9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.6/quantcode-linux-arm64.tar.gz"
      sha256 "4611247828ac0f2b4f50d7da2952c8e83d422a3197418701c2571327fc50226f"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.6/quantcode-linux-x64.tar.gz"
      sha256 "2977b99483dbba04ba4b559152e537c3f6a1f62e631e9954449c74d0ac9f152c"
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
