cask "moomux-mac" do
  version "0.0.14"
  sha256 "ef99118a61934ff42e1306265346a6d98f103d0c58bf5bc2caa8168f76613601"

  url "https://github.com/afitzgerald/moomux-mac/releases/download/v0.0.14/Moomux-v0.0.14.dmg"
  name "Moomux"
  desc "Native macOS front end for moomux"
  homepage "https://github.com/afitzgerald/moomux-mac"

  depends_on macos: :sonoma

  app "Moomux.app"

  zap trash: [
    "~/Library/Application Support/Moomux",
  ]
end
