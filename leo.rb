class Leo < Formula
  desc "Programming language"
  homepage "https://github.com/micapolos/micascheme/tree/main/leo"
  url "https://github.com/micapolos/micascheme/releases/download/v0.1.83/leo-tarm64osx-v0.1.83.tar.gz"
  sha256 "cce2d98a9dc49020d11fa3ce5e78102762e49a2ce0896a578998b7c0066cdb07"

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
