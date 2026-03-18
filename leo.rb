class Leo < Formula
  desc "Programming language"
  homepage "https://github.com/micapolos/micascheme"
  url "https://github.com/micapolos/micascheme/releases/download/v0.1.11/leo-tarm64osx-v0.1.11.tar.gz"
  sha256 "9b85b5ca0ef956b4a1978860125c79d1c281ffb99c0c99d4022bf87bf6cb8da1"

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
