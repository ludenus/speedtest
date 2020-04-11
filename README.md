# speedtest
debian package from https://www.speedtest.net/apps/cli installed on ubuntu 18.04

## How to Run

### Run speedtest with default settings
```
$ docker run -ti ludenus/speedtest:1.0.0.2
```

### List nearest servers
```
$ docker run -ti ludenus/speedtest:1.0.0.2 --servers
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
$ docker run -ti ludenus/speedtest:1.0.0.2 --server-id=9332
```

### Help
```
$ docker run -ti ludenus/speedtest:1.0.0.2 --help
```