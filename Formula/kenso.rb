# kenso 0.1.218, written by the Kenso CLI release. Each release replaces this file: do not edit it by hand.
class Kenso < Formula
  desc "Bulk lead, CRM and Studio work for people and coding agents"
  homepage "https://ken.so/cli"
  version "0.1.218"
  license "MIT"

  on_macos do
    on_arm do
      url "https://downloads.ken.so/desktop/cli/0.1.218/kenso-0.1.218-darwin-arm64.tar.gz"
      sha256 "9b62f092af6c3a1418af7b2eae2db406592947b2c034ca33779b04610dd558db"
    end
    on_intel do
      url "https://downloads.ken.so/desktop/cli/0.1.218/kenso-0.1.218-darwin-x64.tar.gz"
      sha256 "3feec3eff09404dec5717976c5b46ce312a3d550eb99ef5a79bf907095cdf09d"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.ken.so/desktop/cli/0.1.218/kenso-0.1.218-linux-arm64.tar.gz"
      sha256 "f07b9b95c45da9273dcd4d9d018c7225c67766426e012de117335ed07200efb8"
    end
    on_intel do
      url "https://downloads.ken.so/desktop/cli/0.1.218/kenso-0.1.218-linux-x64.tar.gz"
      sha256 "17b55ae18c82a4c831aa2a564d7ef5cf3c139c0275e9e9e02c46fd93bb607a14"
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
