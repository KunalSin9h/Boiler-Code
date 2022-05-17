#!/usr/bin/bash

RED='\e[0;31m' #red color
NC='\e[0m' # no color
GREEN='\e[0;32m' # green
YELLOW='\e[0;33m' # yello
CYAN='\e[0;36m' # cyan

for((i = 1; i <= $4 ; ++i)); do
	./$3 > input
	./$1 < input > wrong_output
	./$2 < input > slow_output

	if !(cmp -s "wrong_output" "slow_output")
		then
			echo -e "${RED}Error Found!${NC}"
			echo "input (${3}) :"
			cat input
			echo -e "${CYAN}Wrong Output (${1}):${NC}"
			cat wrong_output
			echo -e "${YELLOW}Slow Output (${2}):${NC}"
			cat slow_output
			exit		
	fi
done
echo -e "\n${GREEN}Passed ${4} Tests${NC}\n"