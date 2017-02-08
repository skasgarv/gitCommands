#!/usr/bin/env bash

#Get the current status of local repository
echo "=================================================================================="
#Extract branch name
branchName=$(echo `git branch  | sed -n '/\* /s///p'|cut -d "/" -f2`); 
#Extract ticket number 
ticketNumber=$(echo $branchName |cut -d "-" -f2); 
echo $ticketNumber