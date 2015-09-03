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
alias lein="$PWD/lein"
lein test
lein repl :headless # nREPL container is started for this directory
lein repl :connect # nREPL client container connects to the detached nREPL server, no address is required
```

## Notes

If you have the `:eval-in nrepl` line in your `project.clj`, remove it otherwise you'll get "Connection Refused" errors when running the REPL.

There is one nREPL server per directory to allow you to run multiple project REPLs at once if you want. Using Docker's network stack sharing, you don't need to specify the address for the client REPL. The history for each project's REPL is kept separate.

## Legal

See the LICENSE file. Use of Zulu is governed by the terms of use at [http://www.azulsystems.com/products/zulu/terms-of-use](http://www.azulsystems.com/products/zulu/terms-of-use).

Enjoy smaller containers!
