all:
	echo "Bash, Make, Git, and Github - Project" >> README.md
	echo "" >> README.md
	echo "`date`" >> README.md
	echo "" >> README.md
	echo "`wc -l guessinggame.sh`" >> README.md

clean:
	rm README.md

README.md:
	touch README.md
