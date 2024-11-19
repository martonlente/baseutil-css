#!/bin/bash

# Create array for the breakpoints and their max-widths
declare -A breakpoints=( ["xs"]=600 ["sm"]=960 ["md"]=1264 ["lg"]=1904 )

# Set the directories for build and source
dir_build="build"
dir_src="build"

# Read the original CSS file
file_orig="$dir_src/baseutil-utilities.css"
content_orig=$(cat "$file_orig")

# Find the line number of the comment helper
line_num=$(grep -n -m 1 -F -x "/*! Helper build-css-media-queries.sh */" "$file_orig" | cut -d: -f1)

if [[ -z "$line_num" ]]; then
  echo "\"Helper build-css-media-queries.sh\" comment helper not found"
  exit 1
fi

# Extract content after and before the comment helper
comment_before=$(head -n "$line_num" "$file_orig")
comment_after=$(tail -n +"$((line_num + 1))" "$file_orig")

# Iterate over each breakpoint
for breakpoint in "${!breakpoints[@]}"; do
  max_width=${breakpoints[$breakpoint]}
  
  # Create a file variant for the breakpoint
  file_variant="$dir_build/baseutil-utilities-$breakpoint.css"

  echo "$comment_before" > "$file_variant"
  echo "@media (max-width: ${max_width}px) {" >> "$file_variant"
  
  # Read each line from comment_after and add the suffix for the breakpoint
  while read -r line; do
    if [[ $line == .* ]]; then
      # Append the suffix breakpoint to the selector
      line_mod=$(echo "$line" | sed "s/\(\.[^ ]*\)/\1-$breakpoint/")
    else
      line_mod=$line
    fi
    echo "$line_mod" >> "$file_variant"
  done <<< "$comment_after"
  
  echo "}" >> "$file_variant"
done
