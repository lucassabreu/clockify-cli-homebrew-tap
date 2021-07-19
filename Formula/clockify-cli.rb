# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ClockifyCli < Formula
  desc "Helps to interact with Clockfy's API"
  homepage "https://github.com/lucassabreu/clockify-cli"
  version "0.19.1"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/lucassabreu/clockify-cli/releases/download/v0.19.1/clockify-cli_0.19.1_Darwin_x86_64.tar.gz"
      sha256 "78d70082221d614a80dcd5e340c9678c73c281878dbe3aa5993c903b48cba3b8"
    end
    if Hardware::CPU.arm?
      url "https://github.com/lucassabreu/clockify-cli/releases/download/v0.19.1/clockify-cli_0.19.1_Darwin_arm64.tar.gz"
      sha256 "0885dee3c60c452b4e867fb85299046841c8c6f596b5133c29bfca363c18d2f8"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/lucassabreu/clockify-cli/releases/download/v0.19.1/clockify-cli_0.19.1_Linux_x86_64.tar.gz"
      sha256 "d6cc558cc47d43ff1af319f3c596521eb64d7720f1e40b2eb0a3aa63fbceb820"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lucassabreu/clockify-cli/releases/download/v0.19.1/clockify-cli_0.19.1_Linux_arm64.tar.gz"
      sha256 "9de4206e94174514e354e461cfec031ad872d043527aeba9b705978b25c44be3"
    end
  end

  def install
    bin.install "clockify-cli"
  end

  test do
    system "#{bin}/clockify-cli version"
  end
end
