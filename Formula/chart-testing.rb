# This file was generated by GoReleaser. DO NOT EDIT.
class ChartTesting < Formula
  desc "Linting and testing Helm charts"
  homepage "https://github.com/helm/chart-testing/"
  version "3.0.0-rc.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/helm/chart-testing/releases/download/v3.0.0-rc.1/chart-testing_3.0.0-rc.1_darwin_amd64.tar.gz"
    sha256 "6ce0cb243aac450d470e4a455d7ed484f8813a426d7a1432ac6954493494d354"
  end

  def install
    bin.install "ct"
    etc.install "etc" => "ct" unless File.exists? etc/"ct"
  end

  test do
    system "#{bin}/ct --version"
  end
end
