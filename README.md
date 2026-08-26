# dotfiles (shareable copy)

CachyOS + KDE Plasma 6 config: fish, kitty, mpv, mpd, mako, hellwal theming, and
a pile of Plasma rc files. Generated from a private yadm repo by
`dotfiles-export`, with personal material stripped.

## What was removed

Nothing here contains credentials, private hosts, or identity. Specifically
excluded: git identity, SSH config, the media-server helpers and their ZeroTier
addresses, Jellyfin and qBittorrent credentials, personal `.desktop` launchers,
and hardware-specific config (input-remapper, monitor layout).

Paths were rewritten to `$HOME`, so nothing points at another user's home.

## Using it

This is *not* a yadm repo — clone it somewhere and copy what you want:

```bash
git clone <this-repo> dotfiles && cd dotfiles
cp -r .config/fish ~/.config/          # for example
```

Take pieces, not the whole tree. The Plasma rc files in particular encode one
person's panel layout and shortcuts.

## Worth reading first

- `.config/fish/conf.d/` — numbered, one concern per file
- `.config/hellwal/templates/` — palette templates; the generated colour files
  are deliberately not tracked
- `.config/variety/scripts/` — KDE wallpaper setter, reduced from upstream's
  fifteen desktop branches to the one that runs, with an upstream exit-code bug
  fixed
