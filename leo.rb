class Leo < Formula
  desc "Programming language"
  homepage "https://github.com/micapolos/micascheme"
  url "https://github.com/micapolos/micascheme/releases/download/v0.1.4/leo-tarm64osx-v0.1.4.tar.gz"
  sha256 "f982d2a6f551d639b6816cb61f0eaeb8049bcf91143d8ca6faa26208b783880b"

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
