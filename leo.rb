class Leo < Formula
  desc "Programming language"
  homepage "https://github.com/micapolos/micascheme"
  url "https://github.com/micapolos/micascheme/releases/download/v0.1.10/leo-tarm64osx-v0.1.10.tar.gz"
  sha256 "59d9d78f05ca3ca3e73b6eaa4aa5cef29df720bad89344b564deb14695d45d5b"

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
