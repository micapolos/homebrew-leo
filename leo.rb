class Leo < Formula
  desc "Programming language"
  homepage "https://github.com/micapolos/micascheme/tree/main/leo"
  url "https://github.com/micapolos/micascheme/releases/download/v0.1.112/leo-tarm64osx-v0.1.112.tar.gz"
  sha256 "6c2beb28e5b8e305cafaa1f4bf4ef1d2fe5e75cae7fa0f37ba600ca9f86eb103"

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
