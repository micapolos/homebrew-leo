class Leo < Formula
  desc "Leo programming language"
  homepage "https://github.com/micapolos/leo-script"
  url "https://github.com/micapolos/leo-script/releases/download/v0.25.11/leo.zip"
  sha256 "e54a50f758fa7b03048ad7b35708ca68c754676cb4a8dec20652e1bcd6731a65"

  depends_on "openjdk"

  def install
    prefix.install "lib"    
    bin.install "bin/leo" => "leo"
  end
end