# kenso 0.1.208, written by the Kenso CLI release. Each release replaces this file: do not edit it by hand.
class Kenso < Formula
  desc "Bulk lead, CRM and Studio work for people and coding agents"
  homepage "https://ken.so/cli"
  version "0.1.208"
  license "MIT"

  on_macos do
    on_arm do
      url "https://downloads.ken.so/desktop/cli/0.1.208/kenso-0.1.208-darwin-arm64.tar.gz"
      sha256 "21aec7f30a8d32d39e2e14318a7b73e8d4eb3a75a80b50e80a7064502f1f8a24"
    end
    on_intel do
      url "https://downloads.ken.so/desktop/cli/0.1.208/kenso-0.1.208-darwin-x64.tar.gz"
      sha256 "d5359236a4c3b88d16424624b12ff8d07199d632626250f98cf8b08a581a2e83"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.ken.so/desktop/cli/0.1.208/kenso-0.1.208-linux-arm64.tar.gz"
      sha256 "146c737b4f35925e803c3e7e676a4ba61581565a30ad0e8c7a324988616a5829"
    end
    on_intel do
      url "https://downloads.ken.so/desktop/cli/0.1.208/kenso-0.1.208-linux-x64.tar.gz"
      sha256 "ab70967ed00b3b49146dbb195e1f424acddf3526f6f549cd42a9c7edfbafba90"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/kenso"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/kenso --version").strip
  end
end
