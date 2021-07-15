class Leo < Formula
  desc "Leo programming language"
  homepage "https://github.com/micapolos/leo-script"
  url "https://github.com/micapolos/leo-script/releases/download/v0.25.17/leo.zip"
  sha256 "19cee7806bbdc98d2e78e75890039dde086b8ebf306728a1650b097f20b5dd04"

  depends_on "openjdk"

  def install
    prefix.install "lib"    
    bin.install "bin/leo" => "leo"
  end
end