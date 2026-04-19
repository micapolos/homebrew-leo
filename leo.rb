class Leo < Formula
  desc "Programming language"
  homepage "https://github.com/micapolos/micascheme/tree/main/leo"
  url "https://github.com/micapolos/micascheme/releases/download/v0.1.116/leo-tarm64osx-v0.1.116.tar.gz"
  sha256 "b4dc7c5eed316ff0c5a5f8e77f95da663f6c00c4a6dbdce1c0e5e05828871522"

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
