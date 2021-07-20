class Leo < Formula
  desc "Leo programming language"
  homepage "https://github.com/micapolos/leo-script"
  url "https://github.com/micapolos/leo-script/releases/download/v0.25.20/leo.zip"
  sha256 "2b05d888c91a9ccd3eac74549f51198fce0bf1fc97ebfb781d64be4675b6dd72"

  depends_on "openjdk"

  def install
    prefix.install "lib"    
    bin.install "bin/leo" => "leo"
  end
end