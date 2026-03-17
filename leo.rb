class Leo < Formula
  desc "Programming language"
  homepage "https://github.com/micapolos/micascheme"
  url "https://github.com/micapolos/micascheme/releases/download/v0.1.2/leo-tarm64osx-v0.1.2.tar.gz"
  sha256 "9b0f969fcbb508b87a9169f1066ffd39df7120445899ad8d6d22662a26afbf0e"

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
