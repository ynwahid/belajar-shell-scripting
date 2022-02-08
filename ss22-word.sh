#!/bin/bash
# More on Case Statement
read -p "Enter a word:" word
case "${word}" in
	[aiueo]* | [AIUEO]*)
	       	echo "The word begins with a vowel.";;
       	[0-9]*)
		echo "The word begins with a digit.";;
	*[0-9])
		echo "The word ends with a digit.";;
	???)
		echo "You entered a three-letter-word.";;
	*)
		echo "I don't know what you have entered.";;
esac
