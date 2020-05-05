#!/bin/bash
echo "Welcome to User Registration"
read -p "Enter first name" fname
fnamepattern="^[A-Z]([a-z]{2})$";
if [[ $fname =~ $fnamepattern   ]]
then
  echo "Valid first name";
else
  echo "Invalid first name";
fi
