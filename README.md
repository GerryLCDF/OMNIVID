# OMNIVID

A terminal-based YouTube video and music downloader with playlist support, 320kbps MP3 audio, best-quality video, and automatic cookies.

![Main menu](<img width="1024" height="929" alt="image" src="https://github.com/user-attachments/assets/da850b82-bf4e-450c-be3d-8c90b29607fa" />)
<img width="860" height="628" alt="image" src="https://github.com/user-attachments/assets/378a4242-4039-4fd2-aee4-d7ba613f0886" />



## Features

- **HD Video** — best available quality (MP4, `bv*+ba/b` format)
- **320kbps MP3 Audio** — extracts the audio track
- **Playlists** — lists videos, select which ones to download (`1,3,5-8`, `all`, `none`), marks unavailable ones
- **Automatic cookies** — uses Brave cookies only as a fallback (for age-restricted videos)
- **Session history** of downloads
- TUI interface powered by `rich`

## Screenshots

![Video mode](docs/screenshots/video-mode.png)
![Playlist selection](docs/screenshots/playlist.png)
![Downloading](docs/screenshots/downloading.png)
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
