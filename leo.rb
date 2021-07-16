class Leo < Formula
  desc "Leo programming language"
  homepage "https://github.com/micapolos/leo-script"
  url "https://github.com/micapolos/leo-script/releases/download/v0.25.18/leo.zip"
  sha256 "a3fa87efaa26c01775fd7f8c61e9c6c58aa224ab87267661da4858702393b696"

  depends_on "openjdk"

  def install
    prefix.install "lib"    
    bin.install "bin/leo" => "leo"
  end
end