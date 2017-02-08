#!/usr/bin/env bash

#Get the current status of local repository
echo "=================================================================================="
#Extract branch name
branchName=$(echo `git branch  | sed -n '/\* /s///p'|cut -d "/" -f2`); 
#Extract ticket number 
ticketNumber=$(echo $branchName |cut -d "-" -f2); 

gitTag="skasgarv-" #modify to suit the tag name 
#concatenate ticket number and tag name
tagName="$gitTag$ticketNumber" 

#Stage files
echo "Adding files..."
git add -A
echo "Files staged"
echo "=================================================================================="

#Read commit message from user
echo "Enter Commit message:" 
read textValue

#Generate commit message
commitMsg="$tagName:$textValue"