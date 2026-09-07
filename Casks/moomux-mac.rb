cask "moomux-mac" do
  version "0.0.29"
  sha256 "6a7fe82ada661142c5115d768d8987af3caca9ddd12fddf992c336137469c5ad"

  url "https://github.com/afitzgerald/moomux-mac/releases/download/v0.0.29/Moomux-v0.0.29.dmg"
  name "Moomux"
  desc "Native macOS front end for moomux"
  homepage "https://github.com/afitzgerald/moomux-mac"

  depends_on macos: :sonoma

  app "Moomux.app"

  zap trash: [
    "~/Library/Application Support/Moomux",
  ]
end
