function project_goto () {
    PROJECT=$1
    if [ -n $1 ]
    then
        if [ -d "${PROJECT_ROOT_DIR}/${PROJECT}" ]
        then
            export PROJECT_DIR="${PROJECT_ROOT_DIR}/${PROJECT}"
            cd ${PROJECT_DIR}
        fi
    fi
}
