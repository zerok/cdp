#-*- mode:sh-mode -*-
cdp() {
    local project=$1

    if [ -z "$PROJECT_DIRECTORIES" ]; then
        print "You have to set up your \$PROJECT_DIRECTORIES variable"
        return 2
    fi

    for dir in ${(s/:/)PROJECT_DIRECTORIES}; do
        for proj in "$dir"/* ; do
            if [ -d "$proj" ] && [ "$proj:t" = "$project" ]; then
                print "Found $project in $dir"
                cd "$proj" || return 1
                return
            fi
        done
    done
    print "No matching project found"
    return 1
}
