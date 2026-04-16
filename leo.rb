class Leo < Formula
  desc "Programming language"
  homepage "https://github.com/micapolos/micascheme/tree/main/leo"
  url "https://github.com/micapolos/micascheme/releases/download/v0.1.106/leo-tarm64osx-v0.1.106.tar.gz"
  sha256 "9a5671b0c6d5aa654742d75f4577aa9c72ce548de38a2e09ca28f87b81a35d06"

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
