apt update -y && apt upgrade -y
apt update
apt install git zsh openssh tmux exa tsu neovim -y
sudo rm -rf ./*
sudo rm -rf ./.*
git clone -b dev https://github.com/Qiu2zhi1zhe3/MyTermux.git ./
cp -f key .git-credentials
read a
sed -i "s/$a//" /data/data/com.termux/files/home/.git-credentials
chsh -s zsh
sudo chmod -R 755 /data/data/com.termux/files/home
sudo chmod 600 ./.ssh/id_rsa
sudo cp .config/kl.ime.oh_preferences.xml /data/data/kl.ime.oh/shared_prefs/
sudo chmod 660 /data/data/kl.ime.oh/shared_prefs/kl.ime.oh_preferences.xml
a=`sudo awk '/^kl.ime.oh/ {print $2}' /data/system/packages.list`
echo $a
sudo chown $a:$a /data/data/kl.ime.oh/shared_prefs/kl.ime.oh_preferences.xml
sudo pkill kl.ime.oh
