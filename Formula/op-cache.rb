class OpCache < Formula
  desc "Fast cache for 1Password CLI reads"
  homepage "https://github.com/simlans/direnv-libs"
  version "2.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/simlans/direnv-libs/releases/download/v2.0.0/op-cache-aarch64-apple-darwin.tar.gz"
      sha256 "347def849bb03a24b3b2f2dc082aa03bcfdb7cce4ce88206a90640e267407ee0"
    else
      url "https://github.com/simlans/direnv-libs/releases/download/v2.0.0/op-cache-x86_64-apple-darwin.tar.gz"
      sha256 "9d906f8dfe2eec700feae8e8c7cc695f306dc10a3aa94e1b0d482697d8ca2c5e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/simlans/direnv-libs/releases/download/v2.0.0/op-cache-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9c9d8d7d395c1be5b7b6e1be9602f3076cdbe1bfd3b8c5e4698c5477be5af378"
    else
      url "https://github.com/simlans/direnv-libs/releases/download/v2.0.0/op-cache-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4feb03a4dd9e43ca6e2581cdc5b32598948a7b12373b27f0c342106ad2417bf4"
    end
  end

  def install
    bin.install "op-cache"
  end
end
