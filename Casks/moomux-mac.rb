cask "moomux-mac" do
  version "0.0.7"
  sha256 "a02d24a5712434dbb409861a42a80a0828733166f1d01dea97978f6d77c4c9af"

  url "https://github.com/afitzgerald/moomux-mac/releases/download/v0.0.7/Moomux-v0.0.7.dmg"
  name "Moomux"
  desc "Native macOS front end for moomux"
  homepage "https://github.com/afitzgerald/moomux-mac"

  depends_on macos: :sonoma

  app "Moomux.app"

  zap trash: [
    "~/Library/Application Support/Moomux",
  ]
end
