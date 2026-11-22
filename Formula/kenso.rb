# kenso 0.1.169, written by the Kenso CLI release. Each release replaces this file: do not edit it by hand.
class Kenso < Formula
  desc "Bulk lead, CRM and Studio work for people and coding agents"
  homepage "https://ken.so/cli"
  version "0.1.169"
  license "MIT"

  on_macos do
    on_arm do
      url "https://downloads.ken.so/desktop/cli/0.1.169/kenso-0.1.169-darwin-arm64.tar.gz"
      sha256 "515e1430f379d7bae43b018f3c47e85dec481a45ec801a815220a62a2e9b0ab4"
    end
    on_intel do
      url "https://downloads.ken.so/desktop/cli/0.1.169/kenso-0.1.169-darwin-x64.tar.gz"
      sha256 "5f22058603acc5d011572a3ee8d0214c6195bd1a8bc451aea049f56b32ded72d"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.ken.so/desktop/cli/0.1.169/kenso-0.1.169-linux-arm64.tar.gz"
      sha256 "70c4f00fd4575546ee7863bd9316695a926690b8809a8307a590c65d7077734d"
    end
    on_intel do
      url "https://downloads.ken.so/desktop/cli/0.1.169/kenso-0.1.169-linux-x64.tar.gz"
      sha256 "e0179dce4d1794b1db58e9612bf2176e2e9177c36df9f9a6daf31c44a94e281c"
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
