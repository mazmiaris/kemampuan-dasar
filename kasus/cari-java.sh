#!/usr/bin/
#Directory to scan for files
printf "\n Please enter the path to check "
read path2check
file="*.java"

if find $path2check -name "*.java" -print -quit |
  grep -q '^'; then 
 echo "ada file java di directory $path2check"
else
 echo "tidak ada file java di directory $path2check"
fi

