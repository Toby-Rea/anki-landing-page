# Anki Landing Page Refresh

## To run a preview in a docker container. 

**Note**: this requires docker and docker compose to be installed.

```sh
docker compose up
```

Then go to <http:localhost:4173>.


## To build and view locally:

```sh
npm install
npm run build
npm run preview
```

### Or if you are living in 2024

```sh
bun install
bun run build
bun run preview
```

### Alternatively you can just do:

```sh
make preview
```

#### Or

```sh
just preview
```

---

Then navigate to the provided URL.

## Screenshot

![1080p Preview](screenshots/20241008.png?sanitize=true&raw=true "A preview of the site at 1080p")
