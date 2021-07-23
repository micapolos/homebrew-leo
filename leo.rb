class Leo < Formula
  desc "Leo programming language"
  homepage "https://github.com/micapolos/leo-script"
  url "https://github.com/micapolos/leo-script/releases/download/v0.25.24/leo.zip"
  sha256 "1f19cee503ee9f4b16df13488ea8be38e23b2dec09f71675ca874219b87fb877"

  depends_on "openjdk"

  def install
    prefix.install "lib"    
    bin.install "bin/leo" => "leo"
  end
end