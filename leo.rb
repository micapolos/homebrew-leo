class Leo < Formula
  desc "Programming language"
  homepage "https://github.com/micapolos/micascheme/tree/main/leo"
  url "https://github.com/micapolos/micascheme/releases/download/v0.1.89/leo-tarm64osx-v0.1.89.tar.gz"
  sha256 "1bebdd034c11540b88f8bfb45535e9c2b4a30b8925fe9860f20b69ea5f85aac4"

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
