cask "moomux-mac" do
  version "0.0.16"
  sha256 "0620884c411096fedc7dd5d35a8a685058325fe2c8bd7e105f7cba83cab905fa"

  url "https://github.com/afitzgerald/moomux-mac/releases/download/v0.0.16/Moomux-v0.0.16.dmg"
  name "Moomux"
  desc "Native macOS front end for moomux"
  homepage "https://github.com/afitzgerald/moomux-mac"

  depends_on macos: :sonoma

  app "Moomux.app"

  zap trash: [
    "~/Library/Application Support/Moomux",
  ]
end
