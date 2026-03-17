class Leo < Formula
  desc "Programming language"
  homepage "https://github.com/micapolos/micascheme"
  url "https://github.com/micapolos/micascheme/releases/download/v0.1.5/leo-tarm64osx-v0.1.5.tar.gz"
  sha256 "c860ef3dc80769c0511a5a7ba955ba852c2fbfc938f73e3be2c88acacc684b61"

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
