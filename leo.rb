class Leo < Formula
  desc "Programming language"
  homepage "https://github.com/micapolos/micascheme"
  url "https://github.com/micapolos/micascheme/releases/download/v0.1.9/leo-tarm64osx-v0.1.9.tar.gz"
  sha256 "0e82b450c7a984395ae1a4bce21837f593f9e68f3587e001fe83fbb25f2a88a2"

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
