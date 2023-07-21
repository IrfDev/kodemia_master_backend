#!/bin/bash
  
# Read the user input   

docker exec -it $1 psql -U $2 -d $3 -f /dev/scripts/$4

