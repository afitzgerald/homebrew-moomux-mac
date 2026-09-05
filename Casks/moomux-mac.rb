cask "moomux-mac" do
  version "0.0.9"
  sha256 "7b2f60199319293df92bb421a043477b81bdc005f54646c0abaf0f16ba69a7a6"

  url "https://github.com/afitzgerald/moomux-mac/releases/download/v0.0.9/Moomux-v0.0.9.dmg"
  name "Moomux"
  desc "Native macOS front end for moomux"
  homepage "https://github.com/afitzgerald/moomux-mac"

  depends_on macos: :sonoma

  app "Moomux.app"

  zap trash: [
    "~/Library/Application Support/Moomux",
  ]
end
