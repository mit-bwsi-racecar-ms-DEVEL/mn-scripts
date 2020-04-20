###
#  When wifi is set up to connect, uncomment the code below
###

### wait for wifi to connect

# wlan_cnt=$(nmcli | grep wlan0 | head -1 | grep ' connected' | wc -l)
# while [ $wlan_cnt -ne 1 ]; do
#     sleep 1
#     wlan_cnt=$(nmcli | grep wlan0 | head -1 | grep ' connected' | wc -l)
# done

timestamp=`date -Iseconds`

stdout=$RACECAR_SCRIPT_BASE/cron_jupyter.stdout
stderr=$RACECAR_SCRIPT_BASE/cron_jupyter.stderr

echo >> $stdout
echo "$timestamp" >> $stdout
echo >> $stderr
echo "$timestamp" >> $stderr

cd /home/racecar/racecar_ws/jupyter_ws

jupyter-notebook >> $stdout 2>> $stderr &
