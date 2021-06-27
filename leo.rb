class Leo < Formula
  desc "Leo programming language"
  homepage "https://github.com/micapolos/leo-script"
  url "https://github.com/micapolos/leo-script/releases/download/v0.25.3/leo.zip"
  sha256 "4c111a57808e63a301c5b0f2e5fd5c33d3aca54433fb763307b804a866b8c939"

  depends_on "openjdk"

  def install
    prefix.install "lib"    
    bin.install "bin/leo" => "leo"
  end
end