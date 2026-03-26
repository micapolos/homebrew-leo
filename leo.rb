class Leo < Formula
  desc "Programming language"
  homepage "https://github.com/micapolos/micascheme/tree/main/leo"
  url "https://github.com/micapolos/micascheme/releases/download/v0.1.35/leo-tarm64osx-v0.1.35.tar.gz"
  sha256 "b3edb4270f2a7a70a5864d4e0748dde11040b446a0b3c89f088b3f5f52b2f58c"

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
