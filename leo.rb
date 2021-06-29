class Leo < Formula
  desc "Leo programming language"
  homepage "https://github.com/micapolos/leo-script"
  url "https://github.com/micapolos/leo-script/releases/download/v0.25.7/leo.zip"
  sha256 "fe9c2ad8ffba1ea9db67abd6b4fc708054c4d2f6e69b990aa12d559eb85cd6b9"

  depends_on "openjdk"

  def install
    prefix.install "lib"    
    bin.install "bin/leo" => "leo"
  end
end