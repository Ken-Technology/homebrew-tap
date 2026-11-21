# kenso 0.1.135, written by the Kenso CLI release. Each release replaces this file: do not edit it by hand.
class Kenso < Formula
  desc "Bulk lead, CRM and Studio work for people and coding agents"
  homepage "https://ken.so/cli"
  version "0.1.135"
  license "MIT"

  on_macos do
    on_arm do
      url "https://downloads.ken.so/desktop/cli/0.1.135/kenso-0.1.135-darwin-arm64.tar.gz"
      sha256 "d6685c088b4cff609e14ae7734272f315e773405f7843449ab5ef1a3d674db71"
    end
    on_intel do
      url "https://downloads.ken.so/desktop/cli/0.1.135/kenso-0.1.135-darwin-x64.tar.gz"
      sha256 "0dcd4c984b66171064c56ad813c26483555db9471760afb5785c6840a21338ad"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.ken.so/desktop/cli/0.1.135/kenso-0.1.135-linux-arm64.tar.gz"
      sha256 "bc7660f2cd434acda44e77823dc7e0a772d311c949c26f0e1b6d946a88d528d3"
    end
    on_intel do
      url "https://downloads.ken.so/desktop/cli/0.1.135/kenso-0.1.135-linux-x64.tar.gz"
      sha256 "fe8131048cb371ab560ae8c2e5f3abb64f4d176f7e2dd84fe72fee1a157f8ba3"
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
