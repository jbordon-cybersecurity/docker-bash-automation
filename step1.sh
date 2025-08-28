#!/bin/bash
#
#Author: Jose Bordon
#
#Description: step1.sh script to create, run containers
#and load the files into the running containers
#

echo "Creating Docker containers..."
sleep 1

# Creating and starting dockers
sudo docker start docker1
echo "Docker 1 created..."
sleep 1

sudo docker start docker2
echo "Docker 2 created..."
sleep 1

sudo docker start docker3
echo "Docker 3 created..."

echo "Loading files..."
sleep 2

# Copy files from host to a running docker container
echo "Loaded files to Docker 1..."
sudo docker cp /home/student/j.bordon/Docker1/. docker1:/texts | awk '{print $NF}'

echo "Loaded files to Docker 2..."
sudo docker cp /home/student/j.bordon/Docker2/. docker2:/texts | awk '{print $NF}'

echo "Loaded files to Docker 3..."
sudo docker cp /home/student/j.bordon/Docker3/. docker3:/texts | awk '{print $NF}'

echo "Sorting files by character length..."

# Execute a command in docker container and output the sorted result to a file
sudo docker exec docker1 find / -type f -name "*.txt" | wc -c /home/student/j.bordon/Docker1/*.txt > sorted_docker1.txt  
sudo docker exec docker2 find / -type f -name "*.txt" | wc -c /home/student/j.bordon/Docker2/*.txt | sort -n > sorted_docker2.txt
sudo docker exec docker3 find / -type f -name "*.txt" | wc -c /home/student/j.bordon/Docker3/*.txt | sort -n > sorted_docker3.txt

echo "Files sorted"
sleep 2


