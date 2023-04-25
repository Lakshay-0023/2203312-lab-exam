#!/bin/bash

#using if else comdition to check wheter the file is us_500.csv or us_500.csv
touch new.txt
grep -iw "$3" $1 >> new.txt
if [[ $1 -eq "ca_500.csv" ]]; #if the file is ca_500.csv
then
	touch ca_$2_$3.csv
	echo $1 , $2 , $3 >> ca_$2_$3.csv  
	head -n 1 $1 >> ca_$2_$3.csv   #column headers
	wc -l new.txt >> ca_$2_$3.csv #count no. of lines
	grep -iw "$3" $1 >> ca_$2_$3.csv  #finding lines with a specific field value


elif [[ $1 -eq "us_500.csv" ]]; # if the file is us_500.csv
then 
	touch us_$2_$3.csv
	echo $1 , $2 , $3 >> us_$2_$3.csv
	head -n 1 $1 >> us_$2_$3.csv
	wc -l new.txt >> us_$2_$3.csv
	grep -iw "$3" $1 >> us_$2_$3.csv



else
	echo "File doesnt exist"
fi

rm new.txt

