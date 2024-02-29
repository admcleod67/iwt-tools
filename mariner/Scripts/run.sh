#! /bin/bash
./bin/SiteMonitor --Logging=/opt/mariner/log/ 2>&1 | ts | tee -a /opt/mariner/log/mariner.log

