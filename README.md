# Tlog Session Recording File Parser

## How to use

It is very simple. Just run and choose rec id

![Alt Text](https://media.giphy.com/media/zDuqef1ijgtpZE0Ijs/giphy.gif)

### Parameters
**standard** 
  Session play standard speed
**quicly** 
  Session play quicly (Default)


## How to Create Centralized Tlog 

**Rsyslog required to set up centralized tlog.**

* Install Tlog and rsyslog on linux system.
* Change session recording method to syslog in  /etc/tlog/tlog-rec-session.conf.
```bash
"writer":"syslog"
```
* Configure centralized log server in /etc/rsyslog.conf.
* Finally use tlog_parser and watch simple all session recording.
