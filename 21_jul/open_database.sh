#!/bin/bash
  
# Read the user input   

echo "Enter the docker container name: "  
read docker_container
echo "Enter the db user: "  
read db_user
echo "Enter the db name: "  
read db_name


docker exec -it $docker_container psql -U $db_user $db_name
