nb_files=$(ls -A | wc -l)
user_guess=-1

echo "How many files are there in the current directory? Please guess:"

function evaluate_guess {	
if [[ $1 -lt nb_files ]]
then
	echo "Guess was too low. Please try again:"
elif [[ $1 -gt nb_files ]]
then
	echo "Guess was too high. Please try again:"
else
	echo "Congratulations, you won!"
fi
}

while [ $user_guess -ne $nb_files ]
do
	read user_guess
	if ! [[ $user_guess =~ ^[0-9]+$ ]]
	then
		echo "Guess must be a natural number. Please try again:"
		let user_guess=-1
	else
		echo $(evaluate_guess $user_guess)
	fi
done
