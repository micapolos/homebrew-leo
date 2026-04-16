class Leo < Formula
  desc "Programming language"
  homepage "https://github.com/micapolos/micascheme/tree/main/leo"
  url "https://github.com/micapolos/micascheme/releases/download/v0.1.104/leo-tarm64osx-v0.1.104.tar.gz"
  sha256 "689f2835d6ab1870768992a748c0a63f1baccc1aab3fd4e0e8c31f3537aaf115"

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
