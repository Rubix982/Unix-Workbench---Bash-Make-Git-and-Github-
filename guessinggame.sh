#!/bin/sh

number_of_files_in_dir=$(ls -1 | wc -l)

check_value() {
	if [[ $1 -eq number_of_files_in_dir ]]; then
		printf "\nCorrected guess, $number_of_files_in_dir\n"
		return 0
	elif [[ $1 -lt number_of_files_in_dir ]]; then
		printf "\nWrong guess. Try again with your guess a bit higher ... \n"
		return -1
	elif [[ $1 -gt number_of_files_in_dir ]]; then
		printf "\nWrong guess. Try again with your guess a bit lower ... \n"
		return -1
	fi	 
}

guess=""

while [ True ]; do
	printf "Guess the number of files in the current directory ... "
	read guess

	check_value guess
	if [[ $? -eq 0 ]]; then
		break
	elif [[ $? -eq -1 ]]; then
		continue
	fi

done

printf "\nAll done. You win! Congratulations!\n"
