cask "moomux-mac" do
  version "0.0.15"
  sha256 "19cc81ff513d006438624e08a51dc3e545dfda0126823593ee2a02a83cb162b4"

  url "https://github.com/afitzgerald/moomux-mac/releases/download/v0.0.15/Moomux-v0.0.15.dmg"
  name "Moomux"
  desc "Native macOS front end for moomux"
  homepage "https://github.com/afitzgerald/moomux-mac"

  depends_on macos: :sonoma

  app "Moomux.app"

  zap trash: [
    "~/Library/Application Support/Moomux",
  ]
end
