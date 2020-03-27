# This file was generated by GoReleaser. DO NOT EDIT.
class Funnel < Formula
  desc "distributed task execution toolkit"
  homepage "https://ohsu-comp-bio.github.io/funnel/"
  version "0.10.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/ohsu-comp-bio/funnel/releases/download/0.10.0/funnel-darwin-amd64-0.10.0.tar.gz"
    sha256 "a2bed22257d6aa1d83f3f7e132cc16e568ffa84baf8d26bbaf448b312de629b5"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/ohsu-comp-bio/funnel/releases/download/0.10.0/funnel-linux-amd64-0.10.0.tar.gz"
      sha256 "77c6e1b3cbd94736d53c2d4f398791be1960acae3e06b13761d27e806b87d5e8"
    end
  end

  def install
    bin.install "funnel"
  end

  test do
    system "#{bin}/funnel", "version"
  end
end
