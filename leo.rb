class Leo < Formula
  desc "Programming language"
  homepage "https://github.com/micapolos/micascheme/tree/main/leo"
  url "https://github.com/micapolos/micascheme/releases/download/v0.1.72/leo-tarm64osx-v0.1.72.tar.gz"
  sha256 "df6889c7a5bbd250a3e077ff5787aaeeb3c3c1ff37960da1791acdcff6b60cec"

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
