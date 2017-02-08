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