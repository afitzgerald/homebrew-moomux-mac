cask "moomux-mac" do
  version "0.0.162"
  sha256 "51f652ad13cb7d26197307cb5920aa8f14890afcaf13aa74d99d0ae77d826c62"

  url "https://github.com/afitzgerald/moomux-mac/releases/download/v0.0.162/Moomux-v0.0.162.dmg"
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
  # the line above. `postflight_steps`, not the deprecated
  # `postflight` block; args are template-expanded, hence {{appdir}}.
  postflight_steps do
    run "/usr/bin/xattr",
        args: ["-dr", "com.apple.quarantine", "{{appdir}}/Moomux.app"]
  end

  # On `brew upgrade`, brew quits a running app named here and reopens
  # the new build afterwards (after postflight, so the xattr is gone
  # by then). The directive is read from the *installed* cask, so the
  # first upgrade onto this stanza still leaves the old app running.
  # brew skips the quit when it is itself running inside the app (a
  # Moomux pane), since quitting would kill it.
  uninstall quit: "app.moomux.Moomux"

  zap trash: [
    "~/Library/Application Support/Moomux",
  ]
end
