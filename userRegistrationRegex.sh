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

read -p "Password : " password
passpattern1="^([a-zA-Z0-9@#!]){8}$";
passpattern2="^([a-z0-9@#!]*)[A-Z]+([a-z0-9@#!]*)$";
passpattern3="^[a-zA-Z@#!]*[0-9]+[a-zA-Z@#!]*$";
passpattern4="^([a-zA-Z0-9]*)[^a-zA-Z_0-9\s]([a-zA-Z0-9]*)$";
if [[ $password =~ $passpattern1   ]]
then
  if [[ $password =~ $passpattern2  ]]
  then
     if [[ $password =~ $passpattern3  ]]
     then
       if [[ $password =~ $passpattern4  ]]
       then
        echo "Perfect password"
       else
         echo "Please enter at least one special char";
        fi
     else
       echo "Please enter at least one digit";
     fi

  else
    echo "Please enter at least one caps letter";
  fi
else
  echo "Your password should be of 8 length";
fi


<<SampleEmail
-------Valid Emails----------
abc@yahoo.com,
abc-100@yahoo.com,
abc.100@yahoo.com
abc111@abc.com,
abc-100@abc.net,
abc.100@abc.com.au
abc@1.com,
abc@gmail.com.com
abc+100@gmail.com

------Invalid Emails (TLD - Top Level Domains)--------------
abc – must contains “@” symbol
abc@.com.my – tld can not start with dot “.”
abc123@gmail.a – “.a” is not a valid tld, last tld must contains at least two characters
abc123@.com – tld can not start with dot “.”
abc123@.com.com – tld can not start with dot “.”
.abc@abc.com – email’s 1st character can not start with “.”
abc()*@gmail.com – email’s is only allow character, digit, underscore and dash
abc@%*.com – email’s tld is only allow character and digit
abc..2002@gmail.com – double dots “.” are not allow
abc.@gmail.com – email’s last character can not end with dot “.”
abc@abc@gmail.com – double “@” is not allow
abc@gmail.com.1a -email’s tld which has two characters can not contains digit
abc@gmail.com.aa.au - cannont have multiple email’s tld
SampleEmail
