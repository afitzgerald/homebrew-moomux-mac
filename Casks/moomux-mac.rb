cask "moomux-mac" do
  version "0.0.2"
  sha256 "fa79e7eb236bc35210af9f3077706f9ee27f67b34a275d5b1529e490218b10b9"

  url "https://github.com/afitzgerald/moomux-mac/releases/download/v0.0.2/Moomux-v0.0.2.dmg"
  name "Moomux"
  desc "Native macOS front end for moomux"
  homepage "https://github.com/afitzgerald/moomux-mac"

  depends_on macos: ">= :sonoma"

  app "Moomux.app"

  zap trash: [
    "~/Library/Application Support/Moomux",
  ]
end
