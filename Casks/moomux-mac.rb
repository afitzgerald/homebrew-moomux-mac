cask "moomux-mac" do
  version "0.0.25"
  sha256 "05f899d119f2727407cec051153877d68ef1f737d874f952f1b120ea44d19e11"

  url "https://github.com/afitzgerald/moomux-mac/releases/download/v0.0.25/Moomux-v0.0.25.dmg"
  name "Moomux"
  desc "Native macOS front end for moomux"
  homepage "https://github.com/afitzgerald/moomux-mac"

  depends_on macos: :sonoma

  app "Moomux.app"

  zap trash: [
    "~/Library/Application Support/Moomux",
  ]
end
