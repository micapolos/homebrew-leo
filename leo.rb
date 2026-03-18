class Leo < Formula
  desc "Programming language"
  homepage "https://github.com/micapolos/micascheme"
  url "https://github.com/micapolos/micascheme/releases/download/v0.1.14/leo-tarm64osx-v0.1.14.tar.gz"
  sha256 "7bace66231ab2ef9e400a35c71d19b7374094bf568d14dfe9b07d167b89f7796"

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
