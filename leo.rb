class Leo < Formula
  desc "Leo programming language"
  homepage "https://github.com/micapolos/leo-script"
  url "https://github.com/micapolos/leo-script/releases/download/v0.25.4/leo.zip"
  sha256 "abdeb81fd3a08964ad479f3004f72dd485e5f1035b4495b55daa6551bbf5a614"

  depends_on "openjdk"

  def install
    prefix.install "lib"    
    bin.install "bin/leo" => "leo"
  end
end