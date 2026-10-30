cask "moomux-mac" do
  version "0.0.154"
  sha256 "b3d2ff603def358095497d59162199714e7df08c629cc6a15cc8b0e29fad0f34"

  url "https://github.com/afitzgerald/moomux-mac/releases/download/v0.0.154/Moomux-v0.0.154.dmg"
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

  # On [32m==>[0m [1mWould upgrade 1 outdated package[0m
rustup 1.29.0 -> 1.29.1_1 (4.8MB)
[32m==>[0m [1mUpgrading [32mrustup[39m[0m
  1.29.0 -> 1.29.1_1 
[34m==>[0m [1mPouring rustup--1.29.1_1.arm64_tahoe.bottle.tar.gz[0m
🍺  /opt/homebrew/Cellar/rustup/1.29.1_1: 44 files, 11.7MB
[32m==>[0m [1mCaveats[0m
Bash completion has been installed to:
  /opt/homebrew/opt/rustup/etc/bash_completion.d
[34m==>[0m [1mrustup[0m
To use rustup, ensure you have "$(brew --prefix rustup)/bin" in your $PATH:
  https://rust-lang.github.io/rustup/installation/already-installed-rust.html

This formula no longer provides `rustup-init`.

rustup is keg-only, which means it was not symlinked into /opt/homebrew,
because it conflicts with rust.

If you need to have rustup first in your PATH, run:
  printf '%s\n' export\ PATH\=/opt/homebrew/opt/rustup/bin:\$PATH >> /Users/runner/.bash_profile, brew quits a running app named here and reopens
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
