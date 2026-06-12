cask "transcriptr" do
  version "0.1.4"
  sha256 "50914d656d2ad1d194b78abde9b51fe20ed6adc73e3f6b83bd39026ded175907"

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
