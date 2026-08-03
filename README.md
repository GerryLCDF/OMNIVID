# OMNIVID

A terminal-based YouTube video and music downloader with playlist support, 320kbps MP3 audio, best-quality video, and automatic cookies.

![Main menu]
<img width="860" height="628" alt="image" src="https://github.com/user-attachments/assets/378a4242-4039-4fd2-aee4-d7ba613f0886" />



## Features

- **HD Video** — best available quality (MP4, `bv*+ba/b` format)
- **320kbps MP3 Audio** — extracts the audio track
- **Playlists** — lists videos, select which ones to download (`1,3,5-8`, `all`, `none`), marks unavailable ones
- **Automatic cookies** — uses Brave cookies only as a fallback (for age-restricted videos)
- **Session history** of downloads
- TUI interface powered by `rich`

## Screenshots

![Video mode] <img width="856" height="636" alt="image" src="https://github.com/user-attachments/assets/7b4757e3-a017-4da1-8da3-85c37ad22add" />

![Playlist selection]<img width="856" height="636" alt="image" src="https://github.com/user-attachments/assets/164505f9-6cd7-4423-9f93-2ba145f88f78" />
<img width="856" height="636" alt="image" src="https://github.com/user-attachments/assets/3fb9b500-9171-428e-afd7-d4595f32ee3c" />

![Downloading] <img width="856" height="636" alt="image" src="https://github.com/user-attachments/assets/746964b0-f187-484f-ae1f-845b0d00c4cf" />

![Audio mode](docs/screenshots/audio-mode.png)

## Demo

[Watch the demo video](





)

## Requirements

- Python 3.8+
- `yt-dlp` and `ffmpeg` in PATH
- `deno` in PATH (resolves YouTube's JS challenges)
- `browser_cookie3` (optional, for Brave cookies)

## One-command installation

```bash
curl -fsSL https://raw.githubusercontent.com/GerryLCDF/OMNIVID/main/install.sh | bash
```

This installs `omnivid`, `yt-dlp`, `ffmpeg`, `deno`, and the Python dependencies automatically. Open a new terminal and run `omnivid`.

## Manual installation

```bash
cp omnivid ~/.local/bin/omnivid
chmod +x ~/.local/bin/omnivid
```

Make sure `yt-dlp`, `ffmpeg`, and `deno` are in your PATH.

```bash
pip install rich browser_cookie3
```

## Usage

```bash
omnivid
```

1. Choose a mode: Audio or Video
2. Paste a YouTube link (video or playlist)
3. Done — it downloads to your current folder

## License

MIT
