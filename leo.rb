class Leo < Formula
  desc "Programming language"
  homepage "https://github.com/micapolos/micascheme/tree/main/leo"
  url "https://github.com/micapolos/micascheme/releases/download/v0.1.105/leo-tarm64osx-v0.1.105.tar.gz"
  sha256 "4814e13a1c71b5464c98a5e31b1c7356cb5b6dba94fb58d207f7a6be28ffbd61"

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
