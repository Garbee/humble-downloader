# Humble Downloader

This container runs the [humble downloader](https://github.com/xtream1101/humblebundle-downloader).

## Environment Variables

### Cookie

The `COOKIE` environment variable is where the session
cookie goes for authentication.
Currently, no support for a cookie file is provided.

## Volumes

`/opt/downloads` is the image directory where the library is stored.

## Example command

```
docker run \
    -e COOKIE="{cookie for auth}" \
    -v /path/to/host/folder:/opt/downloads \
    garbee/humble-downloader
```

