#!/bin/bash

for file in *
do
  sed '$d' "$file" > temp.txt;  mv temp.txt "$file"
done

