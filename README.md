# speedtest
debian package from https://www.speedtest.net/apps/cli installed on ubuntu 22.04

## How to Run

### Run speedtest with default settings
```
$ docker run -ti ludenus/speedtest:1.2.0.84 --accept-gdpr
```

### List nearest servers
```
$ docker run ludenus/speedtest:1.2.0.84 --servers
+ exec speedtest --servers
Closest servers:

    ID  Name                           Location             Country
==============================================================================
 55595  FOX TELECOM INTERNET S.L.      Pedreguer            Spain
 30999  Avatel Telecom                 Málaga              Spain
 11384  Axartel Comunicaciones         Málaga              Spain
```

### Run speedtest against specified server id:
```
$ docker run ludenus/speedtest:1.2.0.84 --accept-gdpr --server-id 30999
```

### Help
```
$ docker run ludenus/speedtest:1.2.0.84 --help
```