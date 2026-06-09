cask "yappr" do
  version "0.1.10"
  sha256 "4a2d3047f1218ad42237bd85a823a65da83e4d3339c75652708b9159a6984c7b"

  url "https://github.com/rpwr021/yappr/releases/download/v#{version}/Yappr-macos.zip"
  name "Yappr"
  desc "Local push-to-talk dictation and voice chat"
  homepage "https://github.com/rpwr021/yappr"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on formula: "llama.cpp"
  depends_on macos: :ventura

  app "Yappr.app"

  zap trash: "~/.yappr"

  caveats <<~EOS
    On first launch, Yappr downloads a multi-GB speech model from Hugging Face.
    Watch the menu-bar icon for progress; the first run can take several minutes.
  EOS
end
