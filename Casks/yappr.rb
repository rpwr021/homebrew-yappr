cask "yappr" do
  version "0.1.7"
  sha256 "4eed3b81edb2778a5fa3c6b64496ba5e87cd48dc8c18f4f833877d38b2eb2f22"

  url "https://github.com/rpwr021/yappr/releases/download/v0.1/Yappr-macos.zip"
  name "Yappr"
  desc "Local push-to-talk dictation and voice chat for macOS"
  homepage "https://github.com/rpwr021/yappr"

  app "Yappr.app"

  zap trash: [
    "~/.yappr",
  ]
end
