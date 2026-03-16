class Leo < Formula
  desc "Programming language"
  homepage "https://github.com/micapolos/micascheme"
  url "https://github.com/micapolos/micascheme/releases/download/v0.1.3/leo-tarm64osx-v0.1.3.tar.gz"
  sha256 "d0df26debf394bd829049446bab4480fa170e7e3468542a663a023cffa7045cb"

  def install
    libexec.install "bin", "lib", "examples"
    (bin/"leo").write_exec_script (libexec/"bin/leo")
  end

  test do
    system "#{bin}/leo"
  end
end
