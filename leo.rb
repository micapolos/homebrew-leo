class Leo < Formula
  desc "Programming language"
  homepage "https://github.com/micapolos/micascheme/tree/main/leo"
  url "https://github.com/micapolos/micascheme/releases/download/v0.1.100/leo-tarm64osx-v0.1.100.tar.gz"
  sha256 "fa783ff535efd7d707989a640276fd2f946ed3e090f221fd7d3c4b42bb9c4a10"

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
