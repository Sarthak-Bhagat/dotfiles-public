# dotfiles

CachyOS + KDE Plasma 6. fish, kitty, mpv, mpd, mako, and hellwal-driven theming
that repaints the terminal and shell palette from the current wallpaper.

Managed with [yadm](https://yadm.io), so the repo is a `$HOME` overlay: paths in
it are exactly where the files belong.

## Install

```bash
yadm clone https://github.com/Sarthak-Bhagat/dotfiles-public.git
yadm bootstrap        # offered automatically after the clone
```

`yadm clone` refuses to overwrite existing files, so it is safe to try — it will
stash conflicts and tell you. `bootstrap` installs the packages, sets up fisher
plugins, creates the directories mpd needs, and reloads systemd.

Prefer to take pieces? Clone it anywhere and copy what you want:

```bash
git clone https://github.com/Sarthak-Bhagat/dotfiles-public.git
cp -r dotfiles-public/.config/fish ~/.config/
```

## Worth stealing

| Path | Why |
|---|---|
| `.config/fish/conf.d/` | numbered modules, one concern per file, loaded in order — much easier to reason about than one long `config.fish` |
| `.config/hellwal/templates/` | palette templates. The generated colour files are deliberately not tracked, so nothing fights the generator |
| `.config/variety/scripts/set_wallpaper` | upstream ships fifteen desktop branches; this is the KDE one, and it fixes an upstream bug where `$?` was read after a pipe, so the script exited 1 on every successful wallpaper change |
| `.bin/textractor` | select a region, OCR it, put the text on the clipboard |
| `.bin/songinfo` + `mpd_watcher.sh` | mpd notifications with album art, driven by `mpc idle` so they work with any client |
| `.config/mpv/` | modernx UI, thumbfast, sponsorblock, playlistmanager |
| `.gitattributes` + `.bin/yadm-clean-*` | git clean filters. Several KDE and app configs rewrite themselves constantly — wallpaper paths, usage counters, temp-file names — so tracking them means a permanently dirty repo. These normalise the volatile values on the way *into* git while leaving the working copy alone, so a real edit still shows a diff and the noise does not |
| `.config/yadm/bootstrap` | every step checks before it acts, so it is safe to re-run. It also reinstalls the things that live outside `$HOME` and would otherwise be silently lost on a fresh clone — the gitleaks pre-commit hook and the clean filters above |

## What is not here

Generated from a private repo, with anything personal removed: git identity,
SSH config, credentials, private hosts, hardware-specific config, and personal
launchers. Paths were rewritten to `~` or `%h`.

Some things therefore need filling in — mpd points at `~/Music`, variety has no
wallpaper sources configured, and the KDE rc files encode one person's panel
layout, shortcuts and monitor arrangement. **Read those before you log out and
back in**, or you will inherit a stranger's desktop.

`.config/mpv/scripts/` omits the Discord rich-presence script, which needs a
compiled binary not shipped here.

## Terms

Mine, and free to use — MIT licensed, so do what you like with it.

Support and updates depend entirely on my mood. Issues and pull requests may get a
look, or may not. Nothing here is maintained, supported, or promised.
