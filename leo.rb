class Leo < Formula
  desc "Programming language"
  homepage "https://github.com/micapolos/micascheme"
  url "https://github.com/micapolos/micascheme/releases/download/v0.1.3/leo-tarm64osx-v0.1.3.tar.gz"
  sha256 "0fecd8b6c8df145b6f0e12cfc5e265607297cb56413bdc857e6e6a3c9b91b97a"

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
