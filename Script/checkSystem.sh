#!/bin/bash

set -x

# funtion check status. exit 0 -> success; exit 1 -> fail.
check_status()
{
   result=$?
   if [ $result -gt 0 ]; then
       exit 1
   fi
}

git --version
check_status

#curl -V
#check_status


#nodejs -v
#npm -version
#check_status

if [ $CHECK_SYSTEM -gt 0 ]; then
   docker version
   check_status
fi
