#https://github.com/BurntSushi/ripgrep/blob/master/pkg/brew/ripgrep-bin.rb
class HelloRsBin < Formula
  version '0.1.12'
  desc "Sample hello application."
  homepage "https://github.com/timvw/hello-rs"

  if OS.mac?
      url "https://github.com/timvw/hello-rs/releases/download/#{version}/hello-rs-#{version}-x86_64-apple-darwin.tar.gz"
      #sha256 "585c18350cb8d4392461edd6c921e6edd5a97cbfc03b567d7bd440423e118082"
  elsif OS.linux?
      url "https://github.com/timvw/hello-rs/releases/download/#{version}/hello-rs-#{version}-x86_64-unknown-linux-musl.tar.gz"
      #sha256 "ee4e0751ab108b6da4f47c52da187d5177dc371f0f512a7caaec5434e711c091"
  end

  conflicts_with "hello-rs"

  def install
    bin.install "hello-rs"
  end
end