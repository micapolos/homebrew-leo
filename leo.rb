class Leo < Formula
  desc "Programming language"
  homepage "https://github.com/micapolos/micascheme/tree/main/leo"
  url "https://github.com/micapolos/micascheme/releases/download/v0.1.123/leo-tarm64osx-v0.1.123.tar.gz"
  sha256 "df07e5e1987aa1ef0d4b6a9c830b4e382d7476668e6791b25d7f697bf38523fa"

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
