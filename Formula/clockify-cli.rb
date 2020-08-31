# This file was generated by GoReleaser. DO NOT EDIT.
class ClockifyCli < Formula
  desc "Helps to interact with Clockfy's API"
  homepage "https://github.com/lucassabreu/clockify-cli"
  version "0.12.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/lucassabreu/clockify-cli/releases/download/v0.12.0/clockify-cli_0.12.0_Darwin_x86_64.tar.gz"
    sha256 "5a41ccf4dfaf36b73308b98245b83d5d8f4f811c70115dbbccdfafa7d4287a4f"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/lucassabreu/clockify-cli/releases/download/v0.12.0/clockify-cli_0.12.0_Linux_x86_64.tar.gz"
      sha256 "b1b947eb5e893b583edf267cb25c075810d0e387636c9b94519ed9e7b9a9a634"
    end
  end

  def install
    bin.install "clockify-cli"
  end

  test do
    system "#{bin}/clockify-cli version"
  end
end