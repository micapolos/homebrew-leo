class Leo < Formula
  desc "Leo programming language"
  homepage "https://github.com/micapolos/leo-script"
  url "https://github.com/micapolos/leo-script/releases/download/v0.25.26/leo.zip"
  sha256 "ead8c2a31b0777e5d7bff3f244d0889c2c4532e65cbd045a0f1bbbbb974ffc5e"

  depends_on "openjdk"

  def install
    prefix.install "lib"    
    bin.install "bin/leo" => "leo"
  end
end