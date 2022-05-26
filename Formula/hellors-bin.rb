# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class HellorsBin < Formula
  desc "test repository to test github actions"
  homepage "https://github.com/timvw/hello-rs"
  url "https://github.com/timvw/hello-rs/archive/0.1.21.tar.gz"
  sha256 "9df284c69c41cb0673069879a6f6b6800c7bea66c2dcd6a7546fd172faeea735"
  license "Apache-2.0"

  def install
    bin.install "hello-rs"
  end
end
