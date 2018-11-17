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

function pe {
    SEARCH=${1}
    if [ -n ${SEARCH} ]
    then
        ps -eF | grep -i ${SEARCH} | grep -v grep
    fi
}

function mem
{
    ps -eo rss,pid,euser,args:100 --sort %mem | grep -v grep | grep -i $@ | awk '{ sum+=$1} END {print sum}'
}
