class Leo < Formula
  desc "Leo programming language"
  homepage "https://github.com/micapolos/leo-script"
  url "https://github.com/micapolos/leo-script/releases/download/v0.25.14/leo.zip"
  sha256 "a06597baaf0c892c42b37bc502437c87bd9b694639a1b241a4c2e63e78b06744"

  depends_on "openjdk"

  def install
    prefix.install "lib"    
    bin.install "bin/leo" => "leo"
  end
end