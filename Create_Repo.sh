#!/usr/bin/bash
echo "Repo name ?"
read name
echo "Private ?"
read visible

curl -u 'G4lile00' https://api.github.com/user/repos -d '{"name":"'${name}'","private":'${visible}'}'
