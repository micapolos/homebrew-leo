class Leo < Formula
  desc "Leo programming language"
  homepage "https://github.com/micapolos/leo-script"
  url "https://github.com/micapolos/leo-script/releases/download/v0.25.1/leo.zip"
  sha256 "fde5e9626c568bbec6bafd61a208b6ef54b1e5920d61e5c318e90754fb22beea"

  depends_on "openjdk"

  def install
    prefix.install "lib"    
    bin.install "bin/leo" => "leo"
  end
end