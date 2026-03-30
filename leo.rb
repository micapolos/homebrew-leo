class Leo < Formula
  desc "Programming language"
  homepage "https://github.com/micapolos/micascheme/tree/main/leo"
  url "https://github.com/micapolos/micascheme/releases/download/v0.1.50/leo-tarm64osx-v0.1.50.tar.gz"
  sha256 "97a3bbf7c9ed71ea90e314a6484a10e47fbe55ca6afa4801fa6ba9f8ff1fcb19"

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
