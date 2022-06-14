@echo off
gen > in 
slow < in > slow_out
fast < in > fast_out
fc slow_out fast_out
if errorlevel 1 exit
test
