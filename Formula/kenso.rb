# kenso 0.1.105, written by the Kenso CLI release. Each release replaces this file: do not edit it by hand.
class Kenso < Formula
  desc "Bulk lead, CRM and Studio work for people and coding agents"
  homepage "https://ken.so/cli"
  version "0.1.105"
  license "MIT"

  on_macos do
    on_arm do
      url "https://downloads.ken.so/desktop/cli/0.1.105/kenso-0.1.105-darwin-arm64.tar.gz"
      sha256 "17d9a8ebc51ceb7abf7e4d8c5e6102b6caa0e67b15961e95498eb3dd52ac207e"
    end
    on_intel do
      url "https://downloads.ken.so/desktop/cli/0.1.105/kenso-0.1.105-darwin-x64.tar.gz"
      sha256 "141b92d4d417679bcd2afe106841cf9b9d95e4ae9ce8c74d13df963d557b9f38"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.ken.so/desktop/cli/0.1.105/kenso-0.1.105-linux-arm64.tar.gz"
      sha256 "1cdca13734318088dcffeaa3e0ae2175c37b9b4131fcff23621e5aaaf025773c"
    end
    on_intel do
      url "https://downloads.ken.so/desktop/cli/0.1.105/kenso-0.1.105-linux-x64.tar.gz"
      sha256 "e49c62eda53a3b566cabd7f8709267b693bfb8671e8c4d1e7f78dd8aca6af5bb"
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
