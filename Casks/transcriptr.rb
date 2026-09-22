cask "transcriptr" do
  version "0.1.11"
  sha256 "eb0f0308abdb8faa771d1d23a680ed52ce3dc3222fc7010a8ecba5ae99115bc0"

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
      This app is not Apple-notarized, so first launch may require right-clicking the app and choosing Open.
    EOS
  end
end
