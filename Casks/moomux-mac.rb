cask "moomux-mac" do
  version "0.0.20"
  sha256 "c3ef9cefd993b6f5770bce89d3d11335bd1307d5a7dcb4412c95d6b209d0cc2b"

  url "https://github.com/afitzgerald/moomux-mac/releases/download/v0.0.20/Moomux-v0.0.20.dmg"
  name "Moomux"
  desc "Native macOS front end for moomux"
  homepage "https://github.com/afitzgerald/moomux-mac"

  depends_on macos: :sonoma

  app "Moomux.app"

  zap trash: [
    "~/Library/Application Support/Moomux",
  ]
end
