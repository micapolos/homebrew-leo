class Leo < Formula
  desc "Leo programming language"
  homepage "https://github.com/micapolos/leo-script"
  url "https://github.com/micapolos/leo-script/releases/download/v0.25.25/leo.zip"
  sha256 "204968fbcd8771d2b5053fa5bf0615b552b75981d5e059c47d535dd793ac6fa3"

  depends_on "openjdk"

  def install
    prefix.install "lib"    
    bin.install "bin/leo" => "leo"
  end
end