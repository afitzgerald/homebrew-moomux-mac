cask "moomux-mac" do
  version "0.0.22"
  sha256 "b332066acf268a56eddc9ffbaa8596b7d8014f68cc68e74c0a4b61bf36282495"

  url "https://github.com/afitzgerald/moomux-mac/releases/download/v0.0.22/Moomux-v0.0.22.dmg"
  name "Moomux"
  desc "Native macOS front end for moomux"
  homepage "https://github.com/afitzgerald/moomux-mac"

  depends_on macos: :sonoma

  app "Moomux.app"

  zap trash: [
    "~/Library/Application Support/Moomux",
  ]
end
