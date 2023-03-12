#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo $($PSQL "TRUNCATE teams, games")
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS 
do
#skip first line
if [[ $WINNER != winner ]]
then
# get winner
WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
#if not found
if [[ -z $WINNER_ID ]]
then
#insert team
INSERT_WINNER_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
if [[ $INSERT_WINNER_RESULT == "INSERT 0 1" ]]
then 
echo "Inserted $WINNER as new Team"
else
echo "$WINNER already added"
fi
fi
fi
#get opponent
OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
#skip first line
if [[ $OPPONENT != opponent ]]
then
#insert team
INSERT_OPPONENT_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
if [[ $INSERT_OPPONENT_RESULT == "INSERT 0 1" ]]
then 
echo "Inserted $OPPONENT as new Team"
else
echo "$OPPONENT already added"
fi
fi
done

#insert into games table
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS 
do
if [[ $WINNER != year ]]
then
#get game id
GAME_ID=$($PSQL "SELECT game_id FROM games WHERE year = $YEAR AND round = '$ROUND' AND winner_id = '$WINNER'")
#if not found
if [[ -z $GAME_ID ]]
then
WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$WINNER'")
OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name = '$OPPONENT'")
#insert data
INSERT_DATA_GAME=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES('$YEAR', '$ROUND', '$WINNER_ID', '$OPPONENT_ID', '$WINNER_GOALS', '$OPPONENT_GOALS')")
if [[ $INSERT_DATA_GAME == 'INSERT 0 1' ]]
then
echo 'Table updated'
fi
fi
fi
done