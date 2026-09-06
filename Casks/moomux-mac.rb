cask "moomux-mac" do
  version "0.0.21"
  sha256 "6d670509ca26213e03b2ce45acd078a0e744894a09a3113109ecab4530a9326a"

  url "https://github.com/afitzgerald/moomux-mac/releases/download/v0.0.21/Moomux-v0.0.21.dmg"
  name "Moomux"
  desc "Native macOS front end for moomux"
  homepage "https://github.com/afitzgerald/moomux-mac"

  depends_on macos: :sonoma

  app "Moomux.app"

  zap trash: [
    "~/Library/Application Support/Moomux",
  ]
end
