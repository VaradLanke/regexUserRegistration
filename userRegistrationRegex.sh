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

read -p "Last Name : " lname
lnamepattern="^[A-Z]([a-z]{2})$";
if [[ $lname =~ $lnamepattern   ]]
then
  echo "Valid last name";
else
  echo "Invalid last name";
fi

read -p "Email : " email
emailpattern="^[a-z]{3}(\.[a-z0-9])*@[a-z]+\.[a-z]+(\.[a-z])*$";
if [[ $email =~ $emailpattern   ]]
then
  echo "Valid email address";
else
  echo "Invalid email address";
fi

read -p "Mobile : " mobile
mobpattern="^[0-9]{2}[[:space:]][0-9]{10}$";
if [[ $mobile =~ $mobpattern   ]]
then
  echo "Valid mobile number";
else
  echo "Invalid mobile number";
fi

read -p "Enter password" password
passpat1="^([a-zA-Z0-9@#!]){8}$";
if [[ $password =~ $passpat1   ]]
then
        echo "Perfect password"
else
  echo "Your password should be of 8 length";
fi
