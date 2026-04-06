class Leo < Formula
  desc "Programming language"
  homepage "https://github.com/micapolos/micascheme/tree/main/leo"
  url "https://github.com/micapolos/micascheme/releases/download/v0.1.76/leo-tarm64osx-v0.1.76.tar.gz"
  sha256 "e0417acd8c6ab8ac901c78cb1a6c8d3616b834eae3fcc9022db3c1c6b7ee59f0"

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
