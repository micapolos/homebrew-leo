class Leo < Formula
  desc "Programming language"
  homepage "https://github.com/micapolos/micascheme"
  url "https://github.com/micapolos/micascheme/releases/download/v0.1.28/leo-tarm64osx-v0.1.28.tar.gz"
  sha256 "16c0bec208ca5a87de61f187cb6dd70819e8a8d6a8e93e68b26322c6baa95a8f"

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
