cask "moomux-mac" do
  version "0.0.17"
  sha256 "39729dfa725ff025d775c63a345fd23e9807554056c8ffb6d998fbb05facd429"

  url "https://github.com/afitzgerald/moomux-mac/releases/download/v0.0.17/Moomux-v0.0.17.dmg"
  name "Moomux"
  desc "Native macOS front end for moomux"
  homepage "https://github.com/afitzgerald/moomux-mac"

  depends_on macos: :sonoma

  app "Moomux.app"

  zap trash: [
    "~/Library/Application Support/Moomux",
  ]
end
