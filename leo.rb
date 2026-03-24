class Leo < Formula
  desc "Programming language"
  homepage "https://github.com/micapolos/micascheme"
  url "https://github.com/micapolos/micascheme/releases/download/v0.1.33/leo-tarm64osx-v0.1.33.tar.gz"
  sha256 "f2b4e0ba07d3b0f54d2205c7d5748d759416da156bdec8f7e7427bdb140a29b3"

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
