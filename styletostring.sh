#!/bin/bash
clear
# Print version info
printf "\e[1;37;44mSalonia Matteo\'s styletostring v1.1\e[0;37m\n"
printf "\e[1;37;44mGitHub page: https://github.com/saloniamatteo/styletostring\e[0;37m\n"
# List of available styles
colors=("",
        'Bold text'
        'Underlined text'
        'Darker text'
        'Italic text'
        'Striketrough'
        'Black foreground'
        'Red foreground'
        'Green foreground'
        'Yellow foreground'
        'Blue foreground'
        'Purple foreground'
        'Cyan foreground'
        'White foreground'
        'Black background'
        'Red background'
        'Green background'
        'Yellow background'
        'Blue background'
        'Purple background'
        'Cyan background'
        'White background')
# Color codes, each to apply to their relative style name (see README.md)
codes=("", '1' '4' '2' '3' '9' '30' '31' '32' '33' '34' '35' '36' '0;37;40'\
 '39' '41' '42' '43' '44' '45' '46' '0;30;47')
# Ask user for a string
read -p 'Please type a string: ' string
echo "Please select a modifier from this list by typing the modifier's number."
# Print the list of the available styles
for i in {1..19} ; do
	printf '\e[%sm[%d] %s\e[m\n' "${codes[i]}" $i "${colors[i]}"
done;

read -p 'Please select a number: ' number
# If the second user input is not a number between 1 and 18, do not continue
if ! [[ $number =~ ^([1-9]|1[0-9])$ ]]
then
        echo 'Please only select a number from 1 to 19'
else
	# If the second input was a number, print the appropriate style
	printf '\e[%sm%s\e[m\n' "${codes[number]}" "$string"
	# Also print the code that was used to add a style to the string
	echo "printf '\e[${codes[number]}m$string'"
	echo "The line above is the command used to reproduce\
 the style applied to your string; for more info, see README.md"
fi
# EOF
