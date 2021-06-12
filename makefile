README.md:
	touch README.md
update:
	echo "# GUESSING GAME" > README.md	
	HISTTIMEFORMAT="%d/%m/%y %T "
	echo 'export HISTTIMEFORMAT="%d/%m/%y %T "' >> ~/.bash_profile
	. ~/.bash_profile
	history >> history.txt
	grep -w "make" history.txt >> README.md
	echo "The number of lines in guessinggame.sh is: " >> README.md
	wc -l guessinggame.sh >> README.md
