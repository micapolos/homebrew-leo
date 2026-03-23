class Leo < Formula
  desc "Programming language"
  homepage "https://github.com/micapolos/micascheme"
  url "https://github.com/micapolos/micascheme/releases/download/v0.1.31/leo-tarm64osx-v0.1.31.tar.gz"
  sha256 "1e471b613d2b665f5f01bd141e92dc4d023156acbe5d637b0c0c26b2c2a0586f"

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
