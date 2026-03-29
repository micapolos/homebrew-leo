class Leo < Formula
  desc "Programming language"
  homepage "https://github.com/micapolos/micascheme/tree/main/leo"
  url "https://github.com/micapolos/micascheme/releases/download/v0.1.45/leo-tarm64osx-v0.1.45.tar.gz"
  sha256 "a8b08817c39e52d63273fe8604ae1b1264c11ccee3451f3f80f96bdf47bc6250"

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
