#!/bin/sh
NC='\033[0;m'
BLACK='\033[0;30m'
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
MG='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[0;37m'


total=$(curl -s "https://rvn.2miners.com/api/accounts/RQqMhY7rHSxrwuCu6SuAxUvgTxzaejw2ka" | jq " [ .stats.balance, .stats.immature] | add") 
pendent=$(curl -s "https://rvn.2miners.com/api/accounts/RQqMhY7rHSxrwuCu6SuAxUvgTxzaejw2ka" | jq "  .stats.immature ") 
balance=$(curl -s "https://rvn.2miners.com/api/accounts/RQqMhY7rHSxrwuCu6SuAxUvgTxzaejw2ka" | jq "  .stats.balance ") 

echo "${NC}Your Balance is: ${MG}${balance}"
echo "${NC}Your Pendent balance is: ${RED}${pendent}"
echo "${NC}Your Total Balance is: ${GREEN}${total}"


