## USAGE
#
### Without arguments (default 1 dir back)
#
# $ pwd
# /your/path/to/some/dir/a
# $ cdb
# $ pwd
# /your/path/to/some/dir
 
#### With arguments
#
# $ pwd
# /your/path/to/some/dir/a
# $ cdb 3
# $ pwd
# /your/path
 
# Thanks to https://gist.github.com/rafmagana/4040559
 
function cdb
{
  local TIMES=$1
  local INITIAL=1
  local BACK_DIR='../'
  local DIRS
 
  if [ $# -eq 0 ]; then
    DIRS[0]="${BACK_DIR}"
  fi
 
  for ((i=INITIAL;i<=TIMES;i++)); do
    DIRS=("${DIRS[@]}" "${BACK_DIR}")
  done
 
  cd `printf "%s" "${DIRS[@]}"`
}
