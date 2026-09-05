cask "moomux-mac" do
  version "0.0.8"
  sha256 "cc5a60e7e50288fa5205568d314afbd09ff246cf8e3ca374bf6a3ddcf4184baa"

  url "https://github.com/afitzgerald/moomux-mac/releases/download/v0.0.8/Moomux-v0.0.8.dmg"
  name "Moomux"
  desc "Native macOS front end for moomux"
  homepage "https://github.com/afitzgerald/moomux-mac"

  depends_on macos: :sonoma

  app "Moomux.app"

  zap trash: [
    "~/Library/Application Support/Moomux",
  ]
end
