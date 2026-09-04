cask "moomux-mac" do
  version "0.0.3"
  sha256 "c97bc8b016bf128154498c1208b6d2a1aa86218f9932887fa9949b166db7ce12"

  url "https://github.com/afitzgerald/moomux-mac/releases/download/v0.0.3/Moomux-v0.0.3.dmg"
  name "Moomux"
  desc "Native macOS front end for moomux"
  homepage "https://github.com/afitzgerald/moomux-mac"

  depends_on macos: :sonoma

  app "Moomux.app"

  zap trash: [
    "~/Library/Application Support/Moomux",
  ]
end
