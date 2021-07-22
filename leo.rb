class Leo < Formula
  desc "Leo programming language"
  homepage "https://github.com/micapolos/leo-script"
  url "https://github.com/micapolos/leo-script/releases/download/v0.25.22/leo.zip"
  sha256 "8379a37a3870d3c2c7f6d4d737521b7a6abb2de304d35f5adde19dc105d11653"

  depends_on "openjdk"

  def install
    prefix.install "lib"    
    bin.install "bin/leo" => "leo"
  end
end