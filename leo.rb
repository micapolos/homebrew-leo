class Leo < Formula
  desc "Programming language"
  homepage "https://github.com/micapolos/micascheme"
  url "https://github.com/micapolos/micascheme/releases/download/v0.1.15/leo-tarm64osx-v0.1.15.tar.gz"
  sha256 "7a48eec078d8ae29754837084a70e878f57c15f866ef91d2a7687204c91adb4d"

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
