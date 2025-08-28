#!/bin/bash
#
# Author: Jose Bordon
#
# Description: step2.sh script.
# Uses for loops to iterate over files, create the book, and append it to the final file.
#

echo "Beginning text creation HOUSE_OF_THE_DOCKERS.txt..."
sleep 1
echo "Loading..."

# First round
for i in $(ls ~/projects/house_of_the_dockers/sorted_docker*.txt); do
    cat $i | head -n 2 | awk '{print $NF}' >> temp.txt
done

for i in $(cat temp.txt); do 
    cat $i >> HOUSE_OF_THE_DOCKERS.txt
done
rm temp.txt

# Second round
for i in $(ls ~/projects/house_of_the_dockers/sorted_docker*.txt); do
    cat $i | head -n 4 | tail -n 2 | awk '{print $NF}' >> temp.txt
done

for i in $(cat temp.txt); do 
    cat $i >> HOUSE_OF_THE_DOCKERS.txt
done
rm temp.txt

# Third round - docker1
for i in $(ls ~/projects/house_of_the_dockers/sorted_docker1.txt); do
    cat $i | head -n 5 | tail -n 1 | awk '{print $NF}' >> temp.txt
done

for i in $(cat temp.txt); do
    cat $i >> HOUSE_OF_THE_DOCKERS.txt
done
rm temp.txt

# Third round - docker2
for i in $(ls ~/projects/house_of_the_dockers/sorted_docker2.txt); do
    cat $i | head -n 6 | tail -n 2 | awk '{print $NF}' >> temp.txt
done

for i in $(cat temp.txt); do
    cat $i >> HOUSE_OF_THE_DOCKERS.txt
done
rm temp.txt

# Third round - docker3
for i in $(ls ~/projects/house_of_the_dockers/sorted_docker3.txt); do
    cat $i | head -n 6 | tail -n 2 | awk '{print $NF}' >> temp.txt
done

for i in $(cat temp.txt); do
    cat $i >> HOUSE_OF_THE_DOCKERS.txt
done
rm temp.txt

# Last round
for i in $(ls ~/projects/house_of_the_dockers/sorted_docker3.txt); do
    cat $i | head -n 8 | tail -n 2 | awk '{print $NF}' >> temp.txt
done

for i in $(cat temp.txt); do
    cat $i >> HOUSE_OF_THE_DOCKERS.txt
done
rm temp.txt

sleep 3
