class Quantcode < Formula
  desc "AI coding assistant for Australian Government developers"
  homepage "https://code.quantcdn.io"
  version "1.4.3-quant.68"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.68/quantcode-darwin-arm64.zip"
      sha256 "c404ca3e4049c8267a442ce82b848a682fce62e47a372dd391833213279ac11a"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.68/quantcode-darwin-x64.zip"
      sha256 "ba2fada9072c34c0ec3deea60c75e47f108d852e4362b2bae2ed9bdb53aba640"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.68/quantcode-linux-arm64.tar.gz"
      sha256 "6286419a7ea2835f25a3e27c0057b96d191e092de422349d32b6527ffa27afd6"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.68/quantcode-linux-x64.tar.gz"
      sha256 "986ccd1d7eeb5c7d83c94719899bb6fdba4eaccfa88ec8d3cf3fa8159e147644"
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
