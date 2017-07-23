function nvm() {
    if [ -n "${NVM_DIR}" ]
    then
        source "${NVM_DIR}/nvm.sh"
        nvm "$@"
    elif [ -d "${HOME}/.nvm" ]
    then
        source "${HOME}/.nvm/nvm.sh"
        nvm "$@"
    fi
}
