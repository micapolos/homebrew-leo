class Leo < Formula
  desc "Programming language"
  homepage "https://github.com/micapolos/micascheme"
  url "https://github.com/micapolos/micascheme/releases/download/v0.1.26/leo-tarm64osx-v0.1.26.tar.gz"
  sha256 "a13394745d8ac2f012d43c3753d504f863aa62c8d7eba03d4d7dc617d037de81"

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
