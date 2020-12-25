export BASH_SILENCE_DEPRECATION_WARNING=1
export HOST=`hostname`

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

PATH=/Library/TeX/Distributions/.DefaultTeX/Contents/Programs/texbin:${PATH}

PATH=/usr/local/bin:/usr/local/sbin:${PATH}

# added by Miniconda3 installer
PATH=/Users/hanrahan/miniconda3/bin:${PATH}
#PATH=/Users/hanrahan/git/coreir/bin:${PATH}

#PATH=/usr/local/opt/llvm/bin:${PATH}

PATH=${HOME}/git/terra:${PATH}

PATH=/Applications/Racket\ v7.5/bin:${PATH}

# avr tools
PATH=/Applications/Arduino.app/Contents/Java/hardware/tools/avr/bin:${PATH}
#PATH=/usr/local/CrossPack-AVR/bin:${PATH}


# arm tools 
#  launchpad version for embedded computing
#PATH=/Users/hanrahan/bin/gcc-arm-none-eabi-5_4-2016q3/bin:${PATH}
#  generic arm tools - for raspberry pi
PATH=/Users/hanrahan/bin/arm-none-eabi/bin:${PATH}

PATH=${HOME}/go/bin:${PATH}

PATH=${HOME}/git/genesis2/bin:${PATH}

PATH=${HOME}/git/pbrt-v3/build:${PATH}

PATH="$HOME/.local/bin:$PATH"

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

export PS1="% "
export PS2="> "
export PS3=">> "

export DISPLAY=:0

export HISTSIZE=100000

export EDITOR=vi
export VISUAL=vi

export LC_ALL=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LANG=en_US.UTF-8

export CDPATH=.:~/git

export GENESIS_HOME=/Users/hanrahan/git/genesis2
export QHOME=$HOME/software/q

# GO
#export GOROOT=/usr/local/opt/go/libexec
#export GOARCH=amd64
#export GOPATH=$HOME/go

#setenv ROKU "192.168.1.9"

. ~/.alias

. ~/.env

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/hanrahan/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/hanrahan/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/hanrahan/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/hanrahan/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

