#!/bin/bash
if [ -z "$1" ]; then
  echo "Usage: $0 <threshold>"
  exit 1
fi
echo "File Pair: file1 and file2  diff_lines file1_lines file2_lines"
directory=$(pwd)/directory
cd "$directory"
threshold="$1"
files=$(find "$directory" -type f)
for file1 in $files; do
  for file2 in $files; do
    if [ "$file1" != "$file2" ] && [[ "$file1" < "$file2" ]]; then
      diff_lines=$(diff -U 0 "$file1" "$file2" | grep -c "^@")
      if [ "$diff_lines" -lt "$threshold" ]; then
      	file1_lines=$(wc -l < "$file1")
	file2_lines=$(wc -l < "$file2")
        echo "File Pair: $file1 and $file2  $diff_lines $file1_lines $file2_lines"
      fi
    fi
  done
done
