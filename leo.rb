class Leo < Formula
  desc "Leo programming language"
  homepage "https://github.com/micapolos/leo-script"
  url "https://github.com/micapolos/leo-script/releases/download/v0.25.15/leo.zip"
  sha256 "9abe4969bee60776c13dce3b538061b9849f620a2a773fb1e3fe54929ff46f9e"

  depends_on "openjdk"

  def install
    prefix.install "lib"    
    bin.install "bin/leo" => "leo"
  end
end