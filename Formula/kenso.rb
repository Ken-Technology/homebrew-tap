# kenso 0.1.184, written by the Kenso CLI release. Each release replaces this file: do not edit it by hand.
class Kenso < Formula
  desc "Bulk lead, CRM and Studio work for people and coding agents"
  homepage "https://ken.so/cli"
  version "0.1.184"
  license "MIT"

  on_macos do
    on_arm do
      url "https://downloads.ken.so/desktop/cli/0.1.184/kenso-0.1.184-darwin-arm64.tar.gz"
      sha256 "d1f8e7856dca5f9f77040d6015124a9ff4b6b3c9e4795697bdf87072be961dc1"
    end
    on_intel do
      url "https://downloads.ken.so/desktop/cli/0.1.184/kenso-0.1.184-darwin-x64.tar.gz"
      sha256 "bbc91ba73cf0ca2947f93160bc68c6c415dc7657984805b9808595d2f1f62b94"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.ken.so/desktop/cli/0.1.184/kenso-0.1.184-linux-arm64.tar.gz"
      sha256 "c44fcef6b0c4afea90803f2d8329f26653ab00c5edaa7cb12a0e4ad50643cc24"
    end
    on_intel do
      url "https://downloads.ken.so/desktop/cli/0.1.184/kenso-0.1.184-linux-x64.tar.gz"
      sha256 "78ca288e6dcfd66191ace96fcfa31531bef4a83d842f35e650e91b3e389456b1"
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
