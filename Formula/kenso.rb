# kenso 0.1.101, written by the Kenso CLI release. Each release replaces this file: do not edit it by hand.
class Kenso < Formula
  desc "Bulk lead, CRM and Studio work for people and coding agents"
  homepage "https://ken.so/cli"
  version "0.1.101"
  license "MIT"

  on_macos do
    on_arm do
      url "https://downloads.ken.so/desktop/cli/0.1.101/kenso-0.1.101-darwin-arm64.tar.gz"
      sha256 "bf9bec9e7dfcfd12ed23f31d1a4d18967057a15257e68f75ed2d31997b054ec8"
    end
    on_intel do
      url "https://downloads.ken.so/desktop/cli/0.1.101/kenso-0.1.101-darwin-x64.tar.gz"
      sha256 "be69eae5963510ad8e0e0d7b1fc05c61aff94493bac27645ca6ea4491422b16f"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.ken.so/desktop/cli/0.1.101/kenso-0.1.101-linux-arm64.tar.gz"
      sha256 "77383a2ce658b70c749ebac3076d6df7fb2c8695ec2afe578eafd5fb10ba23d1"
    end
    on_intel do
      url "https://downloads.ken.so/desktop/cli/0.1.101/kenso-0.1.101-linux-x64.tar.gz"
      sha256 "3a1467d6efed90e539afd6739e42fd01c867c2bcd37f3534feb831b07222c418"
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
