# kenso 0.1.196, written by the Kenso CLI release. Each release replaces this file: do not edit it by hand.
class Kenso < Formula
  desc "Bulk lead, CRM and Studio work for people and coding agents"
  homepage "https://ken.so/cli"
  version "0.1.196"
  license "MIT"

  on_macos do
    on_arm do
      url "https://downloads.ken.so/desktop/cli/0.1.196/kenso-0.1.196-darwin-arm64.tar.gz"
      sha256 "0818d23ebd251c07a2a4c042e2975ebfaded614a7172a28830e588b626e826c6"
    end
    on_intel do
      url "https://downloads.ken.so/desktop/cli/0.1.196/kenso-0.1.196-darwin-x64.tar.gz"
      sha256 "2d41969b837d6be14fa760290207d9d8e84c2dbbe205a69965b819eb8da97b96"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.ken.so/desktop/cli/0.1.196/kenso-0.1.196-linux-arm64.tar.gz"
      sha256 "d16d3ac764e946159332e80f68018337c841c0b7c33566999675233ef6532df6"
    end
    on_intel do
      url "https://downloads.ken.so/desktop/cli/0.1.196/kenso-0.1.196-linux-x64.tar.gz"
      sha256 "67ac38b2e8ef9e068678b81f74274e7895816c8778b0fa0955fa851b9f520593"
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
