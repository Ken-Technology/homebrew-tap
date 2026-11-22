# kenso 0.1.164, written by the Kenso CLI release. Each release replaces this file: do not edit it by hand.
class Kenso < Formula
  desc "Bulk lead, CRM and Studio work for people and coding agents"
  homepage "https://ken.so/cli"
  version "0.1.164"
  license "MIT"

  on_macos do
    on_arm do
      url "https://downloads.ken.so/desktop/cli/0.1.164/kenso-0.1.164-darwin-arm64.tar.gz"
      sha256 "7d55bd5c05f65c8479483d694957d6f1f852cd3d39ba201bd5fe6bee1bf742e3"
    end
    on_intel do
      url "https://downloads.ken.so/desktop/cli/0.1.164/kenso-0.1.164-darwin-x64.tar.gz"
      sha256 "775c7c966d8e66f01ac927c65d2bdfe750b0ac2ea05b12c3396975df3b368f78"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.ken.so/desktop/cli/0.1.164/kenso-0.1.164-linux-arm64.tar.gz"
      sha256 "705a3c4c4465da5564493283d1439ee1e70f77bfdb898fbe369037066ad461ad"
    end
    on_intel do
      url "https://downloads.ken.so/desktop/cli/0.1.164/kenso-0.1.164-linux-x64.tar.gz"
      sha256 "55a52364142cf57030982cea4a3550487b88ef7e306d28c9399f60615cf0d0fa"
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
