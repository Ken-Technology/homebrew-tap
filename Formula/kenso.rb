# kenso 0.1.72, written by the Kenso CLI release. Each release replaces this file: do not edit it by hand.
class Kenso < Formula
  desc "Bulk lead, CRM and Studio work for people and coding agents"
  homepage "https://ken.so/cli"
  version "0.1.72"
  license "MIT"

  on_macos do
    on_arm do
      url "https://downloads.ken.so/desktop/cli/0.1.72/kenso-0.1.72-darwin-arm64.tar.gz"
      sha256 "f63499e7cd85b7b9c395d686eaac0e1804422664815ae3bc8d31dddeab9cfca4"
    end
    on_intel do
      url "https://downloads.ken.so/desktop/cli/0.1.72/kenso-0.1.72-darwin-x64.tar.gz"
      sha256 "aaf0e98f2a7856fa05c4f2653b195c2fe9bb87dcbff4a03691097f51023f43aa"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.ken.so/desktop/cli/0.1.72/kenso-0.1.72-linux-arm64.tar.gz"
      sha256 "c032e6ab88b227283855e1823fe2c15224e5504d0ad3da79af31965a8fd90468"
    end
    on_intel do
      url "https://downloads.ken.so/desktop/cli/0.1.72/kenso-0.1.72-linux-x64.tar.gz"
      sha256 "e5c0090b81693b3f799cf968cb5c48076b2dc744f755721c5bad55ecf3849997"
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
