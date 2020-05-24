## Welcome to my guessingame.sh

n=$(ls -a | wc -l) ## Includes hidden files
flag=1

function ask {
	echo "Are you able to guess the number of files in the current directory? Tell me how many there are:"
	read n_guess
	flag2=1
	## Check if n_guess is a number
	while [[ $flag2 -eq 1 ]]
	do
		if [[ $n_guess =~ ^[+-]?[0-9]+([.][0-9]+)?$ ]]
		then
			flag2=0
		else
			echo "Please, type a number"
			read n_guess
		fi
	done 
}

while [[ $flag -eq 1 ]]
do
	ask
	if [[ $n_guess -eq $n ]]
	then
		flag=0
		echo "Congratullations, you got it!"
	elif [[ $n_guess -lt $n ]]
	then
		echo "Is too low"
	else
		echo "Is too high"
	fi
done

echo "Thanks for playing."

