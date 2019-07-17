#!/bin/bash
set -e

inputFile=../resources/input.txt
outputFile=../resources/output.txt 

if [ $1 ]
    then
        inputFile=$1 
fi

if [ $2 ]
    then
        outputFile=$2
fi
    
while IFS='' read line; 
do
    echo "read from file - $line"
    sed -i '' "s/{{to_be_replaced}}/$line/g" $outputFile
done < $inputFile

cat $outputFile