#!/bin/bash
#
# Prune/delete all local branches that are already
# merged into the currently checked out branch.
#
# https://stackoverflow.com/a/6127884/3739087
#
# Example:
#
# $ sh prune-local-branches.sh
# # Prunes all merged local branches except master, main, dev
#
# $ sh prune-local-branches.sh foo bar
# # Prunes local branches containing foo or bar in name. (grep (foo|bar))
#
# $ sh prune-local-branches.sh -e foo bar
# # Prunes all merged local branches, except branches containing foo or bar in name (grep -v (^\*|foo|bar))

default_branches=("\<master\>" "\<main\>" "\<dev\>")
except_defined_branches=true

except_flag=false

while getopts "e:" flag
do
     case $flag in
         e)
           except_flag=true
           ;;
     esac
     shift
done

arg_branches=("$@")

if (( ${#arg_branches[@]} )); then
  except_defined_branches=$except_flag
fi

branches=("${arg_branches[@]:-${default_branches[@]}}")

grep_args=()

if $except_defined_branches; then
  grep_args+=(-v)
fi

pattern="($(IFS="|" ; echo "${branches[*]}"))"

grep_args+=($pattern)

git branch --merged | egrep "${grep_args[@]}" | egrep -v "^\*" | xargs -t git branch -d
