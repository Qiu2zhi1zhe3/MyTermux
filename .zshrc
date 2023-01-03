clear
ZSH_DISABLE_COMPFIX=true
ZSH_THEME="osx"
plugins=(git fzf-tab zsh-autosuggestions zsh-syntax-highlighting bgnotify)

PATH="$PREFIX/bin:$HOME/.local/bin:$PATH:/system/xbin"
export PATH

export TERM=xterm-256color 

source $HOME/.oh-my-zsh/oh-my-zsh.sh
source $HOME/.oh-my-zsh/themes/icons
source $HOME/.aliases
source $HOME/.autostart


# User configuration
autoload -U compinit && compinit
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'w
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run.

zstyle ':completion:*' insert-tab false        # Автокомплит для первого символа

HISTFILE=~/.zhistory
## Số lệnh được lưu trữ trong HISTFILE
SAVEHIST=5000
## Số lượng lệnh được lưu trữ trong phiên
HISTSIZE=5000
DIRSTACKSIZE=20
# Tùy chọn lịch sử lệnh
#Thêm thời gian thực hiện lệnh vào lịch sử.
setopt extended_history
alias history='fc -il 1'


# Hoàn thành hồ sơ lịch sử
setopt  APPEND_HISTORY

#Thêm lệnh vào lịch sử không phải sau khi thực hiện mà trước đó
setopt INC_APPEND_HISTORY

# Bỏ qua mọi lệnh lặp lại
setopt  HIST_IGNORE_ALL_DUPS

# Xóa các dòng trống khỏi tệp lịch sử
setopt  HIST_REDUCE_BLANKS

# lệnh "history" và "fc" sẽ không được thêm vào lịch sử
setopt HIST_NO_STORE

# nếu bạn đã gõ đường dẫn đến thư mục mà không có lệnh CD
setopt AUTO_CD

#Thông báo khi trạng thái công việc nền thay đổi
setopt NOTIFY

#Di chuyển mũi tên theo lựa chọn
#setopt menucomplete
#zstyle ':completion:*' menu select=1 _complete _ignored _approximate

#Behave như trong BASH
#setopt AUTO_MENU BASH_AUTO_LIST

# sửa lệnh gõ sai
setopt CORRECT_ALL
# câu hỏi tự động sửa
SPROMPT='zsh: Thay Thế '\''%R'\'' Bằng '\''%r'\'' ? [Yes/No/Abort/Edit] '


#Bạn có thể nhập nhận xét bắt đầu bằng #.
setopt interactive_comments

autoload -U compinit promptinit
compinit
promptinit;
#Thêm các tệp .file ẩn:
_comp_options+=(globdots)

# thoát các ký tự đặc biệt trong url, ví dụ &, ?, ~, v.v.
autoload -U url-quote-magic
zle -N self-insert url-quote-magic

# Bật hỗ trợ cho các biểu thức như "{1-3}" hoặc "{ad}" - chúng sẽ mở rộng
# trong "1 2 3" và "abcd" tương ứng
setopt BRACECCL

# Sau khi thay đổi thư mục, hãy gọi ls.
function lcd() {cd "$1" && ls}