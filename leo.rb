class Leo < Formula
  desc "Programming language"
  homepage "https://github.com/micapolos/micascheme/tree/main/leo"
  url "https://github.com/micapolos/micascheme/releases/download/v0.1.40/leo-tarm64osx-v0.1.40.tar.gz"
  sha256 "65c2b1da07b44db3805b5248434c3bef5f8fdb9aa1e85bc958f11ce7decb5bc1"

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
