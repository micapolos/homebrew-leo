class Leo < Formula
  desc "Leo programming language"
  homepage "https://github.com/micapolos/leo-script"
  url "https://github.com/micapolos/leo-script/releases/download/v0.25.5/leo.zip"
  sha256 "1ae8fd4c90d69326c9939d3d3f27593e8018dc0537da46f2eb9b146e3d89f910"

  depends_on "openjdk"

  def install
    prefix.install "lib"    
    bin.install "bin/leo" => "leo"
  end
end