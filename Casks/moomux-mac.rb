cask "moomux-mac" do
  version "0.0.12"
  sha256 "7aa397173a4def5099ae2d82b23bb5c6d2a1045faf0ef9f2ef7c029958fc8fee"

  url "https://github.com/afitzgerald/moomux-mac/releases/download/v0.0.12/Moomux-v0.0.12.dmg"
  name "Moomux"
  desc "Native macOS front end for moomux"
  homepage "https://github.com/afitzgerald/moomux-mac"

  depends_on macos: :sonoma

  app "Moomux.app"

  zap trash: [
    "~/Library/Application Support/Moomux",
  ]
end
