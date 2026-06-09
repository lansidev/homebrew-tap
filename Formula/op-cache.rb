class OpCache < Formula
  desc "Fast cache for 1Password CLI reads"
  homepage "https://github.com/simlans/op-cache"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/simlans/op-cache/releases/download/v0.2.0/op-cache-aarch64-apple-darwin.tar.gz"
      sha256 "2eb404923fd011d78f4071dd9252ef678a9a030e743927bc2378ecc7e4146240"
    else
      url "https://github.com/simlans/op-cache/releases/download/v0.2.0/op-cache-x86_64-apple-darwin.tar.gz"
      sha256 "1d16ad66649958a49b09c379fe70c5f9b135d650cdda3eeebcac797ed68c2a03"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/simlans/op-cache/releases/download/v0.2.0/op-cache-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2623d4800dac1549874b16c757b4614e18210933a94dbbb970a906492565c72f"
    else
      url "https://github.com/simlans/op-cache/releases/download/v0.2.0/op-cache-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3eeb5a4d0f79da2076e2bfd613dd152c41c95e63de7f736d341fb6d470cacf4d"
    end
  end

  def install
    bin.install "op-cache"
  end
end
