cask "transcriptr" do
  version "0.1.1"
  sha256 "e790cec2f972054172a56fa01b76ee4df035f57c6d8b5423f45bf529377dd39a"

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
