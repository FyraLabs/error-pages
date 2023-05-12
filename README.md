# Fyra's custom error pages

Error pages using https://github.com/tarampampam/error-pages, based on the connect theme.

## Compilation

```sh
docker run --rm \
    -v "$(pwd):/opt:rw" \
    -u "$(id -u):$(id -g)" \
    tarampampam/error-pages b out
```
