class Leo < Formula
  desc "Programming language"
  homepage "https://github.com/micapolos/micascheme/tree/main/leo"
  url "https://github.com/micapolos/micascheme/releases/download/v0.1.78/leo-tarm64osx-v0.1.78.tar.gz"
  sha256 "f9ed9aa5258b37c8e2f4af34ccf840acaf324b845999aa849c26f1c742af0383"

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
