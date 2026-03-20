class Leo < Formula
  desc "Programming language"
  homepage "https://github.com/micapolos/micascheme"
  url "https://github.com/micapolos/micascheme/releases/download/v0.1.20/leo-tarm64osx-v0.1.20.tar.gz"
  sha256 "62d6011bfae95942a3bc7df4b511f6ed481d7c6b1e4e179f84de9179390b9ce4"

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
