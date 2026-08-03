# OMNIVID

A terminal-based YouTube video and music downloader with playlist support, 320kbps MP3 audio, best-quality video, and automatic cookies.

<p align="center">
  <img src="https://github.com/user-attachments/assets/378a4242-4039-4fd2-aee4-d7ba613f0886" width="640" alt="Main menu" />
</p>

## Features

- **HD Video** — best available quality (MP4, `bv*+ba/b` format)
- **320kbps MP3 Audio** — extracts the audio track
- **Playlists** — lists videos, select which ones to download (`1,3,5-8`, `all`, `none`), marks unavailable ones
- **Automatic cookies** — uses Brave cookies only as a fallback (for age-restricted videos)
- **Session history** of downloads
- TUI interface powered by `rich`
- Live download progress bar

## Screenshots

<p align="center">
  <img src="https://github.com/user-attachments/assets/7b4757e3-a017-4da1-8da3-85c37ad22add" width="560" alt="Video mode" />
  <br /><em>Video mode</em>
</p>

<p align="center">
  <img src="https://github.com/user-attachments/assets/164505f9-6cd7-4423-9f93-2ba145f88f78" width="560" alt="Playlist selection" />
  <br /><em>Playlist selection</em>
</p>

<p align="center">
  <img src="https://github.com/user-attachments/assets/3fb9b500-9171-428e-afd7-d4595f32ee3c" width="560" alt="Downloading" />
  <br /><em>Downloading with live progress</em>
</p>

<p align="center">
  <img src="https://github.com/user-attachments/assets/746964b0-f187-484f-ae1f-845b0d00c4cf" width="560" alt="Audio mode" />
  <br /><em>Audio mode</em>
</p>

## Demo

<p align="center">
  <a href="https://www.youtube.com/watch?v=MCsZuoAQvmE">
    <img src="https://img.youtube.com/vi/MCsZuoAQvmE/maxresdefault.jpg" width="560" alt="Watch the demo video" />
  </a>
  <br /><em>Click to watch the demo</em>
</p>

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

## Support

If you like this project, you can support my work with a donation:

<p align="center">
  <a href="https://ko-fi.com/gerardom86682">
    <img src="https://storage.ko-fi.com/cdn/kofi6.png" width="217" alt="Donate on Ko-fi" />
  </a>
</p>

## License

MIT
