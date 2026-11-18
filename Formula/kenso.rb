# kenso 0.1.83, written by the Kenso CLI release. Each release replaces this file: do not edit it by hand.
class Kenso < Formula
  desc "Bulk lead, CRM and Studio work for people and coding agents"
  homepage "https://ken.so/cli"
  version "0.1.83"
  license "MIT"

  on_macos do
    on_arm do
      url "https://downloads.ken.so/desktop/cli/0.1.83/kenso-0.1.83-darwin-arm64.tar.gz"
      sha256 "567ba8eff7a3b763c3380a8f459ff6bee438cab0332d6ff4e6b1dc1041c18e1c"
    end
    on_intel do
      url "https://downloads.ken.so/desktop/cli/0.1.83/kenso-0.1.83-darwin-x64.tar.gz"
      sha256 "9a57745b144c0ae9cd3b0a28cb0b33404140b06d317f0f8523f3a73b6918802b"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.ken.so/desktop/cli/0.1.83/kenso-0.1.83-linux-arm64.tar.gz"
      sha256 "17bc24d0f7dcaf040d6ef1d42f279ef5015c6d91696ad1628ad8ab45fc79f8b3"
    end
    on_intel do
      url "https://downloads.ken.so/desktop/cli/0.1.83/kenso-0.1.83-linux-x64.tar.gz"
      sha256 "fe225f3d52cf50fcdcba41ca1f8079c17a6bb1052d90ae0cda50d0dd466e75e4"
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
