# Pages Setup

1. Build the page with `source_book_ma.sh`
2. Setup git `config` to push to production repository by uncommenting:
   ```
   # Production remote (uncomment to synchronize dev with prod)
   [remote "metadata_public_portal"]
   url = git@github.com:Mosquito-Alert/metadata_public_portal.git
   fetch = +refs/heads/*:refs/remotes/metadata_public_portal/*
   ```
3. Update the **production** web-page with
    ```
    $ ghp-import -n -p -f _build/html -r metadata_public_portal
    ```
    or just the development web-page with
    ```
    $ ghp-import -n -p -f _build/html -r origin
    ```