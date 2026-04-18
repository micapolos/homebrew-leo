class Leo < Formula
  desc "Programming language"
  homepage "https://github.com/micapolos/micascheme/tree/main/leo"
  url "https://github.com/micapolos/micascheme/releases/download/v0.1.114/leo-tarm64osx-v0.1.114.tar.gz"
  sha256 "6edebab48fcd5aa4ed785e9b63b07043450f17a977fbd1842bfcd6ad90e4d177"

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
