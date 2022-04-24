apt update && apt upgrade -y
apt intstall -y git zsh openssh tmux exa tsu
git clone https://github.com/Qiu2zhi1zhe3/MyTermux.git ./
set_perm() {
  sudo chown $2:$3 $1
  sudo chmod $4 $1
}
set_perm_recursive() {
  for i in `sudo find $1 -type f` ;do
	set_perm $i $2 $3 $5
	done
	for a in `sudo find $1 -type d` ;do
	set_perm $a $2 $3 $4
	done
}
Termux=`awk '/^com.termux/ {print $2}' /data/system/packages.list`
set_perm_recursive ${HOME} ${Termux} ${Termux} 0755 0644
set_perm_recursive ${HOME}/.local ${Termux} ${Termux}  0755  0755
sed -i 's/Poklm9xc@//' /data/data/com.termux/files/home/MyTermux/.git-credentials
chsh -s zsh