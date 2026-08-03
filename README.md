# OMNIVID

Descargador de videos y música de YouTube desde la terminal, con soporte de playlists, MP3 320kbps, video en mejor calidad y cookies automáticas.

## Características

- **Video HD** — mejor calidad disponible (MP4, formato `bv*+ba/b`)
- **Audio MP3 320kbps** — extrae la pista de audio
- **Playlists** — lista los videos, selecciona cuáles descargar (`1,3,5-8`, `all`, `none`), marca los no disponibles
- **Cookies automáticas** — usa las cookies de Brave solo como fallback (para videos restringidos por edad)
- **Historial** de descargas de la sesión
- Interfaz TUI con `rich`

## Requisitos

- Python 3.8+
- `yt-dlp` y `ffmpeg` en PATH
- `deno` en PATH (para resolver los desafíos JS de YouTube)
- `browser_cookie3` (opcional, para cookies de Brave)

## Instalación

```bash
cp omnivid ~/.local/bin/omnivid
chmod +x ~/.local/bin/omnivid
```

Asegúrate de tener en PATH: `yt-dlp`, `ffmpeg`, `deno`.

```bash
pip install rich browser_cookie3
```

## Uso

```bash
omnivid
```

1. Elige modo: Audio o Video
2. Pega el link de YouTube (video o playlist)
3. Listo — se descarga en tu carpeta actual

## Licencia

MIT
