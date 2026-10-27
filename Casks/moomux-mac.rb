cask "moomux-mac" do
  version "0.0.147"
  sha256 "dbd2b6da3c0a9c483ba4cdbf871d14d45aed2be5b5a5836ca18bfd3b04de29bd"

  url "https://github.com/afitzgerald/moomux-mac/releases/download/v0.0.147/Moomux-v0.0.147.dmg"
  name "Moomux"
  desc "Native macOS front end for moomux"
  homepage "https://github.com/afitzgerald/moomux-mac"

  depends_on macos: :sonoma

  app "Moomux.app"

  # brew copies the downloaded image's quarantine record onto every
  # file of the installed bundle, so the first launch after *every*
  # install and upgrade is gated behind "Moomux is an app downloaded
  # from the Internet. Are you sure?" — nothing opens until someone
  # clicks through it, which reads as the app not launching. Worse
  # when the policy record for that path is stale (0.0.26, unstapled,
  # sat at /Applications): the process is spawned and killed ~2s
  # later with no window and, after the first time, no dialog either.
  #
  # The notarization ticket stapled *into* the bundle is what proves
  # provenance offline (see the Makefile's notarize target), so
  # dropping the xattr gives up nothing the staple isn't already
  # asserting — brew has already checked the image's sha256 against
  # the line above. , not the deprecated
  #  block; args are template-expanded, hence {{appdir}}.
  postflight_steps do
    run "/usr/bin/xattr",
        args: ["-dr", "com.apple.quarantine", "{{appdir}}/Moomux.app"]
  end

  zap trash: [
    "~/Library/Application Support/Moomux",
  ]
end
