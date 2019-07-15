# adding to crontab -e
# @reboot /home/racecar/racecar_ws/.scripts/cron_jupyter.bash
cd /home/racecar/racecar_ws/jupyter_ws
/usr/local/bin/jupyter-notebook > /home/racecar/racecar_ws/.scripts/cron_jupyter.output & 
