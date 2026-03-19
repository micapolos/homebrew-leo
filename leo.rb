class Leo < Formula
  desc "Programming language"
  homepage "https://github.com/micapolos/micascheme"
  url "https://github.com/micapolos/micascheme/releases/download/v0.1.16/leo-tarm64osx-v0.1.16.tar.gz"
  sha256 "cc2a85852b4d51457c6c1ba9df6585d83755c4aebcaa460d521b42f755716d90"

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
