class Leo < Formula
  desc "Leo programming language"
  homepage "https://github.com/micapolos/leo-script"
  url "https://github.com/micapolos/leo-script/archive/refs/tags/0.25.zip"

  def install
    bin.install "/bin/*"
    lib.install "/lib/*"
  end
end