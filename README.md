# Pages Setup

1. Build the page with `source build_book_ma.sh`
2. Setup git `config` to push to production repository by uncommenting:
   ```
   # Production remote (uncomment to synchronize dev with prod)
   [remote "metadata_public_portal"]
   url = git@github.com:Mosquito-Alert/metadata_public_portal.git
   fetch = +refs/heads/*:refs/remotes/metadata_public_portal/*
   ```
3. Update the **production** web-page with
    ```{shell}
    $ ghp-import -n -p -f _build/html -r metadata_public_portal
    ```
    or just the development web-page with
    ```{shell}
    $ ghp-import -n -p -f _build/html -r origin
    ```

## Tutorial Setup

Video snippets in `.mp4` format should be correctly encoded with `ffmpeg` in order to work both in _Chrome_ and _Firefox_ browsers. The following snippets could be used:
```{shell}
$ ffmpeg -i input.mp4 -c:v libx264 -preset slow -crf 40 -c:a aac -b:a 160k -vf format=yuv420p -movflags +faststart output.mp4
```
or 
```{shell}
$ ffmpeg -i input.mp4 -c:v libvpx-vp9 -crf 40 -b:v 0 output.webm
```