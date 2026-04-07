class Leo < Formula
  desc "Programming language"
  homepage "https://github.com/micapolos/micascheme/tree/main/leo"
  url "https://github.com/micapolos/micascheme/releases/download/v0.1.80/leo-tarm64osx-v0.1.80.tar.gz"
  sha256 "c5cba1774954c539c447f9cd5c4fcdd83d54d46ab2ba88caadd9417d708c3bfa"

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
