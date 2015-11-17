# Graphite with Docker

> This image is intended to provide a ready to use Graphite stack (Graphite-web + Carbon + Whisper).

The stack is built from source and managed by Supervisor.

## Start a Graphite container

```bash
$ git clone https://github.com/creative-area/docker-graphite.git
$ cd docker-graphite && docker build -t [your-name]/graphite .
$ docker run -d -P creativearea/graphite
```
The image is also available on Docker Hub:

```bash
$ docker run -d -P creativearea/graphite
```

## Options

**Environment variables:**

- `GRAPHITEWEB_USERNAME` (default root)
- `GRAPHITEWEB_PASSWORD` (default root)
- `GRAPHITEWEB_EMAIL` (default root@localhost)

**2 mount points are available for you to persist the Whisper data and customize the configuration:**

- `/opt/graphite/storage/whisper`
- `/opt/graphite/conf`
