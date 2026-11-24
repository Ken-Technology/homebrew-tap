# kenso 0.1.191, written by the Kenso CLI release. Each release replaces this file: do not edit it by hand.
class Kenso < Formula
  desc "Bulk lead, CRM and Studio work for people and coding agents"
  homepage "https://ken.so/cli"
  version "0.1.191"
  license "MIT"

  on_macos do
    on_arm do
      url "https://downloads.ken.so/desktop/cli/0.1.191/kenso-0.1.191-darwin-arm64.tar.gz"
      sha256 "c3b0a02a0b0de7dde6f51887878d024c64d07f163e415f28e23d56f99d225c72"
    end
    on_intel do
      url "https://downloads.ken.so/desktop/cli/0.1.191/kenso-0.1.191-darwin-x64.tar.gz"
      sha256 "fdee75e3e23c9db9616a5265a0f7c9bc14d87170123593bea6daf30a4d473f9a"
    end
  end

  on_linux do
    on_arm do
      url "https://downloads.ken.so/desktop/cli/0.1.191/kenso-0.1.191-linux-arm64.tar.gz"
      sha256 "fb3f830a2ce7b33a34f186617af99dbfb0c76f84e1cc0cd7882f25a0b40ddbe0"
    end
    on_intel do
      url "https://downloads.ken.so/desktop/cli/0.1.191/kenso-0.1.191-linux-x64.tar.gz"
      sha256 "734f2ed341e63ef0f621a3c84bac2e2144f7502f406d79d7b15c8506fe59e5a7"
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
