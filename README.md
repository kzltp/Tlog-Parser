# Tlog Session Recording File Parser

## How to use

It is very simple. Just run and choose rec id


https://user-images.githubusercontent.com/5288152/140038017-fa8b08d7-d142-43ad-ad5a-581cc27878aa.mp4



### Parameters
**standard** : Session play standard speed
  <br />
**quicly** : Session play quicly (Default)


## How to Create Centralized Tlog 

**Rsyslog required to set up centralized tlog.**

* Install Tlog and rsyslog on linux system.
* Change session recording method to syslog in  /etc/tlog/tlog-rec-session.conf.
```bash
"writer":"syslog"
```
* Configure centralized log server in /etc/rsyslog.conf.
* Finally use tlog_parser and watch simple all session recording.
