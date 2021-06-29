class Leo < Formula
  desc "Leo programming language"
  homepage "https://github.com/micapolos/leo-script"
  url "https://github.com/micapolos/leo-script/releases/download/v0.25.8/leo.zip"
  sha256 "edc2cd1d22c8c32e592f48985cbf01e0243a5a8becd333ea130709a4b6b5794c"

  depends_on "openjdk"

  def install
    prefix.install "lib"    
    bin.install "bin/leo" => "leo"
  end
end