cask "moomux-mac" do
  version "0.0.24"
  sha256 "3e59408e2ab880ca796a66b46e84470f37d7a2e6862b18b95fb9bddae1c68df0"

  url "https://github.com/afitzgerald/moomux-mac/releases/download/v0.0.24/Moomux-v0.0.24.dmg"
  name "Moomux"
  desc "Native macOS front end for moomux"
  homepage "https://github.com/afitzgerald/moomux-mac"

  depends_on macos: :sonoma

  app "Moomux.app"

  zap trash: [
    "~/Library/Application Support/Moomux",
  ]
end
