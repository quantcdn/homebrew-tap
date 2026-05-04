class Quantcode < Formula
  desc "AI coding assistant for Australian Government developers"
  homepage "https://code.quantcdn.io"
  version "1.4.3-quant.27"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.27/quantcode-darwin-arm64.zip"
      sha256 "14824b215efb1a33ee5e970d88ab827d205aae39fa00c3b53effeab336052aac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.27/quantcode-linux-arm64.tar.gz"
      sha256 "79128861c51af834f35a719864cd613575b0c431437282390ab1fe7f84af969e"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.27/quantcode-linux-x64.tar.gz"
      sha256 "77d7c8d90f3e5659a35a404289514750ec69d7074a79f72b43023eea0cbacb67"
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
