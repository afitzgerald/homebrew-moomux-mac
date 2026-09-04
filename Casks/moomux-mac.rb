cask "moomux-mac" do
  version "0.0.5"
  sha256 "aa2a9795c0be80a9d256290620e310ac8af732af97c765e4112b7fdb758dfedd"

  url "https://github.com/afitzgerald/moomux-mac/releases/download/v0.0.5/Moomux-v0.0.5.dmg"
  name "Moomux"
  desc "Native macOS front end for moomux"
  homepage "https://github.com/afitzgerald/moomux-mac"

  depends_on macos: :sonoma

  app "Moomux.app"

  zap trash: [
    "~/Library/Application Support/Moomux",
  ]
end
