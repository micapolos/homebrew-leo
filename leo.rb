class Leo < Formula
  desc "Leo programming language"
  homepage "https://github.com/micapolos/leo-script"
  url "https://github.com/micapolos/leo-script/releases/download/v0.25.23/leo.zip"
  sha256 "468e01e0563d31209e45b367adca07c12e6a161d3de04e77aca5d45ee80263f3"

  depends_on "openjdk"

  def install
    prefix.install "lib"    
    bin.install "bin/leo" => "leo"
  end
end