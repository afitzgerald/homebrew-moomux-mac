cask "moomux-mac" do
  version "0.0.11"
  sha256 "53c2276657f91381d050b0d38ad8136a4e164582aa933a41229fca5ee680250f"

  url "https://github.com/afitzgerald/moomux-mac/releases/download/v0.0.11/Moomux-v0.0.11.dmg"
  name "Moomux"
  desc "Native macOS front end for moomux"
  homepage "https://github.com/afitzgerald/moomux-mac"

  depends_on macos: :sonoma

  app "Moomux.app"

  zap trash: [
    "~/Library/Application Support/Moomux",
  ]
end
