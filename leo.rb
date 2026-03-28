class Leo < Formula
  desc "Programming language"
  homepage "https://github.com/micapolos/micascheme/tree/main/leo"
  url "https://github.com/micapolos/micascheme/releases/download/v0.1.43/leo-tarm64osx-v0.1.43.tar.gz"
  sha256 "e767fd5a3240b1bdb6c5228ee60d8e2daf6a24148767e42d1e78853219dd69bf"

  def install
    libexec.install "bin", "lib"
    pkgshare.install "examples"
    man1.install "man/leo.1"
    bin.write_exec_script (libexec/"bin/leo")
  end

  test do
    system "#{bin}/leo"
  end
end
