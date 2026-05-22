#!/bin/bash

DATE=$(date +"%Y-%m-%d_%H-%M-%S")

/home/driel_feby/linux-system-toolkit/scripts/system_info.sh > /home/driel_feby/linux-system-toolkit/logs/system_$DATE.log
