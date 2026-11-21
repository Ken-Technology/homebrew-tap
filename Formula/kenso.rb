# kenso 0.1.154, written by the Kenso CLI release. Each release replaces this file: do not edit it by hand.
class Kenso < Formula
  desc "Bulk lead, CRM and Studio work for people and coding agents"
  homepage "https://ken.so/cli"
  version "0.1.154"
  license "MIT"

  on_macos do
    on_arm do
      url "https://downloads.ken.so/desktop/cli/0.1.154/kenso-0.1.154-darwin-arm64.tar.gz"
      sha256 "a3b48ecee42ccca96bae3a32c141d392e8597b4ab7838c2ca763839804162dce"
    end
    on_intel do
      url "https://downloads.ken.so/desktop/cli/0.1.154/kenso-0.1.154-darwin-x64.tar.gz"
      sha256 "4b2acf7b7bde07a321fae623ebc89125ffb5d1b6ec17b8bfd74165a688db8719"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.ken.so/desktop/cli/0.1.154/kenso-0.1.154-linux-arm64.tar.gz"
      sha256 "a4754a5d97be3bb385008ce6723e49113ead587329a584ef5bce693f32edcbeb"
    end
    on_intel do
      url "https://downloads.ken.so/desktop/cli/0.1.154/kenso-0.1.154-linux-x64.tar.gz"
      sha256 "ff29302b91191800b449ebafe64023bf4199fe681444777ab6c40f9fccf08283"
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
