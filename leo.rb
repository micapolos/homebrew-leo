class Leo < Formula
  desc "Programming language"
  homepage "https://github.com/micapolos/micascheme/tree/main/leo"
  url "https://github.com/micapolos/micascheme/releases/download/v0.1.59/leo-tarm64osx-v0.1.59.tar.gz"
  sha256 "6e2c139ce0a4966ba71cd6d343945f4e95069e56d0195c0e6a4a3520369b2e70"

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
