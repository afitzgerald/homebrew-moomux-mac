cask "moomux-mac" do
  version "0.0.13"
  sha256 "d541cd9624a92fec020bec34c26c12fda02e677fd94f83096d0631f65ceedebd"

  url "https://github.com/afitzgerald/moomux-mac/releases/download/v0.0.13/Moomux-v0.0.13.dmg"
  name "Moomux"
  desc "Native macOS front end for moomux"
  homepage "https://github.com/afitzgerald/moomux-mac"

  depends_on macos: :sonoma

  app "Moomux.app"

  zap trash: [
    "~/Library/Application Support/Moomux",
  ]
end
