class Leo < Formula
  desc "Programming language"
  homepage "https://github.com/micapolos/micascheme/tree/main/leo"
  url "https://github.com/micapolos/micascheme/releases/download/v0.1.53/leo-tarm64osx-v0.1.53.tar.gz"
  sha256 "fe33d6cf1c479bba02ea333a843ec27e9da78ca3548f8d00a3fb731821b9e8cf"

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
