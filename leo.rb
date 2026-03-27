class Leo < Formula
  desc "Programming language"
  homepage "https://github.com/micapolos/micascheme/tree/main/leo"
  url "https://github.com/micapolos/micascheme/releases/download/v0.1.39/leo-tarm64osx-v0.1.39.tar.gz"
  sha256 "ab822e7602aafab0ea77ab5c54c3cb3f73b57443e6042a8bc4afdda87cd96b1d"

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
