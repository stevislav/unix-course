README.md:
	touch README.md
update:
	echo "# GUESSING GAME" > README.md	
	date >> README.md
	echo "The number of lines in guessinggame.sh is: " >> README.md | echo "\n"
	wc -l guessinggame.sh >> README.md
