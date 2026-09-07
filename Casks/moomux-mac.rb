cask "moomux-mac" do
  version "0.0.26"
  sha256 "8f77aec787a063cbbce41d0a0d81ee5a0b7a79cea7f1710da4b9c210852fcc68"

  url "https://github.com/afitzgerald/moomux-mac/releases/download/v0.0.26/Moomux-v0.0.26.dmg"
  name "Moomux"
  desc "Native macOS front end for moomux"
  homepage "https://github.com/afitzgerald/moomux-mac"

  depends_on macos: :sonoma

  app "Moomux.app"

  zap trash: [
    "~/Library/Application Support/Moomux",
  ]
end
