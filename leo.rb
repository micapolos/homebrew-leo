class Leo < Formula
  desc "Programming language"
  homepage "https://github.com/micapolos/micascheme"
  url "https://github.com/micapolos/micascheme/releases/download/v0.1.1/leo-tarm64osx-v0.1.1.tar.gz"
  sha256 "880f8f45ce82788e8bd2d88787ea5b2f884adc551cbeb3f363a702c67b2e698d"

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
