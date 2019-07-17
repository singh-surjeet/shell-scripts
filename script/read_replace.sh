#!/bin/bash
set -e

inputFile=resources/input.txt
outputFile=resources/output.txt
while read line; 
do
    echo "read from file - $line"
    sed -i '' "s/{{to_be_replaced}}/$line/g" $outputFile
done < $inputFile
cat $outputFile