cask "yappr" do
  version "0.1.7"
  sha256 "40c11f55d538fe59513f60d05ed112ee22abdfdbbfd727a779f8349499704d7b"

  url "https://github.com/rpwr021/yappr/releases/download/v0.1.7/Yappr-macos.zip"
  name "Yappr"
  desc "Local push-to-talk dictation and voice chat for macOS"
  homepage "https://github.com/rpwr021/yappr"

  app "Yappr.app"

  zap trash: [
    "~/.yappr",
  ]
end
