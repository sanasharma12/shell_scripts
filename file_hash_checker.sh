#!/bin/bash

DIR="./"

for file in $(find $DIR -type f); do
sha256sum "$file"
done > current_hashes.txt
if [ -f previous_hashes.txt ];
then
diff previous_hashes.txt current_hashes.txt > hash_diff.txt
echo "Changes detected:"
cat hash_diff.txt
fi

cp current_hashes.txt
previous_hashes.txt
