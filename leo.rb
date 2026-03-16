class Leo < Formula
  desc "Programming language"
  homepage "https://github.com/micapolos/micascheme"
  url "https://github.com/micapolos/micascheme/releases/download/v0.1.0/leo-tarm64osx-v0.1.0.tar.gz"
  sha256 "7b925a0c4d06ed4f8ff4f11d8ace6d029c9b3d3fa6c03ed3aaa2925e9cfbc34a"

  def install
    libexec.install "bin", "lib", "examples"
    (bin/"leo").write_exec_script (libexec/"bin/leo")
    bin.install_symlink libexec/"bin/leo" => "leo"
  end

  def post_install
    chmod 0755, bin/"leo"
  end

  test do
    system "#{bin}/leo"
  end
end
