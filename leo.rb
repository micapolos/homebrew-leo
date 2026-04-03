class Leo < Formula
  desc "Programming language"
  homepage "https://github.com/micapolos/micascheme/tree/main/leo"
  url "https://github.com/micapolos/micascheme/releases/download/v0.1.65/leo-tarm64osx-v0.1.65.tar.gz"
  sha256 "cfb168fac98d2ec5cee91abfa0b9e0c95897c44c9e4af3d3dbe80c80c40072fb"

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
