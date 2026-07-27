class Quantcode < Formula
  desc "AI coding assistant for Australian Government developers"
  homepage "https://code.quantcdn.io"
  version "1.4.3-quant.50"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.50/quantcode-darwin-arm64.zip"
      sha256 "1fe3d7804943df8bbd3fc2fbb8f4b11c241638df62e48f335719a1b0d221f7bf"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.50/quantcode-darwin-x64.zip"
      sha256 "5f573c9c6e76ba83cf66c2be5786a6819e94648ac9902f9f65ac803634ae048c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.50/quantcode-linux-arm64.tar.gz"
      sha256 "880b37ea36215e0f079bfdc2af91c8adf205140f97cc86ec6a4fde4aa1a319fb"
    end
    on_intel do
      url "https://github.com/quantcdn/quantcode-releases/releases/download/v1.4.3-quant.50/quantcode-linux-x64.tar.gz"
      sha256 "43087995c32595900c46cfd79d8ea1a632aaa6cf04499a40f08fd058fba3f9c1"
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
