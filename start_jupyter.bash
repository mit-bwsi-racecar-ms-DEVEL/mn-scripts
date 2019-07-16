source /home/racecar/.bashrc
source /home/racecar/racecar_ws/.scripts/_racecars
#source /opt/ros/melodic/setup.bash

stdout=/home/racecar/racecar_ws/.scripts/cron_jupyter.stdout
stderr=/home/racecar/racecar_ws/.scripts/cron_jupyter.stderr

echo >> $stdout
echo >> $stderr
date >> $stdout
date >> $stderr

cd /home/racecar/racecar_ws/jupyter_ws

# make sure wifi has connected
wlan_cnt=$(nmcli | grep wlan0 | head -1 | grep ' connected' | wc -l)
while [ $wlan_cnt -ne 1 ]; do
    sleep 1
    wlan_cnt=$(nmcli | grep wlan0 | head -1 | grep ' connected' | wc -l)
done

/usr/local/bin/jupyter-notebook >> $stdout 2>> $stderr &
