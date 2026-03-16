class Leo < Formula
  desc "Programming language"
  homepage "https://github.com/micapolos/micascheme"
  url "https://github.com/micapolos/micascheme/releases/download/v0.1.4/leo-tarm64osx-v0.1.4.tar.gz"
  sha256 "da8c75becea134f71e121e2c3d927fe94dd6f4110d7713356ac7f4a1feb441de"

  def install
    libexec.install "bin", "lib", "examples"
    (bin/"leo").write_exec_script (libexec/"bin/leo")
  end

  test do
    system "#{bin}/leo"
  end
end
