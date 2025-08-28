#!/bin/bash
#
#Author: Jose Bordon
#
#Description: step2.sh script. for loop implemented to
#iterate over the files and create the book and append it
#to the final file.
#

echo "Beginning text creation HOUSE_OF_THE_DOCKERS.txt..."
sleep 1
echo "Loading..."

# First round
# Loop through all .txt files in the dir starting with sorted_docker
for i in  $(ls /home/student/j.bordon/sorted_docker*.txt); do
        # Read the contents of the current file, take the first 2 lines,
        # extract the last column using awk, and append it to temp.txt
        cat $i | head -n 2 | awk '{print $NF}' >> temp.txt;
done

# Read the contents of temp.txt and append to HOUSE_OF_THE_DOCKERS.txt
for i in $(cat temp.txt); do 
        cat $i >> HOUSE_OF_THE_DOCKERS.txt;
done

# Remove temporary file
rm temp.txt

# Second round
# Loop through all .txt files in the dir starting with sorted_docker
for i in  $(ls /home/student/j.bordon/sorted_docker*.txt); do
        # Read the contents of the current file, take the first 4 lines,
        # then select the last 2 lines, extract the last column using awk,
        #  and append to temp.txt 
        cat $i |head -n 4 | tail -n 2| awk '{print $NF}' >> temp.txt;
done

# Read the contents of temp.txt and append to HOUSE_OF_THE_DOCKERS.txt
for i in $(cat temp.txt); do 
        cat $i >> HOUSE_OF_THE_DOCKERS.txt;
done

#Remove temporary file
rm temp.txt

# Third round
# Loop through docker1.txt file 
for i in  $(ls /home/student/j.bordon/sorted_docker1.txt);do
        # Read the contents of the current file, take the first 5 lines, 
        # then select the last line, extract the last column using awk,
        # and append to temp.txt 
        cat $i | head -n 5 | tail -n 1 | awk '{print $NF}' >> temp.txt;
done

	# Read the contents of temp.txt and append to HOUSE_OF_THE_DOCKERS.txt
	for i in $(cat temp.txt); do
        	cat $i >> HOUSE_OF_THE_DOCKERS.txt;
	done
# Remove temporary file
rm temp.txt

# Loop through docker2.txt file
for i in  $(ls /home/student/j.bordon/sorted_docker2.txt);do
        # Read the contents of the current file, take the first 6 lines, 
        # then select the last 2 lines, extract the last column using awk,
        # and append to temp.txt 
        cat $i | head -n 6 | tail -n 2 | awk '{print $NF}' >> temp.txt;
done

	# Read the contents of temp.txt and append to HOUSE_OF_THE_DOCKERS.txt
	for i in $(cat temp.txt); do
        	cat $i >> HOUSE_OF_THE_DOCKERS.txt;
	done

# Remove temporary file
rm temp.txt

# Loop through docker3.txt file 
for i in  $(ls /home/student/j.bordon/sorted_docker3.txt);do
        # Read the contents of the current file, take the first 6 lines, 
        # then select the last 2 lines, extract the last column using awk,
        # and append to temp.txt 
        cat $i | head -n 6 | tail -n 2 | awk '{print $NF}' >> temp.txt;
done

	# Read the contents of temp.txt and append to HOUSE_OF_THE_DOCKERS.txt
	for i in $(cat temp.txt); do
        	cat $i >> HOUSE_OF_THE_DOCKERS.txt;
	done

# Remove temporary file
rm temp.txt

# Last round
# Loop over docker3.txt
for i in  $(ls /home/student/j.bordon/sorted_docker3.txt);do
        # Read the contents of the current file, take the first 8 lines, 
        # then select the last 2 lines, extract the last column using awk,
        # and append to temp.txt 
        cat $i | head -n 8 | tail -n 2 | awk '{print $NF}' >> temp.txt;
done

	# Read the contents of temp.txt and append to HOUSE_OF_THE_DOCKERS.txt
	for i in $(cat temp.txt); do
        	cat $i >> HOUSE_OF_THE_DOCKERS.txt;
	done
rm temp.txt
sleep 3
