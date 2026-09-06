cask "moomux-mac" do
  version "0.0.19"
  sha256 "9eeb40af88c60be29cc99ac75219db137854449cf797f5c3dc85ae2d7c8ae997"

  url "https://github.com/afitzgerald/moomux-mac/releases/download/v0.0.19/Moomux-v0.0.19.dmg"
  name "Moomux"
  desc "Native macOS front end for moomux"
  homepage "https://github.com/afitzgerald/moomux-mac"

  depends_on macos: :sonoma

  app "Moomux.app"

  zap trash: [
    "~/Library/Application Support/Moomux",
  ]
end
