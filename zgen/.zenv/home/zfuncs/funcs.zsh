function venv {
}

function pyclean {
    rm -rf build
    rm -rf dist
    rm -rf *egg-info*
}

function pa {
    SEARCH=${1}
    if [ -n ${SEARCH} ]
    then
        ps auwwxxx | grep -i ${SEARCH} | grep -v grep
    fi
}
