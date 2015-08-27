# docker-lein


## Introduction
This is a minimal Docker image for [leiningen](https://github.com/technomancy/leiningen) tasks. It uses the base image [delitescere/docker-zulu](https://github.com/delitescere/docker-zulu).

The pre-squashed size is 266.9 MB and after using [docker-squash](https://github.com/jwilder/docker-squash), it is just 186.2 MB (most of this is the JDK).

## Build

```sh
docker build -t delitescere/lein .
```

## Example usage

```sh
docker run --rm -ti delitescere/lein repl
```

Enjoy smaller containers!
