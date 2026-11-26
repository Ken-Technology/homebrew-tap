# kenso 0.1.204, written by the Kenso CLI release. Each release replaces this file: do not edit it by hand.
class Kenso < Formula
  desc "Bulk lead, CRM and Studio work for people and coding agents"
  homepage "https://ken.so/cli"
  version "0.1.204"
  license "MIT"

  on_macos do
    on_arm do
      url "https://downloads.ken.so/desktop/cli/0.1.204/kenso-0.1.204-darwin-arm64.tar.gz"
      sha256 "572fb27d384c25b93d88ef4541f4cef66f6ad1d494028d17a57972575376ab31"
    end
    on_intel do
      url "https://downloads.ken.so/desktop/cli/0.1.204/kenso-0.1.204-darwin-x64.tar.gz"
      sha256 "f3047c7ed0cb7d4227729cf5f0ff39397627d2b7a11b820746863fccdfbab715"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.ken.so/desktop/cli/0.1.204/kenso-0.1.204-linux-arm64.tar.gz"
      sha256 "ff9ed5d7ba29312422c9f0c37b34484e1eec309b8a09ab5cf32031cb384f1d88"
    end
    on_intel do
      url "https://downloads.ken.so/desktop/cli/0.1.204/kenso-0.1.204-linux-x64.tar.gz"
      sha256 "d316946c92c15c059c7f9b3f31062bcd07f22fe38abc798f43edd30fe4bf7ab3"
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
