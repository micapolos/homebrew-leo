class Leo < Formula
  desc "Leo programming language"
  homepage "https://github.com/micapolos/leo-script"
  url "https://github.com/micapolos/leo-script/releases/download/v0.25.16/leo.zip"
  sha256 "fa56a542415b213afe779f9b77efd60ebf19364200997c9e7e0ebb326ff0fee4"

  depends_on "openjdk"

  def install
    prefix.install "lib"    
    bin.install "bin/leo" => "leo"
  end
end