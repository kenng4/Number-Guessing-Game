#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"



echo "Enter your username:"
read USERNAME

G_PLAYED=$($PSQL "select count(1) from games inner join users using(user_id) where username='$USERNAME'")
B_GAME=$($PSQL "select min(guesses) from games inner join users using(user_id) where username='$USERNAME'")

RETURN_USER=$($PSQL "select username from users where username='$USERNAME'")

if [[ -z $RETURN_USER ]]
then
  INSERT_USER=$($PSQL "insert into users(username) values ('$USERNAME')")
  echo "Welcome, $USERNAME! It looks like this is your first time here."
else
  echo "Welcome back, $USERNAME! You have played $G_PLAYED games, and your best game took $B_GAME guesses."

fi

S_NUM=$(( $RANDOM % 1000 + 1 ))

USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")

TRIES=1
GUESS=0

G_MACHINE(){
  
read GUESS

# echo "Guess the secret number between 1 and 1000:"
# read GUESS
# TRIES=1

while [[ $GUESS =~ ^[+-]?[0-9]+$ && ! $GUESS -eq $S_NUM ]]
do

TRIES=$(expr $TRIES + 1)

if [[ $GUESS -gt $S_NUM ]]
then
  echo "It's lower than that, guess again:"
  read GUESS
elif [[ $GUESS -lt $S_NUM ]]
then
  echo "It's higher than that, guess again:"
  read GUESS
fi
done

if [[ ! $GUESS =~ ^[0-9]+$ ]]
then
  echo "That is not an integer, guess again:"
  TRIES=$(expr $TRIES + 1)
  G_MACHINE
  fi
}

echo -e "\nGuess the secret number between 1 and 1000:"
G_MACHINE

INSERTED_GAME=$($PSQL "INSERT INTO games (user_id, guesses) VALUES ($USER_ID, $TRIES)")
echo "You guessed it in $TRIES tries. The secret number was $S_NUM. Nice job!"
