cask "moomux-mac" do
  version "0.0.18"
  sha256 "60f3039837b6d946c54eee9428cf45a309f0ea5d677814f44550e2d734bd822a"

  url "https://github.com/afitzgerald/moomux-mac/releases/download/v0.0.18/Moomux-v0.0.18.dmg"
  name "Moomux"
  desc "Native macOS front end for moomux"
  homepage "https://github.com/afitzgerald/moomux-mac"

  depends_on macos: :sonoma

  app "Moomux.app"

  zap trash: [
    "~/Library/Application Support/Moomux",
  ]
end
