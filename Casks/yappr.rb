cask "yappr" do
  version "0.1.15"
  sha256 "95e07724dfdf346b3f5e38f5bd978776563dc5dc9e9e9da4432005c88e994e19"

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

  # The app is ad-hoc signed (not notarized), so strip the download quarantine
  # to skip the Gatekeeper "unverified developer" wall on first launch.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Yappr.app"]
  end

  zap trash: "~/.yappr"

  caveats <<~EOS
    Push-to-talk hotkeys:
      Dictate:  hold Right Option
      Chat:     hold Cmd + Right Option

    On first launch, Yappr downloads a multi-GB speech model from Hugging Face.
    Watch the menu-bar icon for progress; the first run can take several minutes.
  EOS
end
