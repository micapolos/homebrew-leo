class Leo < Formula
  desc "Programming language"
  homepage "https://github.com/micapolos/micascheme"
  url "https://github.com/micapolos/micascheme/releases/download/v0.1.23/leo-tarm64osx-v0.1.23.tar.gz"
  sha256 "4e4e02bab23741418f6d498159d8cd8daa13b61ca8e69fc1060c5d6d20746952"

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
