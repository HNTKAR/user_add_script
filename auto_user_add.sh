#!/usr/bin/bash
read -p "set your user name :" names
read -sp "set your user password :" passes
name_array=($names)
pass_array=($passes)

for i in `seq ${#name_array[*]}`
do
useradd ${name_array[$((i-1))]}
echo ${pass_array[$((i-1))]} | passwd --stdin ${name_array[((i-1))]}
done
