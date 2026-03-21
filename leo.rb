class Leo < Formula
  desc "Programming language"
  homepage "https://github.com/micapolos/micascheme"
  url "https://github.com/micapolos/micascheme/releases/download/v0.1.25/leo-tarm64osx-v0.1.25.tar.gz"
  sha256 "13a591c6fb4465551a8d0d6c07f5834399e33f778cbf478222610721ab7b6d58"

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
