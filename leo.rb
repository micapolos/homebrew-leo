class Leo < Formula
  desc "Programming language"
  homepage "https://github.com/micapolos/micascheme/tree/main/leo"
  url "https://github.com/micapolos/micascheme/releases/download/v0.1.41/leo-tarm64osx-v0.1.41.tar.gz"
  sha256 "c45fa1fea3224be76536e60cf0b82ac15f0b6832e5af148ddaf3c8eb5502b465"

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
