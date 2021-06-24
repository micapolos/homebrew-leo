class Leo < Formula
  desc "Leo programming language"
  homepage "https://github.com/micapolos/leo-script"
  url "https://github.com/micapolos/leo-script/files/6707971/leo-0.25.zip"
  sha256 "2c0571ef5575a72ae8b37c289b395721997e48d94861c1cd924f82420ac8ee2d"

  depends_on "java"

  def install
    bin.install "bin/leo"
    prefix.install Dir["lib"]
  end
end