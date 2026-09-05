cask "moomux-mac" do
  version "0.0.10"
  sha256 "c9db842703e668e5508856553608e27d5c3d619857f59e38dffb09d237a234da"

  url "https://github.com/afitzgerald/moomux-mac/releases/download/v0.0.10/Moomux-v0.0.10.dmg"
  name "Moomux"
  desc "Native macOS front end for moomux"
  homepage "https://github.com/afitzgerald/moomux-mac"

  depends_on macos: :sonoma

  app "Moomux.app"

  zap trash: [
    "~/Library/Application Support/Moomux",
  ]
end
