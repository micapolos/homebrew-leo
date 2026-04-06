class Leo < Formula
  desc "Programming language"
  homepage "https://github.com/micapolos/micascheme/tree/main/leo"
  url "https://github.com/micapolos/micascheme/releases/download/v0.1.75/leo-tarm64osx-v0.1.75.tar.gz"
  sha256 "237515c3210f01ade65e24812ba77c0d90887fb8c250c38ae77a77f6d7bc5ecb"

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
