class Leo < Formula
  desc "Leo programming language"
  homepage "https://github.com/micapolos/leo-script"
  url "https://github.com/micapolos/leo-script/releases/download/v0.25.2/leo.zip"
  sha256 "3a54a6fed6fdd57133566af2537fd27860d9e20c1d6a777d381b7580a36a0ad9"

  depends_on "openjdk"

  def install
    prefix.install "lib"    
    bin.install "bin/leo" => "leo"
  end
end