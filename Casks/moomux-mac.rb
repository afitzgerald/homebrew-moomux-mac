cask "moomux-mac" do
  version "0.0.6"
  sha256 "c68ef4f597c2caf03949125c4aed6ec0ade88b8a63c9d32093cdcb2075a6e166"

  url "https://github.com/afitzgerald/moomux-mac/releases/download/v0.0.6/Moomux-v0.0.6.dmg"
  name "Moomux"
  desc "Native macOS front end for moomux"
  homepage "https://github.com/afitzgerald/moomux-mac"

  depends_on macos: :sonoma

  app "Moomux.app"

  zap trash: [
    "~/Library/Application Support/Moomux",
  ]
end
