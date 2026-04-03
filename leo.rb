class Leo < Formula
  desc "Programming language"
  homepage "https://github.com/micapolos/micascheme/tree/main/leo"
  url "https://github.com/micapolos/micascheme/releases/download/v0.1.62/leo-tarm64osx-v0.1.62.tar.gz"
  sha256 "a0e16c1aa1812df0f5bf05d5dafb723aec24c9971f0801680bdc2a7ee8d36342"

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
