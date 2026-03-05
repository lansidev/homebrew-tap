class OpCache < Formula
  desc "Fast cache for 1Password CLI reads"
  homepage "https://github.com/simlans/direnv-libs"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/simlans/direnv-libs/releases/download/v1.1.0/op-cache-aarch64-apple-darwin.tar.gz"
      sha256 "8e33dda54a186e8b3713d3b5f6de60d594a0a60e2b912d051da534f785eb39a1"
    else
      url "https://github.com/simlans/direnv-libs/releases/download/v1.1.0/op-cache-x86_64-apple-darwin.tar.gz"
      sha256 "4b7c64d4c186861f0ae45eebed87542e0d5eadc8fca5499f4f82f49e0bed6fb7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/simlans/direnv-libs/releases/download/v1.1.0/op-cache-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2dbbc1fd11d54194d6fe2505515342a0943ad60b490ab0a3cb09c68562a14af6"
    else
      url "https://github.com/simlans/direnv-libs/releases/download/v1.1.0/op-cache-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3a320c5d9e2492c40734975cf23922d28d7ac86810a354093667eb9174c11b76"
    end
  end

  def install
    bin.install "op-cache"
  end
end
