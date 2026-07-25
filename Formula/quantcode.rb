class Quantcode < Formula
  desc "AI coding assistant for Australian Government developers"
  homepage "https://code.quantcdn.io"
  version "1.4.3-quant.45"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.45/quantcode-darwin-arm64.zip"
      sha256 "8ac035ef247b1cf52fa04f526c99551312ad36d46a92149b5ed5ff84d8d65a9f"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.45/quantcode-darwin-x64.zip"
      sha256 "6b6500e9aa82a02f9e27275fc67e7e5acdb420a2f4d92a8ce4c3b00f8e21c0d6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.45/quantcode-linux-arm64.tar.gz"
      sha256 "dd855b9580dbec301451f3deb7c72fb347d21300972b0115b46ef0319733183e"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.45/quantcode-linux-x64.tar.gz"
      sha256 "d7df091332e7f6e19a04b04c0e4883980fd8efcb9fac2524d12c682d04b5cad2"
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
