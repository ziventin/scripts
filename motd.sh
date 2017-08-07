#!/bin/bash

figlet $USER | lolcat
echo ""

cat .motd 
echo ""

echo "temp" > .motd
