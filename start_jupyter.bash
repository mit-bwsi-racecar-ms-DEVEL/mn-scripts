
# make sure wifi has connected
wlan_cnt=$(nmcli | grep wlan0 | head -1 | grep ' connected' | wc -l)
while [ $wlan_cnt -ne 1 ]; do
    sleep 1
    wlan_cnt=$(nmcli | grep wlan0 | head -1 | grep ' connected' | wc -l)
done


stdout=$RACECAR_SCRIPT_BASE/cron_jupyter.stdout
stderr=$RACECAR_SCRIPT_BASE/cron_jupyter.stderr

echo >> $stdout
echo >> $stderr
date >> $stdout
date >> $stderr

cd /home/racecar/racecar_ws/jupyter_ws

source /home/racecar/.bashrc

# Make Jupyter notebook terminals be bash
export SHELL=/bin/bash

jupyter-notebook >> $stdout 2>> $stderr &
