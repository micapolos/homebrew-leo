class Leo < Formula
  desc "Programming language"
  homepage "https://github.com/micapolos/micascheme"
  url "https://github.com/micapolos/micascheme/releases/download/v0.1.24/leo-tarm64osx-v0.1.24.tar.gz"
  sha256 "36d22b7e614aa816a36e74849a9b1e810c2ebf14cf20acc6d95caad6db4bd5ea"

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
