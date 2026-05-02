class Quantcode < Formula
  desc "AI coding assistant for Australian Government developers"
  homepage "https://code.quantcdn.io"
  version "1.4.3-quant.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.17/quantcode-darwin-arm64.zip"
      sha256 "56ef8fe6ffb979a8ec629b626067378702a5ba86e081516c2f5edd71e22bf04c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.17/quantcode-linux-arm64.tar.gz"
      sha256 "eff07a0489f120f37cf3d24a4c10463c46005d373a5b00693ccf0a48ec8e3021"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.17/quantcode-linux-x64.tar.gz"
      sha256 "1f71b96dc300829b3aa71ae51dfc2e8dd113f8c749e81855d19fda824747a89c"
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
