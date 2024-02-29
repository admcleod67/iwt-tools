# mariner

## Application Installation

Create the application directory structure in the "/opt" directory:

```
> cd /opt
> mkdir mariner
> mkdir mariner/bin
> mkdir mariner/log
```

Copy the appropriate version of the application package to the "./bin" directory and unzip it:

```
> cp ~/SiteMonitor-x64-x.x.x.zip ./bin/
> unzip SiteMonitor-x64-x.x.x.zip
```

Create a script to run the application in the "./bin" directory with the following content:

```
#! /bin/bash
./bin/SiteMonitor --port=8080 --Logging=/opt/mariner/log/ 2>&1 | ts | tee -a /opt/mariner/log/mariner.log
```
