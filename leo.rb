class Leo < Formula
  desc "Leo programming language"
  homepage "https://github.com/micapolos/leo-script"
  url "https://github.com/micapolos/leo-script/releases/download/v0.25.19/leo.zip"
  sha256 "a6f9b70ed367c98915b7b3bedcf53d595e9c8a8cd75d754f9936b9113fbb6289"

  depends_on "openjdk"

  def install
    prefix.install "lib"    
    bin.install "bin/leo" => "leo"
  end
end