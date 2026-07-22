cask "transcriptr" do
  version "0.1.9"
  sha256 "5236f44ebc09ee13c34144b10bc17989e6d9e9f8d013db1fc08238a9dccdb7d2"

  url "https://github.com/Crider1990/transcriptr-homebrew/releases/download/v#{version}/Transcriptr-#{version}.dmg"
  name "Transcriptr"
  desc "Local meeting transcription with whisper.cpp"
  homepage "https://github.com/Crider1990/transcriptr-homebrew"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Transcriptr.app"

  zap trash: [
    "~/Library/Application Support/meeting-transcribe",
    "~/Library/Logs/meeting-transcribe.log",
  ]

  caveats do
    <<~EOS
      Transcripts are stored in ~/Meeting-Transcripts.
      This app is currently unsigned, so first launch may require right-clicking the app and choosing Open.
    EOS
  end
end
