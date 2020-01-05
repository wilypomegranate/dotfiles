# load zgen
source "${HOME}/.zgen/zgen.zsh"

# This directory is where I put all my vars, functions, and aliases
ZENV_DIR="${HOME}/.zenv"

# Put vars, functions, and aliases under .zenv
# Separate work and home so that work can be untracked
# but home is prefered

function source_dir() {
    if [ -d "${1}" ]
    then
        files=(${1}/*.zsh(N))
        if [[ ${#files} > 0 ]]
        then
            for file in  ${1}/*.zsh
            do
                source ${file}
            done
        fi
    fi
}

# Source pre plugin zvars
# This sets up zproj and zsh-nvm
source_dir "${ZENV_DIR}/home/zvars_pre"
source_dir "${ZENV_DIR}/work/zvars_pre"


# If the init script doesn't exist
if ! zgen saved
then

    # specify plugins here
    zgen oh-my-zsh

    # I prefer the git plugin from oh-my-zsh

    zgen oh-my-zsh plugins/git

    # Handle a missing command
    zgen oh-my-zsh plugins/command-not-found

    # dnf is Fedora's package manager
    zgen oh-my-zsh plugins/dnf

    # docker completions
    zgen oh-my-zsh plugins/docker

    # json pretty printing and validation
    zgen oh-my-zsh plugins/jsontools

    # k8s
    zgen oh-my-zsh plugins/kubectl

    # npm completions
    zgen oh-my-zsh plugins/npm

    # pip completions
    # TODO - Get this to actually read /etc/pip.conf correctly
    zgen oh-my-zsh plugins/pip

    # python completions
    zgen oh-my-zsh plugins/python

    # redis-cli completions
    zgen oh-my-zsh plugins/redis-cli

    # sudo plugin - ESC twice to put sudo before current command
    # or last one if line is empty
    zgen oh-my-zsh plugins/sudo

    # zypper completions to keep me "not confused""
    zgen oh-my-zsh plugins/suse

    # systemd aliases - Use sc-${command}. Adds sudo if
    # needed automatically
    zgen oh-my-zsh plugins/systemd

    # tmux plugin
    zgen oh-my-zsh plugins/tmux

    # tugboat aliases for DigitalOcean
    zgen oh-my-zsh plugins/tugboat

    # vagrant autocompletion
    zgen oh-my-zsh plugins/vagrant

    # web-search commands
    zgen oh-my-zsh plugins/web-search

    # yum autocompletion
    zgen oh-my-zsh plugins/yum

    # warp directory
    zgen oh-my-zsh plugins/wd

    # Auto sources venvs if name is same as git repo
    zgen oh-my-zsh plugins/virtualenvwrapper

    # Reminders to learn aliases
    zgen load djui/alias-tips

    # This isn't working correctly - Disabling for now
    # Easy rebasing via 'rebase'
    # zgen load antigen bundle smallhadroncollider/antigen-git-rebase

    # save/restore git without commiting
    # This is to avoid arbitrary commits
    zgen load smallhadroncollider/antigen-git-store

    # MySQL colors
    zgen load horosgrisa/mysql-colorize

    # Make sure nvm is installed and loaded
    # This is hilariously slow if NVM_LAZY_LOAD isn't set to true
    # I do this in zvars_pre
    # This doesn't seem to work correctly with zgen.
    # I'm using my own implementation for now.
    # See zfuncs/home/nvm.zsh
    # zgen load lukechilds/zsh-nvm

    # Auto source .nvmrc file in directory
    # zgen load dijitalmunky/nvm-auto

    # Auto nohup vs C-h
    zgen load micrenda/zsh-nohup

    # Syntax highlighting
    zgen load zsh-users/zsh-syntax-highlighting

    # Project directory management
    zgen load wilypomegranate/zproj

    # Ninja completion plugin
    zgen load wilypomegranate/zsh-ninja

    # Completion generation plugin
    zgen load RobSis/zsh-completion-generator

    # Go back dirs
    zgen load Tarrasch/zsh-bd

    # Directory lister
    zgen load supercrabtree/k

    # Multi-word searching for easier ^r history search.
    zgen load psprint/history-search-multi-word

    # Simple calculation functions via bc
    zgen load vladmrnv/statify

    # Record output of traced commands
    zgen load psprint/ztrace

    # Keep around for testing of zproj
    # zgen load ${HOME}/projects/zproj


    # Loading work plugins
    for plugin in $(find ${HOME}/.zenv/work/plugins -maxdepth 1 -mindepth 1 -type d)
    do
        zgen load ${plugin}
    done


    # Theme
    # zgen oh-my-zsh themes/awesomepanda
    # zgen load tylerreckart/hyperzsh

    # Prezto modules - These break oh-my-zsh plugins
    # Skipping for now becaause the oh-my-zsh plugins
    # are more useful

    # zgen prezto

    # Enables selection of themes via prompt function
    # zgen prezto prompt

    # zgen prezto syntax-highlighting

    # zgen prezto utility

    # pure theme - requires async
    # zgen load mafredri/zsh-async
    # zgen load sindresorhus/pure

    # generate the init script from plugins above
    zgen save
fi


# Get gruvbox colors if they exist

if [ -f ~/.vim/bundle/gruvbox/gruvbox_256palette.sh ]
then
    source ~/.vim/bundle/gruvbox/gruvbox_256palette.sh
fi

# Source zvars
source_dir "${ZENV_DIR}/home/zvars"
source_dir "${ZENV_DIR}/work/zvars"

# Source zfuncs
source_dir "${ZENV_DIR}/home/zfuncs"
source_dir "${ZENV_DIR}/work/zfuncs"

# Source zaliases
source_dir "${ZENV_DIR}/home/zaliases"
source_dir "${ZENV_DIR}/work/zaliases"

# Source themes
source_dir "${ZENV_DIR}/home/zthemes"
source_dir "${ZENV_DIR}/work/zthemes"

# Completions
# COMPLETION SETTINGS
# add custom completion scripts
# fpath=("${ZENV_DIR}/home/zcompletions" "${ZENV_DIR}/work/zcompletions" $fpath)

# compsys initialization
# autoload -U compinit
# compinit

# show completion menu when number of options is at least 2
# zstyle ':completion:*' menu select=2
