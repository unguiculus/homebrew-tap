# This file was generated by GoReleaser. DO NOT EDIT.
class ChartReleaser < Formula
  desc "Hosting Helm Charts via GitHub Pages and Releases"
  homepage "https://github.com/helm/chart-releaser/"
  version "1.0.0-beta.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/helm/chart-releaser/releases/download/v1.0.0-beta.1/chart-releaser_1.0.0-beta.1_darwin_amd64.tar.gz"
    sha256 "8d0eea6962c23940fb66d2a3cf21ce0c64d35abcdd40de4832b022f146e74992"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/helm/chart-releaser/releases/download/v1.0.0-beta.1/chart-releaser_1.0.0-beta.1_linux_amd64.tar.gz"
      sha256 "d9940e40d90856649d2bce2b427db0c697f5d9dd26a7a2e7b671e417c3bceba0"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
      else
        url "https://github.com/helm/chart-releaser/releases/download/v1.0.0-beta.1/chart-releaser_1.0.0-beta.1_linux_armv6.tar.gz"
        sha256 "60ab10718eb6168c1d4c8f8cfbffac32650c26b8a6c4a219fc2c7eb81c1adedc"
      end
    end
  end

  def install
    bin.install "cr"
  end

  test do
    system "#{bin}/cr --version"
  end
end