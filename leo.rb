class Leo < Formula
  desc "Leo programming language"
  homepage "https://github.com/micapolos/leo-script"
  url "https://github.com/micapolos/leo-script/releases/download/v0.25.6/leo.zip"
  sha256 "2d850eacd82f2a2d77b7a905fc51512a5ca21ffded1fe49d3cab7065cea06bcd"

  depends_on "openjdk"

  def install
    prefix.install "lib"    
    bin.install "bin/leo" => "leo"
  end
end