cask "yappr" do
  version "0.1.8"
  sha256 "2ac6271a229932ffa29eb1b9477b3be5c261dcfbe3e761c141fd88cd409de72e"

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
