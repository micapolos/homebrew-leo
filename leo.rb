class Leo < Formula
  desc "Programming language"
  homepage "https://github.com/micapolos/micascheme/tree/main/leo"
  url "https://github.com/micapolos/micascheme/releases/download/v0.1.56/leo-tarm64osx-v0.1.56.tar.gz"
  sha256 "b739927639755fc2ed8a94ed2cf7b8623469ec8b8ef5c7199f8735b6313da3e6"

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
