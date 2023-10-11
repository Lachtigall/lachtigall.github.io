#!/bin/bash

# the following line makes this entire script work
shopt -s expand_aliases

alias brcappend='echo -e "\n$1\n" >> /home/$(whoami)/.bashrc'

brcappend ''
brcappend 'export PS1="\e[0;31m[\u@\h🦊\W]\$ \e[0m"'
brcappend ''

echo "Close and re-open your Terminal."
exit
