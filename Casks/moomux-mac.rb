cask "moomux-mac" do
  version "0.0.4"
  sha256 "022b5f2414ba5af3218938a0987134caa23b8e7720ef5470bb59e2c5291c7d16"

  url "https://github.com/afitzgerald/moomux-mac/releases/download/v0.0.4/Moomux-v0.0.4.dmg"
  name "Moomux"
  desc "Native macOS front end for moomux"
  homepage "https://github.com/afitzgerald/moomux-mac"

  depends_on macos: :sonoma

  app "Moomux.app"

  zap trash: [
    "~/Library/Application Support/Moomux",
  ]
end
