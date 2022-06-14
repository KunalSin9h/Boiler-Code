#! /usr/bin/bash
g++ -std=c++17 -O2 -Wall -Wextra -Wshadow -DLOCAL -o $1 $1.cpp && ./$1 && open $1.html
