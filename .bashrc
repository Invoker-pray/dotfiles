#    _               _              
#   | |__   __ _ ___| |__  _ __ ___ 
#   | '_ \ / _` / __| '_ \| '__/ __|
#  _| |_) | (_| \__ \ | | | | | (__ 
# (_)_.__/ \__,_|___/_| |_|_|  \___|
# 
# -----------------------------------------------------
# ML4W bashrc loader
# -----------------------------------------------------

# DON'T CHANGE THIS FILE

# You can define your custom configuration by adding
# files in ~/.config/bashrc 
# or by creating a folder ~/.config/bashrc/custom
# with copies of files from ~/.config/bashrc 
# You can also create a .bashrc_custom file in your home directory
# -----------------------------------------------------

# -----------------------------------------------------
# Load modular configarion
# -----------------------------------------------------

for f in ~/.config/bashrc/*; do 
    if [ ! -d $f ] ;then
        c=`echo $f | sed -e "s=.config/bashrc=.config/bashrc/custom="`
        [[ -f $c ]] && source $c || source $f
    fi
done

# -----------------------------------------------------
# Load single customization file (if exists)
# -----------------------------------------------------

if [ -f ~/.bashrc_custom ] ;then
    source ~/.bashrc_custom
fi

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

export CROSS_COMPILE=riscv64-linux-gnu-
export t=ultralytics/ultralytics:latest
export CVAT_HOST=127.0.0.1
