class Leo < Formula
  desc "Programming language"
  homepage "https://github.com/micapolos/micascheme"
  url "https://github.com/micapolos/micascheme/releases/download/v0.1.3/leo-tarm64osx-v0.1.3.tar.gz"
  sha256 "d0df26debf394bd829049446bab4480fa170e7e3468542a663a023cffa7045cb"

  def install
    libexec.install "bin", "lib", "examples"
    bin.install_symlink libexec/"bin/leo"
  end

  test do
    assert_path_exists prefix/"bin"
    assert_path_exists prefix/"lib"
    assert_path_exists prefix/"examples"

    system "#{bin}/leo"
  end
end
