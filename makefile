bash

README.md: guessinggame.sh
	echo "# Guessing Game Project" > README.md
	echo "" >> README.md
	echo "## Date and Time" >> README.md
	echo "\`$(shell date)\`" >> README.md
	echo "" >> README.md
	echo "## Number of Lines in guessinggame.sh" >> README.md
	echo "\`$(shell wc -l < guessinggame.sh)\` lines" >> README.md
	echo "" >> README.md
	echo "## Description" >> README.md
	echo "This is a simple bash script that lets the user guess how many files are in the current directory. It gives feedback if the guess is too high or too low." >> README.md
