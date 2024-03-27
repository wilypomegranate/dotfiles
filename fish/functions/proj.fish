function proj
    cd $project_root_dir
end

function goto
    if test -d $project_root_dir/$argv[1]
       cd $project_root_dir/$argv[1]
    end
end
