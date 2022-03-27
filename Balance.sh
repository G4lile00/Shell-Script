#!/bin/sh
NC='\033[0;m'
RED='\033[0;31m'
GREEN='\033[0;32m'
MG='\033[0;35m'



total=$(curl -s "https://rvn.2miners.com/api/accounts/your wallet" | jq " [ .stats.balance, .stats.immature] | add") 
pendent=$(curl -s "https://rvn.2miners.com/api/accounts/your wallet" | jq "  .stats.immature ") 
balance=$(curl -s "https://rvn.2miners.com/api/accounts/your wallet" | jq "  .stats.balance ") 

echo "${NC}Your Balance is: ${MG}${balance}"
echo "${NC}Your Pendent balance is: ${RED}${pendent}"
echo "${NC}Your Total Balance is: ${GREEN}${total}"


