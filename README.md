# Anki Landing Page Refresh

## Running in docker

**Note**: this requires docker and docker compose to be installed.

### To run a preview in a docker container

```sh
docker compose up preview
```

Then navigate to <http:localhost:4173>.

### To run a dev build in a docker container

```sh
docker compose up dev
```

Then navigate to <http:localhost:5173>.

## Running locally

### Developing

1. Run `make dev`
2. Navigate to <http://localhost:5173>

### Previewing

1. Run `make preview`
2. Navigate to <http://localhost:4173>

## Screenshot

![1080p Preview](screenshots/20241008.png?sanitize=true&raw=true "A preview of the site at 1080p")
