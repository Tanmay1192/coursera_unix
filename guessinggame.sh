#!/bin/bash
# ──────────────────────────────────────────────────────────────────────────────────────       
#  @ Peer-graded Assignment: Bash, Make, Git, and GitHub [Coursera]                      │     
#  @ Bash Script [guessinggame.sh]                                                       │     
#                                                                                        │     
#  Author      : Tanmay Prakash <tanmayp1192@gmail.com>                                  │     
#  Date        : 17th December 2017                                                      │     
#                                                                                        │     
# ──────────────────────────────────────────────────────────────────────────────────────       

function _g_var_init {
  declare -g dir_count=$(ls -l | wc -l)
  declare -g user_guess=0
}

function checkguess {
  # Usage of an if statement
  if [[ $user_guess -lt $dir_count ]]; then
    echo "Your guess=$user_guess is too low"
  elif [[ $user_guess -gt $dir_count ]]; then
    echo "Your guess=$user_guess is too high"
  fi
  #[[ $user_guess -lt $dir_count ]] && echo "Prediction is too low" ||  [[ $user_guess -gt $dir_count ]] && echo "Prediction is too high"
}

#init global varibales
_g_var_init

# Usage of a loop
while [ $user_guess -ne $dir_count ]
do
#echo "Guess the number of files!"
# Collecting user response
read -p "Guess the number of files: " user_guess

checkguess
done

echo "whoo-hoo !! You are right."
