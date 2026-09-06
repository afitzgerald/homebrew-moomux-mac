cask "moomux-mac" do
  version "0.0.23"
  sha256 "b755f9d77e9ba03ca684ae901275cf1b15bcd056b3eb5462118f11b7e0811e44"

  url "https://github.com/afitzgerald/moomux-mac/releases/download/v0.0.23/Moomux-v0.0.23.dmg"
  name "Moomux"
  desc "Native macOS front end for moomux"
  homepage "https://github.com/afitzgerald/moomux-mac"

  depends_on macos: :sonoma

  app "Moomux.app"

  zap trash: [
    "~/Library/Application Support/Moomux",
  ]
end
