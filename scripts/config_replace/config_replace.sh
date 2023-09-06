#!/bin/bash
cp ./config_replace.sh /tmp/config_replace.sh

n=1
while IFS= read -r "VAR$n"; do
  n=$((n + 1))
done < config.txt
find ../../[0-9]* -type f -exec sed -i -e "s/example.com/${VAR1}/g" {} \;
find ../../[0-9]* -type f -exec sed -i -e "s/myemail@mail.com/${VAR2}/g" {} \;
find ../../[0-9]* -type f -exec sed -i -e "s/192.168.0.1/${VAR3}/g" {} \;
echo "${VAR1}"
echo "${VAR2}"
echo "${VAR3}"
mv /tmp/config_replace.sh ./
