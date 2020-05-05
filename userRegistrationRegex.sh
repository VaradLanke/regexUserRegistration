#!/bin/bash
echo "Welcome to User Registration"
read -p "First Name : " fname
fnamepattern="^[A-Z]([a-z]{2})$";
if [[ $fname =~ $fnamepattern   ]]
then
  echo "Valid first name";
else
  echo "Invalid first name";
fi

read -p "Last Name" lname
lnamepattern="^[A-Z]([a-z]{2})$";
if [[ $lname =~ $lnamepattern   ]]
then
  echo "Valid last name";
else
  echo "Invalid last name";
fi
