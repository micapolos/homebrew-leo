class Leo < Formula
  desc "Leo programming language"
  homepage "https://github.com/micapolos/leo-script"
  url "https://github.com/micapolos/leo-script/releases/download/v0.25.21/leo.zip"
  sha256 "0085d88f13709106b3a699279a8c10b9fc303bdb81e0b11db57a88a97356c520"

  depends_on "openjdk"

  def install
    prefix.install "lib"    
    bin.install "bin/leo" => "leo"
  end
end