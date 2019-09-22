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
        ps auwwx | grep -i ${SEARCH} | grep -v grep
    fi
}

function pe {
    SEARCH=${1}
    if [ -n ${SEARCH} ]
    then
        ps -eF | grep -i ${SEARCH} | grep -v grep
    fi
}

function mem {
    ps -eo rss,pid,euser,args:100 --sort %mem | grep -v grep | grep -i $@ | awk '{ sum+=$1} END {print sum}'
}

function ptree {
    ps axjf
}

function fstab {
    sed 's/#.*//' /etc/fstab | column --table --table-columns SOURCE,TARGET,TYPE,OPTIONS,PASS,FREQ --table-right PASS,FREQ
}


function mtab {
    sed 's/#.*//' /etc/mtab | column --table --table-columns SOURCE,TARGET,TYPE,OPTIONS,PASS,FREQ --table-right PASS,FREQ
}
