class Leo < Formula
  desc "Leo programming language"
  homepage "https://github.com/micapolos/leo-script"
  url "https://github.com/micapolos/leo-script/archive/refs/tags/0.25.zip"
  sha256 "3389c762e36469f4fe8667d1a666dfcb40451b97c773c0a7ceca235f6227d9aa"

  depends_on "java"

  def install
    bin.install Dir["bin"]
    prefix.install Dir["lib"]
  end
end