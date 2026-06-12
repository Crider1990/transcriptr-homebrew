cask "transcriptr" do
  version "0.1.6"
  sha256 "8a0c5802b9aeee27ddb53bf5d9641f0a77a9b4cbae7f2670162eded11354798a"

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
