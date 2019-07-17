#!/bin/bash
set -e

inputFile=../resources/app.properties
outputFile=../resources/output.txt 

if [ $1 ]
    then
        inputFile=$1 
fi

if [ $2 ]
    then
        outputFile=$2
fi
    
while IFS="=" read -r key value; 
do
    echo "key is - $key value is - $value"
    sed -i '' "s/{{$key}}/$value/g" $outputFile
done < $inputFile

cat $outputFile