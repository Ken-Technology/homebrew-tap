# kenso 0.1.137, written by the Kenso CLI release. Each release replaces this file: do not edit it by hand.
class Kenso < Formula
  desc "Bulk lead, CRM and Studio work for people and coding agents"
  homepage "https://ken.so/cli"
  version "0.1.137"
  license "MIT"

  on_macos do
    on_arm do
      url "https://downloads.ken.so/desktop/cli/0.1.137/kenso-0.1.137-darwin-arm64.tar.gz"
      sha256 "871e7f5275a098edc99b9cf257521722bcc23e9328690c8faae3d09a8f1f4698"
    end
    on_intel do
      url "https://downloads.ken.so/desktop/cli/0.1.137/kenso-0.1.137-darwin-x64.tar.gz"
      sha256 "585a753c26efc96d62ab1e52ef6d950cb329231fbf26e8146fea009fef5e22bf"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.ken.so/desktop/cli/0.1.137/kenso-0.1.137-linux-arm64.tar.gz"
      sha256 "c54db9ced631e68e92462689fed6f5987bc61454b3def7b37b595d6f8ce4a5ca"
    end
    on_intel do
      url "https://downloads.ken.so/desktop/cli/0.1.137/kenso-0.1.137-linux-x64.tar.gz"
      sha256 "22e9cd9e50dcfd24db6ff59a9503376153f12efa2f59188ec28d2bfa7e8010bc"
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
