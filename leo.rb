class Leo < Formula
  desc "Programming language"
  homepage "https://github.com/micapolos/micascheme/tree/main/leo"
  url "https://github.com/micapolos/micascheme/releases/download/v0.1.54/leo-tarm64osx-v0.1.54.tar.gz"
  sha256 "88a3b7a7f0e2bd1a3f729c527f866641c295b6e742998625e1229e54f87d1ab0"

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
