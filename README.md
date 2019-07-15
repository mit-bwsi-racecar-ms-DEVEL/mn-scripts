Setting up Racecar-MN

```sh
# clone repo to expected location
cd ~
mkdir racecar_ws
git clone https://github.com/fishberg/mn-scripts.git ~/racecar_ws/.scripts

# setup dotfile symlinks
ln -s ~/racecar_ws/.scripts/_vimrc ~/.vimrc
ln -s ~/racecar_ws/.scripts/_tmux.conf ~/.tmux.conf

# config jupyter
mkdir .jupyter
ln -s ~/racecar_ws/.scripts/jupyter_notebook_config.py ~/.jupyter/jupyter_notebook_config.py

# add racecar _bashrc to ~/.bashrc
echo "source /home/racecar/racecar_ws/.scripts/_bashrc" >> ~/.bashrc
```

Open the user crontab file with `crontab -e` and add the following line:
```
@reboot /home/racecar/racecar_ws/.scripts/cron_jupyter.bash
```
