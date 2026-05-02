class Leo < Formula
  desc "Programming language"
  homepage "https://github.com/micapolos/micascheme/tree/main/leo"
  url "https://github.com/micapolos/micascheme/releases/download/v0.1.121/leo-tarm64osx-v0.1.121.tar.gz"
  sha256 "513a5bf2bd6ddc809e051f8323bcfc8b5d90f2393f258924cf3340c100f636f7"

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
