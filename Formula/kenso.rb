# kenso 0.1.199, written by the Kenso CLI release. Each release replaces this file: do not edit it by hand.
class Kenso < Formula
  desc "Bulk lead, CRM and Studio work for people and coding agents"
  homepage "https://ken.so/cli"
  version "0.1.199"
  license "MIT"

  on_macos do
    on_arm do
      url "https://downloads.ken.so/desktop/cli/0.1.199/kenso-0.1.199-darwin-arm64.tar.gz"
      sha256 "0afcd89b0469208c3150d7659a333538547dfe3a4c5b232e23301b62447b1975"
    end
    on_intel do
      url "https://downloads.ken.so/desktop/cli/0.1.199/kenso-0.1.199-darwin-x64.tar.gz"
      sha256 "b48b1ce54a8a50b0647fc1b2aba30747a6c28bb0845aac9e0c2caaca6f42f92f"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.ken.so/desktop/cli/0.1.199/kenso-0.1.199-linux-arm64.tar.gz"
      sha256 "9b1450364e1cd9ad3d51f93f8ef9df616c431c98194583793ce72564590e5238"
    end
    on_intel do
      url "https://downloads.ken.so/desktop/cli/0.1.199/kenso-0.1.199-linux-x64.tar.gz"
      sha256 "8f214ed8533d7e0ca4ec69ae1b29059209bd429901a1507c5e9521bac74da70f"
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
