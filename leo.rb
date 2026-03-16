class Leo < Formula
  desc "Programming language"
  homepage "https://github.com/micapolos/micascheme"
  url "https://github.com/micapolos/micascheme/releases/download/v0.1.4/leo-tarm64osx-v0.1.4.tar.gz"
  sha256 "sha256:da8c75becea134f71e121e2c3d927fe94dd6f4110d7713356ac7f4a1feb441de"

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
