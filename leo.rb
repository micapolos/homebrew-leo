class Leo < Formula
  desc "Programming language"
  homepage "https://github.com/micapolos/micascheme"
  url "https://github.com/micapolos/micascheme/releases/download/v0.1.3/leo-tarm64osx-v0.1.3.tar.gz"
  sha256 "24099eb24511adada0b5c69b5c9e3a49b19d7f078e9c9b619dfc554c38ad63f1"

  def install
    bin.install "bin/leo"
    libexec.install "lib", "examples"
    inreplace bin/"leo", 'BASE_DIR="$LEO_DIR/.."', "BASE_DIR=\"#{libexec}\""
  end

  test do
    assert_path_exists prefix/"bin"
    assert_path_exists prefix/"lib"
    assert_path_exists prefix/"examples"

    system "#{bin}/leo"
  end
end
