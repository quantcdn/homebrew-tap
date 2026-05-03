class Quantcode < Formula
  desc "AI coding assistant for Australian Government developers"
  homepage "https://code.quantcdn.io"
  version "1.4.3-quant.22"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.22/quantcode-darwin-arm64.zip"
      sha256 "64411abf05af03287cb912ad989118938910e68a5f090e98f8af1eb6f33776de"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.22/quantcode-linux-arm64.tar.gz"
      sha256 "112959ebbef0b293c739984a2b853b8133fa1018b372457791f5ef62b668227b"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.22/quantcode-linux-x64.tar.gz"
      sha256 "b696ed25f71d10b38786fbe60f59a4804f9b2dfb636df41466326ae613251ee6"
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
