class Quantcode < Formula
  desc "AI coding assistant for Australian Government developers"
  homepage "https://code.quantcdn.io"
  version "1.4.3-quant.48"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.48/quantcode-darwin-arm64.zip"
      sha256 "85fa3778adf0d3733d2d58492de85657eb532d3d7b84203600c1544009dbf9b3"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.48/quantcode-darwin-x64.zip"
      sha256 "a7c190b29aa035262e0671c76783604a7d234707298923d9e54efaffee2941a4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.48/quantcode-linux-arm64.tar.gz"
      sha256 "af0e601fd42fe1dc272f4181d098b0913aab3bf300d7f8f0a3656b9c19cb81de"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.48/quantcode-linux-x64.tar.gz"
      sha256 "838348a85a23c65f3db12da6cada2eb93edf9e32b4162cbee9e3862d59eb5e98"
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
