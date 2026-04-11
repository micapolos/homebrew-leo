class Leo < Formula
  desc "Programming language"
  homepage "https://github.com/micapolos/micascheme/tree/main/leo"
  url "https://github.com/micapolos/micascheme/releases/download/v0.1.87/leo-tarm64osx-v0.1.87.tar.gz"
  sha256 "a2fa5c6b5a0e08291c03c9a664bb4d5bceb1c7fb44fe1c27654b503ef379130d"

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
