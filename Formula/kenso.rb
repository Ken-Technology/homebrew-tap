# kenso 0.1.67, written by the Kenso CLI release. Each release replaces this file: do not edit it by hand.
class Kenso < Formula
  desc "Bulk lead, CRM and Studio work for people and coding agents"
  homepage "https://ken.so/cli"
  version "0.1.67"
  license "MIT"

  on_macos do
    on_arm do
      url "https://downloads.ken.so/desktop/cli/0.1.67/kenso-0.1.67-darwin-arm64.tar.gz"
      sha256 "712ca2840dd674d4012587d2915b7ab83f95000e751b171fc0521747d553a733"
    end
    on_intel do
      url "https://downloads.ken.so/desktop/cli/0.1.67/kenso-0.1.67-darwin-x64.tar.gz"
      sha256 "5e79b704399675a2c6ab432bb2fe44a2f32aea879417d97d7f51105b6d8d17de"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.ken.so/desktop/cli/0.1.67/kenso-0.1.67-linux-arm64.tar.gz"
      sha256 "5c8630f7edd49ed534c6e97100b1ca7b72f824a5283345e5c0aef455b0c5e394"
    end
    on_intel do
      url "https://downloads.ken.so/desktop/cli/0.1.67/kenso-0.1.67-linux-x64.tar.gz"
      sha256 "212fe1464f33b35001da96dfe28272d6c72b549d11cb3bc4aba599e6c7e7076d"
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
