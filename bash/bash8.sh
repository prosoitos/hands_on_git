find . -type f -print0 \
  | xargs -0 du -h \
  | sort -hr \
  | head -n5 \
  | awk '{ printf "%s\t%s\n", $2, $1 }'
