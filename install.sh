apt update && apt upgrade -y
apt intstall -y git zsh openssh tmux exa tsu
rm -rf ./* .*
git clone https://github.com/Qiu2zhi1zhe3/MyTermux.git ./
sudo chmod -R 755 /data/data/com.termux/files/home/
mv key .git-credentials
sed -i 's/Poklm9xc@//' /data/data/com.termux/files/home/.git-credentials
chsh -s zsh