class Leo < Formula
  desc "Leo programming language"
  homepage "https://github.com/micapolos/leo-script"
  url "https://github.com/micapolos/leo-script/releases/download/v0.25.9/leo.zip"
  sha256 "e87d59820a58d34ea13601e94a79414e8c7c677c7c3c430730c2d910ea2b8974"

  depends_on "openjdk"

  def install
    prefix.install "lib"    
    bin.install "bin/leo" => "leo"
  end
end