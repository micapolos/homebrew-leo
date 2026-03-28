class Leo < Formula
  desc "Programming language"
  homepage "https://github.com/micapolos/micascheme/tree/main/leo"
  url "https://github.com/micapolos/micascheme/releases/download/v0.1.44/leo-tarm64osx-v0.1.44.tar.gz"
  sha256 "442b793d5f9a1f915806a0166cef3352ad8d67ce4c1ee4f2bf110a7b3b3b2acf"

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
