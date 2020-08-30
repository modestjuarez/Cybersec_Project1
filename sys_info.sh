#!/bin/bash

#Print the title and the date
echo "My first scrip"'
date
echo " "

#Print machine type information
echo -e "Machine info "
echo $MACHTYPE

echo -e "Uname info $(uname -a) \n"

#print the ip
echo -e "IP Info: $(ip addr | head -9 | tail -1) \n"

#print host name
echo - e "Hostname $(hostname -s) \n"

#print dns information
echo -e "DNS info "
cat /etc/resolv.conf

echo -e "Memory info "
free

#Print cpu information
echo -e "\nCPU info"
lscpu | grep CPU

#Print disk usage
echo -e "\nDisk Usage: "
df -H | head -2

#Print who is logged in
echo -e "Who is logged in: \n $(who) \n"


#make a list of files I want to check permissions of and then create a for loop to print
#	the permissions of each file on the list
files=('/etc/passwd' '/etc/shadow' '/etc/hosts')

echo -e "\nThe permissions for sensitive /etc files: \n" >> $output
for file in ${files[@]};
do
  ls -l $file >> $output
done



