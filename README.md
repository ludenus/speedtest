# speedtest
debian package from https://www.speedtest.net/apps/cli

## How to Run

### Run speedtest with default settings
```
$ docker run -ti speedtest:latest
```

### List nearest servers
```
$ docker run -ti speedtest:latest --servers
+ speedtest --servers

Closest servers:
    ID  Name                           Location             Country
====================================================================
  2518  Volia                          Kiev                 Ukraine
  6010  Triolan                        Kiev                 Ukraine
  9332  o3                             Kiev                 Ukraine
```

### Run speedtest against specified server id:
```
$ docker run -ti ludenus/speedtest:latest --server-id=9332
```

### Help
```
$ docker run -ti ludenus/speedtest:latest --help
```