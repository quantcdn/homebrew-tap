class QuantcodeDev < Formula
  desc "AI coding assistant for Australian Government developers (dev channel)"
  homepage "https://code.quantcdn.io"
  version "0.0.0-dev.20261026.gcaa2fe7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/latest-dev/quantcode-dev-darwin-arm64.zip"
      sha256 "c4f34921db1133ebe00ab6f304c9d6d67992296ae6f4d17e5fef2e0681bf92c7"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/latest-dev/quantcode-dev-darwin-x64.zip"
      sha256 "42ac99612dd0a3220a96dcd60567c5e1288b6228ffffd4b4651dab1f447b9479"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/latest-dev/quantcode-dev-linux-arm64.tar.gz"
      sha256 "15f469307ef994e42a04b719abd0ebae296142a23eccbcb91a5c6c13aff17eb1"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/latest-dev/quantcode-dev-linux-x64.tar.gz"
      sha256 "7a00cf5398baab04b1c4d5e3b295facbc9d9e47fc95df294c7c24587af5ac483"
    end
  end

  def install
    bin.install "quantcode-dev"
    bin.install_symlink bin/"quantcode-dev" => "qcode-dev"
  end

  test do
    assert_match "quantcode", shell_output("#{bin}/quantcode-dev --version")
  end
end
