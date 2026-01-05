# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="agnosterzak"

plugins=(
    git
    archlinux
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# Check archlinux plugin commands here
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/archlinux

# Display Pokemon-colorscripts
# Project page: https://gitlab.com/phoneybadger/pokemon-colorscripts#on-other-distros-and-macos
#pokemon-colorscripts --no-title -s -r #without fastfetch
pokemon-colorscripts --no-title -s -r | fastfetch -c $HOME/.config/fastfetch/config-pokemon.jsonc --logo-type file-raw --logo-height 10 --logo-width 5 --logo -

# fastfetch. Will be disabled if above colorscript was chosen to install
#fastfetch -c $HOME/.config/fastfetch/config-compact.jsonc

# Set-up icons for files/directories in terminal using lsd
alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

# Set-up FZF key bindings (CTRL R for fuzzy history finder)
source <(fzf --zsh)

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
export t=ultralytics/ultralytics:latest
export CVAT_HOST=127.0.0.1
#export v=ghcr.io/chipsalliance/t1-blastoise-t1emu:latest
#export F4PGA_INSTALL_DIR=~/opt/f4pga
#export FPGA_FAM=xc7
#export F4PGA_PACKAGES='install-xc7 xc7a50t_test xc7a100t_test xc7a200t_test xc7z010_test'



export JAVA_HOME=/usr/lib/jvm/java-11-openjdk/
export PATH=$JAVA_HOME/bin:$PATH
export JAVA_OPTS="-Dhttp.proxyHost=127.0.0.1 -Dhttp.proxyPort=7897 -Dhttps.proxyHost=127.0.0.1 -Dhttps.proxyPort=7897"
export http_proxy="http://127.0.0.1:7897"
export https_proxy="http://127.0.0.1:7897"
#export ftp_proxy="http://127.0.0.1:7897"
#export no_proxy="localhost,127.0.0.1"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/jiao/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/jiao/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/jiao/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/jiao/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<



#source ~/python-venv/bin/activate


# ~/.zshrc
if ! pgrep -f "ollama serve" > /dev/null; then
  ollama serve & disown
fi


export PATH=/opt/cuda/bin:$PATH
export LD_LIBRARY_PATH=/opt/cuda/lib64:$LD_LIBRARY_PATH

export PATH="$HOME/.cargo/bin:$PATH"
export XILINX_VITIS=~/xilinx/Vitis/2024.2/

export PATH=$PATH:~/nsight-systems-2025.5.1/bin/




## loginctl

alias zzz="loginctl lock-session"



## rust analyzer

export PATH="$HOME/.local/share/nvim/mason/bin:$PATH"

## [Completion]
## Completion scripts setup. Remove the following line to uninstall
[[ -f /home/jiao/.dart-cli-completion/zsh-config.zsh ]] && . /home/jiao/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]

# my uvm 
export UVM_HOME=/home/jiao/.config/uvm-core-2020.3.1/



# Added by LM Studio CLI (lms)
export PATH="$PATH:/home/jiao/.lmstudio/bin"
# End of LM Studio CLI section

