class Leo < Formula
  desc "Programming language"
  homepage "https://github.com/micapolos/micascheme"
  url "https://github.com/micapolos/micascheme/releases/download/v0.1.30/leo-tarm64osx-v0.1.30.tar.gz"
  sha256 "b4bf33c2e8969392ddaf879c13e8dfa35926a2e3ff5a5d7482df5ada10c8b683"

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
