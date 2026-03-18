class Leo < Formula
  desc "Programming language"
  homepage "https://github.com/micapolos/micascheme"
  url "https://github.com/micapolos/micascheme/releases/download/v0.1.12/leo-tarm64osx-v0.1.12.tar.gz"
  sha256 "41e089f9e2b597272cdd923e4362fe15e72384025435895a3f9ef8aab35e293a"

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
