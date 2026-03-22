class Leo < Formula
  desc "Programming language"
  homepage "https://github.com/micapolos/micascheme"
  url "https://github.com/micapolos/micascheme/releases/download/v0.1.27/leo-tarm64osx-v0.1.27.tar.gz"
  sha256 "24fb3d7b692c02adb7d4a1026b360ea5cc12466d09ad12bedf31af7ea01bbb59"

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
