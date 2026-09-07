cask "moomux-mac" do
  version "0.0.28"
  sha256 "b00a72acb40950363fd7656afc7bfae1f93eb00afe5ed3fafa7c170d0072dd53"

  url "https://github.com/afitzgerald/moomux-mac/releases/download/v0.0.28/Moomux-v0.0.28.dmg"
  name "Moomux"
  desc "Native macOS front end for moomux"
  homepage "https://github.com/afitzgerald/moomux-mac"

  depends_on macos: :sonoma

  app "Moomux.app"

  zap trash: [
    "~/Library/Application Support/Moomux",
  ]
end
