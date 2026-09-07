cask "moomux-mac" do
  version "0.0.27"
  sha256 "ad9db2ef9abfe7cd13070b8da89929ec2a2d511ebec59dea35f99370fd74785c"

  url "https://github.com/afitzgerald/moomux-mac/releases/download/v0.0.27/Moomux-v0.0.27.dmg"
  name "Moomux"
  desc "Native macOS front end for moomux"
  homepage "https://github.com/afitzgerald/moomux-mac"

  depends_on macos: :sonoma

  app "Moomux.app"

  zap trash: [
    "~/Library/Application Support/Moomux",
  ]
end
