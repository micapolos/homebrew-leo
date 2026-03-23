class Leo < Formula
  desc "Programming language"
  homepage "https://github.com/micapolos/micascheme"
  url "https://github.com/micapolos/micascheme/releases/download/v0.1.32/leo-tarm64osx-v0.1.32.tar.gz"
  sha256 "abd40ffbeeb9bfd27e381dfd7d534c552f3c0791387ac09470b384a62e06ada7"

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
