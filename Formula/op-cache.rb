class OpCache < Formula
  desc "Fast cache for 1Password CLI reads"
  homepage "https://github.com/simlans/op-cache"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/simlans/op-cache/releases/download/v0.2.0/op-cache-aarch64-apple-darwin.tar.gz"
      sha256 "4c61d81cf5ab076dc75738aa629cff15341f9f0ea2d931538bc8bc09c92460c7"
    else
      url "https://github.com/simlans/op-cache/releases/download/v0.2.0/op-cache-x86_64-apple-darwin.tar.gz"
      sha256 "afcac0ad998e7efdae466b29ec5f27d8325bf583370e126fd88931fbd01995b2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/simlans/op-cache/releases/download/v0.2.0/op-cache-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "80766c0b98a2b611647f37222d5d0469307c295f18351e3d918dd7fc0dc87e96"
    else
      url "https://github.com/simlans/op-cache/releases/download/v0.2.0/op-cache-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2e77865a9dd54e3d894dfa9b4634e7b1099adfaaef331a51b670d8cbab659810"
    end
  end

  def install
    bin.install "op-cache"
  end
end
