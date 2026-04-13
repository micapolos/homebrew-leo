class Leo < Formula
  desc "Programming language"
  homepage "https://github.com/micapolos/micascheme/tree/main/leo"
  url "https://github.com/micapolos/micascheme/releases/download/v0.1.94/leo-tarm64osx-v0.1.94.tar.gz"
  sha256 "1cbae0689ce08c8a4ac9f0986dba2075ba88fa126170c81ae8d6de95c7e1cef9"

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
