# kenso 0.1.131, written by the Kenso CLI release. Each release replaces this file: do not edit it by hand.
class Kenso < Formula
  desc "Bulk lead, CRM and Studio work for people and coding agents"
  homepage "https://ken.so/cli"
  version "0.1.131"
  license "MIT"

  on_macos do
    on_arm do
      url "https://downloads.ken.so/desktop/cli/0.1.131/kenso-0.1.131-darwin-arm64.tar.gz"
      sha256 "f8e93a1e4eb7d476b8019e14192d6e3b954ce74981ccd4baa50c91d6d9250e2c"
    end
    on_intel do
      url "https://downloads.ken.so/desktop/cli/0.1.131/kenso-0.1.131-darwin-x64.tar.gz"
      sha256 "9d76803433837aca44d1ed1db80f8de9f75d088b5942bbbe59bf0911e9cb2cec"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.ken.so/desktop/cli/0.1.131/kenso-0.1.131-linux-arm64.tar.gz"
      sha256 "584d984582ace6fd211325a896a45bbd16031ad5a40d3a63f915f5854a5df113"
    end
    on_intel do
      url "https://downloads.ken.so/desktop/cli/0.1.131/kenso-0.1.131-linux-x64.tar.gz"
      sha256 "44343347fc57ef1e180d75cd6e76eb5bc9de0025ad970f7a15531e36379d50d6"
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
