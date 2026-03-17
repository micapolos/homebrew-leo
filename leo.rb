class Leo < Formula
  desc "Programming language"
  homepage "https://github.com/micapolos/micascheme"
  url "https://github.com/micapolos/micascheme/releases/download/v0.1.6/leo-tarm64osx-v0.1.6.tar.gz"
  sha256 "3cf217b0cc8956db765a733172c1f121ec7077c0272e1c2afe06c6e5d4803871"

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
