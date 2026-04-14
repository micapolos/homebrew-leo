class Leo < Formula
  desc "Programming language"
  homepage "https://github.com/micapolos/micascheme/tree/main/leo"
  url "https://github.com/micapolos/micascheme/releases/download/v0.1.97/leo-tarm64osx-v0.1.97.tar.gz"
  sha256 "2658c574bb3539b0aa69654bbd12a1e0a65a51bbe3a67634c96b87187d7c432c"

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
