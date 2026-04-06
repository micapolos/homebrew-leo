class Leo < Formula
  desc "Programming language"
  homepage "https://github.com/micapolos/micascheme/tree/main/leo"
  url "https://github.com/micapolos/micascheme/releases/download/v0.1.77/leo-tarm64osx-v0.1.77.tar.gz"
  sha256 "e9d8a128845797c5fdfac8956e73fbc8e788ba9fa52d8718b27e847bfd3b72a7"

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
